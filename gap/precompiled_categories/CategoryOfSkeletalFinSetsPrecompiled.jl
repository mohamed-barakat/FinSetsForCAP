#!/usr/bin/julia

using Distributed

addprocs(8)

CAP_OPERATION_NAMES = [
    "CartesianBraidingInverseWithGivenDirectProducts",
    "CartesianCoevaluationMorphismWithGivenRange",
    "CartesianEvaluationMorphismWithGivenSource",
    "CartesianLeftUnitorInverseWithGivenDirectProduct",
    "CartesianLeftUnitorWithGivenDirectProduct",
    "CartesianRightUnitorInverseWithGivenDirectProduct",
    "CartesianRightUnitorWithGivenDirectProduct",
    "CoastrictionToImageWithGivenImageObject",
    "Coproduct",
    "DirectProduct",
    "EmbeddingOfEqualizerWithGivenEqualizer",
    "EpimorphismFromSomeProjectiveObject",
    "Equalizer",
    "ExponentialOnMorphismsWithGivenExponentials",
    "ExponentialOnObjects",
    "IdentityMorphism",
    "ImageEmbeddingWithGivenImageObject",
    "ImageObject",
    "InitialObject",
    "InjectionOfCofactorOfCoproductWithGivenCoproduct",
    "IsColiftable",
    "IsEqualForMorphisms",
    "IsEqualForObjects",
    "IsHomSetInhabited",
    "IsInitial",
    "IsInjective",
    "IsProjective",
    "IsTerminal",
    "Lift",
    "MonomorphismIntoSomeInjectiveObjectWithGivenSomeInjectiveObject",
    "MorphismConstructor",
    "MorphismDatum",
    "ObjectConstructor",
    "ObjectDatum",
    "PreCompose",
    "ProjectionInFactorOfDirectProductWithGivenDirectProduct",
    "SubobjectClassifier",
    "TerminalObject",
    "UniversalMorphismFromCoproductWithGivenCoproduct",
    "UniversalMorphismFromInitialObjectWithGivenInitialObject",
    "UniversalMorphismIntoDirectProductWithGivenDirectProduct",
    "UniversalMorphismIntoEqualizerWithGivenEqualizer",
    "UniversalMorphismIntoTerminalObjectWithGivenTerminalObject",
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


CategoryOfSkeletalFinSetsPrecompiled = function()

cat = CapCategory("SkeletalFinSets")

cat.operations["CartesianBraidingInverseWithGivenDirectProducts"] = (function(cat_1, s_1, a_1, b_1, r_1)
    hoisted_2_1 = BigInt(length(a_1));
    hoisted_1_1 = BigInt(length(b_1));
    return CapCategoryMorphism(cat_1, s_1, pmap((function(i_2)
        return ((BigInt(1) + (mod(i_2, hoisted_1_1) * hoisted_2_1)) + div(i_2, hoisted_1_1));
    end), (BigInt(0):(BigInt(length(s_1)) - BigInt(1)))), r_1);
end);

cat.operations["CartesianCoevaluationMorphismWithGivenRange"] = (function(cat_1, a_1, b_1, r_1)
    deduped_5_1 = BigInt(length(b_1));
    deduped_4_1 = BigInt(length(a_1));
    hoisted_3_1 = (BigInt(0):(deduped_5_1 - BigInt(1)));
    hoisted_2_1 = (deduped_4_1 * deduped_5_1);
    hoisted_1_1 = deduped_5_1;
    return CapCategoryMorphism(cat_1, a_1, pmap((function(i_2)
        hoisted_1_2 = (i_2 * hoisted_1_1);
        return (BigInt(1) + sum((function(j_3)
            return ((hoisted_1_2 + j_3) * (hoisted_2_1^((hoisted_1_1 - j_3) - BigInt(1))));
        end), hoisted_3_1));
    end), (BigInt(0):(deduped_4_1 - BigInt(1)))), r_1);
end);

cat.operations["CartesianEvaluationMorphismWithGivenSource"] = (function(cat_1, a_1, b_1, s_1)
    hoisted_2_1 = BigInt(length(b_1));
    hoisted_1_1 = BigInt(length(a_1));
    return CapCategoryMorphism(cat_1, s_1, pmap((function(i_2)
        return (BigInt(1) + mod(div(div(i_2, hoisted_1_1), (hoisted_2_1^((hoisted_1_1 - mod(i_2, hoisted_1_1)) - BigInt(1)))), hoisted_2_1));
    end), (BigInt(0):(BigInt(length(s_1)) - BigInt(1)))), b_1);
end);

cat.operations["CartesianLeftUnitorInverseWithGivenDirectProduct"] = (function(cat_1, a_1, r_1)
    return CapCategoryMorphism(cat_1, a_1, (BigInt(1):BigInt(length(a_1))), a_1);
end);

cat.operations["CartesianLeftUnitorWithGivenDirectProduct"] = (function(cat_1, a_1, s_1)
    return CapCategoryMorphism(cat_1, a_1, (BigInt(1):BigInt(length(a_1))), a_1);
end);

cat.operations["CartesianRightUnitorInverseWithGivenDirectProduct"] = (function(cat_1, a_1, r_1)
    return CapCategoryMorphism(cat_1, a_1, (BigInt(1):BigInt(length(a_1))), a_1);
end);

cat.operations["CartesianRightUnitorWithGivenDirectProduct"] = (function(cat_1, a_1, s_1)
    return CapCategoryMorphism(cat_1, a_1, (BigInt(1):BigInt(length(a_1))), a_1);
end);

cat.operations["CoastrictionToImageWithGivenImageObject"] = (function(cat_1, alpha_1, I_1)
    deduped_2_1 = (alpha_1).morphism_datum;
    hoisted_1_1 = unique(sort(deduped_2_1));
    return CapCategoryMorphism(cat_1, (alpha_1).source, pmap((function(l_2)
        return findfirst(l_2, hoisted_1_1);
    end), deduped_2_1), I_1);
end);

cat.operations["Coproduct"] = (function(cat_1, arg2_1)
    return CapCategoryObject(cat_1, sum((function(x_2)
        return BigInt(length(x_2));
    end), arg2_1));
end);

cat.operations["DirectProduct"] = (function(cat_1, arg2_1)
    return CapCategoryObject(cat_1, prod(map((function(o_2)
        return BigInt(length(o_2));
    end), arg2_1)));
end);

cat.operations["EmbeddingOfEqualizerWithGivenEqualizer"] = (function(cat_1, morphisms_1, P_1)
    deduped_3_1 = (pmap(Source, morphisms_1)[BigInt(1)]);
    hoisted_2_1 = (morphisms_1[(BigInt(2):BigInt(length(morphisms_1)))]);
    hoisted_1_1 = (morphisms_1[BigInt(1)]);
    return CapCategoryMorphism(cat_1, P_1, filter((function(x_2)
        hoisted_1_2 = hoisted_1_1(x_2);
        return all((function(fj_3)
            return (hoisted_1_2 == fj_3(x_2));
        end), hoisted_2_1);
    end), (BigInt(1):BigInt(length(deduped_3_1)))), deduped_3_1);
end);

cat.operations["EpimorphismFromSomeProjectiveObject"] = (function(cat_1, A_1)
    return CapCategoryMorphism(cat_1, A_1, (BigInt(1):BigInt(length(A_1))), A_1);
end);

cat.operations["Equalizer"] = (function(cat_1, arg2_1)
    hoisted_2_1 = (arg2_1[(BigInt(2):BigInt(length(arg2_1)))]);
    hoisted_1_1 = (arg2_1[BigInt(1)]);
    return CapCategoryObject(cat_1, BigInt(length(filter((function(x_2)
        hoisted_1_2 = hoisted_1_1(x_2);
        return all((function(fj_3)
            return (hoisted_1_2 == fj_3(x_2));
        end), hoisted_2_1);
    end), (BigInt(1):BigInt(length((pmap(Source, arg2_1)[BigInt(1)]))))))));
end);

cat.operations["ExponentialOnMorphismsWithGivenExponentials"] = (function(cat_1, s_1, alpha_1, beta_1, r_1)
    deduped_11_1 = BigInt(length((alpha_1).source));
    deduped_10_1 = BigInt(length((alpha_1).range));
    deduped_9_1 = BigInt(length((beta_1).source));
    hoisted_8_1 = BigInt(length((beta_1).range));
    hoisted_7_1 = deduped_11_1;
    hoisted_6_1 = (beta_1).morphism_datum;
    hoisted_5_1 = (BigInt(1):deduped_11_1);
    hoisted_4_1 = (alpha_1).morphism_datum;
    hoisted_3_1 = (BigInt(1):deduped_10_1);
    hoisted_2_1 = deduped_9_1;
    hoisted_1_1 = deduped_10_1;
    return CapCategoryMorphism(cat_1, s_1, pmap((function(i_2)
        hoisted_1_2 = pmap((function(j_3)
            return (BigInt(1) + mod(div(i_2, (hoisted_2_1^(hoisted_1_1 - j_3))), hoisted_2_1));
        end), hoisted_3_1);
        hoisted_2_2 = pmap((function(i_3)
            return (hoisted_1_2[(hoisted_4_1[i_3])]);
        end), hoisted_5_1);
        hoisted_3_2 = pmap((function(i_3)
            return (hoisted_6_1[(hoisted_2_2[i_3])]);
        end), hoisted_5_1);
        return (BigInt(1) + sum((function(i_3)
            return (((hoisted_3_2[i_3]) - BigInt(1)) * (hoisted_8_1^(hoisted_7_1 - i_3)));
        end), hoisted_5_1));
    end), (BigInt(0):((deduped_9_1^deduped_10_1) - BigInt(1)))), r_1);
end);

cat.operations["ExponentialOnObjects"] = (function(cat_1, a_1, b_1)
    return CapCategoryObject(cat_1, (BigInt(length(b_1))^BigInt(length(a_1))));
end);

cat.operations["IdentityMorphism"] = (function(cat_1, a_1)
    return CapCategoryMorphism(cat_1, a_1, (BigInt(1):BigInt(length(a_1))), a_1);
end);

cat.operations["ImageEmbeddingWithGivenImageObject"] = (function(cat_1, alpha_1, I_1)
    return CapCategoryMorphism(cat_1, I_1, unique(sort((alpha_1).morphism_datum)), (alpha_1).range);
end);

cat.operations["ImageObject"] = (function(cat_1, arg2_1)
    return CapCategoryObject(cat_1, BigInt(length(unique(sort((arg2_1).morphism_datum)))));
end);

cat.operations["InitialObject"] = (function(cat_1)
    return CapCategoryObject(cat_1, BigInt(0));
end);

cat.operations["InjectionOfCofactorOfCoproductWithGivenCoproduct"] = (function(cat_1, objects_1, k_1, P_1)
    hoisted_1_1 = sum((function(x_2)
        return BigInt(length(x_2));
    end), (objects_1[(BigInt(1):(k_1 - BigInt(1)))]));
    return CapCategoryMorphism(cat_1, (objects_1[k_1]), pmap((function(x_2)
        return (hoisted_1_1 + x_2);
    end), (BigInt(1):(pmap(Length, objects_1)[k_1]))), P_1);
end);

cat.operations["IsColiftable"] = (function(cat_1, arg2_1, arg3_1)
    deduped_3_1 = (arg2_1).morphism_datum;
    hoisted_2_1 = (arg3_1).morphism_datum;
    hoisted_1_1 = deduped_3_1;
    return all((function(i_2)
        return (BigInt(length(unique(sort((hoisted_2_1[findall(i_2, hoisted_1_1)]))))) == BigInt(1));
    end), unique(sort(deduped_3_1)));
end);

cat.operations["IsEqualForMorphisms"] = (function(cat_1, arg2_1, arg3_1)
    return ((arg2_1).morphism_datum == (arg3_1).morphism_datum);
end);

cat.operations["IsEqualForObjects"] = (function(cat_1, arg2_1, arg3_1)
    return (BigInt(length(arg2_1)) == BigInt(length(arg3_1)));
end);

cat.operations["IsHomSetInhabited"] = (function(cat_1, arg2_1, arg3_1)
    return ((BigInt(length(arg2_1)) == BigInt(0)) || (!(BigInt(length(arg3_1)) == BigInt(0))));
end);

cat.operations["IsInitial"] = (function(cat_1, arg2_1)
    return (BigInt(length(arg2_1)) == BigInt(0));
end);

cat.operations["IsInjective"] = (function(cat_1, arg2_1)
    return (!(BigInt(length(arg2_1)) == BigInt(0)));
end);

cat.operations["IsProjective"] = (function(cat_1, arg2_1)
    return true;
end);

cat.operations["IsTerminal"] = (function(cat_1, arg2_1)
    return (BigInt(length(arg2_1)) == BigInt(1));
end);

cat.operations["Lift"] = (function(cat_1, alpha_1, beta_1)
    deduped_3_1 = (alpha_1).source;
    hoisted_2_1 = (beta_1).morphism_datum;
    hoisted_1_1 = (alpha_1).morphism_datum;
    return CapCategoryMorphism(cat_1, deduped_3_1, pmap((function(x_2)
        return findfirst((hoisted_1_1[x_2]), hoisted_2_1);
    end), (BigInt(1):BigInt(length(deduped_3_1)))), (beta_1).source);
end);

cat.operations["MonomorphismIntoSomeInjectiveObjectWithGivenSomeInjectiveObject"] = (function(cat_1, A_1, I_1)
    return CapCategoryMorphism(cat_1, A_1, (BigInt(1):BigInt(length(A_1))), I_1);
end);

cat.operations["MorphismConstructor"] = (function(cat_1, arg2_1, arg3_1, arg4_1)
    return CapCategoryMorphism(cat_1, arg2_1, arg3_1, arg4_1);
end);

cat.operations["MorphismDatum"] = (function(cat_1, arg2_1)
    return (arg2_1).morphism_datum;
end);

cat.operations["ObjectConstructor"] = (function(cat_1, arg2_1)
    return CapCategoryObject(cat_1, arg2_1);
end);

cat.operations["ObjectDatum"] = (function(cat_1, arg2_1)
    return BigInt(length(arg2_1));
end);

cat.operations["PreCompose"] = (function(cat_1, alpha_1, beta_1)
    deduped_3_1 = (alpha_1).source;
    hoisted_2_1 = (beta_1).morphism_datum;
    hoisted_1_1 = (alpha_1).morphism_datum;
    return CapCategoryMorphism(cat_1, deduped_3_1, pmap((function(i_2)
        return (hoisted_2_1[(hoisted_1_1[i_2])]);
    end), (BigInt(1):BigInt(length(deduped_3_1)))), (beta_1).range);
end);

cat.operations["ProjectionInFactorOfDirectProductWithGivenDirectProduct"] = (function(cat_1, objects_1, k_1, P_1)
    hoisted_2_1 = (pmap(Length, objects_1)[k_1]);
    hoisted_1_1 = prod((objects_1[((k_1 + BigInt(1)):BigInt(length(objects_1)))]));
    return CapCategoryMorphism(cat_1, P_1, pmap((function(i_2)
        return (BigInt(1) + mod(div(i_2, hoisted_1_1), hoisted_2_1));
    end), (BigInt(0):(BigInt(length(P_1)) - BigInt(1)))), (objects_1[k_1]));
end);

cat.operations["SubobjectClassifier"] = (function(cat_1)
    return CapCategoryObject(cat_1, BigInt(2));
end);

cat.operations["TerminalObject"] = (function(cat_1)
    return CapCategoryObject(cat_1, BigInt(1));
end);

cat.operations["UniversalMorphismFromCoproductWithGivenCoproduct"] = (function(cat_1, objects_1, T_1, tau_1, P_1)
    return CapCategoryMorphism(cat_1, P_1, vcat(pmap((function(t_2)
        return (t_2).morphism_datum;
    end), tau_1)), T_1);
end);

cat.operations["UniversalMorphismFromInitialObjectWithGivenInitialObject"] = (function(cat_1, T_1, P_1)
    return CapCategoryMorphism(cat_1, P_1, ([]), T_1);
end);

cat.operations["UniversalMorphismIntoDirectProductWithGivenDirectProduct"] = (function(cat_1, objects_1, T_1, tau_1, P_1)
    deduped_7_1 = BigInt(length(objects_1));
    deduped_6_1 = (BigInt(1):deduped_7_1);
    hoisted_5_1 = deduped_6_1;
    hoisted_3_1 = pmap((function(x_2)
        return BigInt(length(x_2));
    end), objects_1);
    hoisted_2_1 = deduped_7_1;
    hoisted_4_1 = pmap((function(i_2)
        return prod((hoisted_3_1[((i_2 + BigInt(1)):hoisted_2_1)]));
    end), deduped_6_1);
    hoisted_1_1 = pmap((function(x_2)
        return (x_2).morphism_datum;
    end), tau_1);
    return CapCategoryMorphism(cat_1, T_1, pmap((function(i_2)
        return (BigInt(1) + sum((function(j_3)
            return ((((hoisted_1_1[j_3])[i_2]) - BigInt(1)) * (hoisted_4_1[j_3]));
        end), hoisted_5_1));
    end), (BigInt(1):BigInt(length(T_1)))), P_1);
end);

cat.operations["UniversalMorphismIntoEqualizerWithGivenEqualizer"] = (function(cat_1, morphisms_1, T_1, tau_1, P_1)
    deduped_3_1 = (morphisms_1[BigInt(1)]);
    hoisted_1_1 = deduped_3_1;
    hoisted_2_1 = filter((function(x_2)
        hoisted_1_2 = hoisted_1_1(x_2);
        return all((function(fj_3)
            return (hoisted_1_2 == fj_3(x_2));
        end), morphisms_1);
    end), (BigInt(1):BigInt(length((deduped_3_1).source))));
    return CapCategoryMorphism(cat_1, T_1, pmap((function(x_2)
        return findfirst(tau_1(x_2), hoisted_2_1);
    end), (BigInt(1):BigInt(length(T_1)))), P_1);
end);

cat.operations["UniversalMorphismIntoTerminalObjectWithGivenTerminalObject"] = (function(cat_1, T_1, P_1)
    return CapCategoryMorphism(cat_1, T_1, pmap((function(a_2)
        return BigInt(1);
    end), (BigInt(1):BigInt(length(T_1)))), P_1);
end);

return cat;

end;

SkeletalFinSets = CategoryOfSkeletalFinSetsPrecompiled()
