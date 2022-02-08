#! @Chapter Precompilation

#! @Section Precompiling the category of skeletal finite sets in Julia

#! @Example

LoadPackage( "FinSetsForCAP", false );
#! true

category_constructor := {} -> CategoryOfSkeletalFinSets( );;
given_arguments := [ ];;
compiled_category_name := "CategoryOfSkeletalFinSetsPrecompiled";;
package_name := "FinSetsForCAP";;

cat := CategoryOfSkeletalFinSetsPrecompiled( );

operations := ListPrimitivelyInstalledOperationsOfCategory( cat );

operations := Difference( operations,
                      [ "IsWellDefinedForObjects",
                        "IsWellDefinedForMorphisms",
                        "ClassifyingMorphismOfSubobjectWithGivenSubobjectClassifier",
                        "Coequalizer",
                        "ProjectionOntoCoequalizerWithGivenCoequalizer",
                        "UniversalMorphismFromCoequalizerWithGivenCoequalizer",
                        "Colift",
                        "IsEpimorphism",
                        "IsSplitEpimorphism",
                        "IsMonomorphism",
                        "IsSplitMonomorphism",
                        "IsLiftable",
                        "SomeInjectiveObject",
                        ] );

julia_core := Concatenation( """#!/usr/bin/julia

using Distributed

addprocs(8)

CAP_OPERATION_NAMES = [
    """, "\"", JoinStringsWithSeparator( operations, "\",\n    \"" ), "\",", """
]

for operation_name in CAP_OPERATION_NAMES
    eval(Meta.parse(operation_name * " = (cat, args...) -> cat.operations[\"" * operation_name * "\"](cat, args...)"))
end

# CapCategory
struct CapCategory
    name::String
    attributes::Dict
    operations::Dict
end

CapCategory(name) = CapCategory(name, Dict(), Dict())
CapCategory() = CapCategory("A CAP category")

function Base.show(io::IO, cat::CapCategory)
    print(io, cat.name)
end

# CapCategoryObject
struct CapCategoryObject
    cat::CapCategory
    object_datum::BigInt
end

function Base.show(io::IO, obj::CapCategoryObject)
    print(io, "An object in " * obj.cat.name)
end

# CapCategoryMorphism
struct CapCategoryMorphism
    cat::CapCategory
    source::CapCategoryObject
    morphism_datum::Array{BigInt}
    range::CapCategoryObject
end

function Base.show(io::IO, obj::CapCategoryMorphism)
    print(io, "A morphism in " * obj.cat.name)
end

function length(obj::CapCategoryObject)
  obj.object_datum
end

""" );

output_string := "";

output_string := Concatenation( output_string, julia_core );

#for func in CAP_JIT_JULIA_GLOBAL_FUNCTIONS do
#    
#    output_string := Concatenation( output_string, func, "\n" );
#    
#od;

output_string := Concatenation( output_string, "\n" );

arguments_names := List( [ 1 .. Length( given_arguments ) ], i -> Concatenation( "category_attribute_", String( i ) ) );

output_string := Concatenation( output_string, compiled_category_name, " = function(", JoinStringsWithSeparator( arguments_names, ", " ), ")\n\ncat = CapCategory(\"", Name( cat ), "\")\n" );

for name in arguments_names do
    
    output_string := Concatenation( output_string, "cat.attributes[\"", name, "\"] = ", name, ";\n" );
    
od;

output_string := Concatenation( output_string, "\n" );

for name in operations do
    
    func := Last( cat!.added_functions.(name) )[1];
    
    Display( func );
    
    tree := ENHANCED_SYNTAX_TREE( func );
    
    code := ENHANCED_SYNTAX_TREE_CODE_JULIA( tree );
    
    output_string := Concatenation( output_string, "cat.operations[\"", name, "\"] = ", code, ";\n\n" );
    
od;

output_string := Concatenation( output_string, "return cat;\n\nend;\n\nSkeletalFinSets = CategoryOfSkeletalFinSetsPrecompiled()\n" );

WriteFileInPackageForHomalg( package_name, Concatenation( "precompiled_categories/", compiled_category_name, ".jl" ), output_string );

#! @EndExample

#! @EndChunk
