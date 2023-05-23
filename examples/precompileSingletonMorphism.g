LoadPackage( "FinSetsForCAP" );

ReadPackageOnce( "FinSetsForCAP", "gap/CompilerLogic.gi" );

sFinSets := CategoryOfSkeletalFinSetsWithMorphismsGivenByFunctions( : no_precompiled_code := true );

func := { cat, a } -> SingletonMorphism( cat, a );

StartTimer( "SingletonMorphism" );

sing := CapJitCompiledFunction( func, sFinSets, [ "category", "object" ], "morphism" );

StopTimer( "SingletonMorphism" );

DisplayTimer( "SingletonMorphism" );

Display( sing );
