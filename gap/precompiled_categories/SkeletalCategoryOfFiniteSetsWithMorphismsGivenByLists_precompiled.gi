# SPDX-License-Identifier: GPL-2.0-or-later
# FinSetsForCAP: The elementary topos of (skeletal) finite sets
#
# Implementations
#
BindGlobal( "ADD_FUNCTIONS_FOR_SkeletalCategoryOfFiniteSetsWithMorphismsGivenByLists_precompiled", function ( cat )
    
    ##
    AddAstrictionToCoimage( cat,
        
########
function ( cat_1, alpha_1 )
    local deduped_1_1;
    deduped_1_1 := DuplicateFreeList( AsList( alpha_1 ) );
    return CreateCapCategoryMorphismWithAttributes( cat_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( Length( deduped_1_1 ) ) ), Range( alpha_1 ), AsList, deduped_1_1 );
end
########
        
    , 100 );
    
    ##
    AddCartesianBraidingInverseWithGivenDirectProducts( cat,
        
########
function ( cat_1, s_1, a_1, b_1, r_1 )
    local deduped_1_1, hoisted_3_1, deduped_4_1;
    deduped_4_1 := Length( s_1 );
    hoisted_3_1 := Length( a_1 );
    deduped_1_1 := Length( b_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, r_1, AsList, List( [ 0 .. deduped_4_1 - 1 ], function ( i_2 )
              local deduped_1_2;
              deduped_1_2 := CAP_JIT_INCOMPLETE_LOGIC( i_2 );
              return CAP_JIT_INCOMPLETE_LOGIC( QuoIntWithDomain( deduped_1_2, deduped_1_1, deduped_4_1 ) ) + CAP_JIT_INCOMPLETE_LOGIC( RemIntWithDomain( deduped_1_2, deduped_1_1, deduped_4_1 ) ) * hoisted_3_1;
          end ) );
end
########
        
    , 301 : IsPrecompiledDerivation := true );
    
    ##
    cat!.cached_precompiled_functions.CartesianBraidingInverseWithGivenDirectProducts :=
        
########
function ( cat_1, s_1, a_1, b_1, r_1 )
    local deduped_1_1, hoisted_3_1, hoisted_4_1, hoisted_5_1, deduped_6_1, deduped_7_1;
    deduped_7_1 := Length( s_1 );
    deduped_6_1 := [ 0 .. deduped_7_1 - 1 ];
    hoisted_5_1 := Length( a_1 );
    deduped_1_1 := Length( b_1 );
    hoisted_4_1 := List( deduped_6_1, function ( i_2 )
            return RemIntWithDomain( i_2, deduped_1_1, deduped_7_1 );
        end );
    hoisted_3_1 := List( deduped_6_1, function ( i_2 )
            return QuoIntWithDomain( i_2, deduped_1_1, deduped_7_1 );
        end );
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, r_1, AsList, List( deduped_6_1, function ( i_2 )
              local deduped_1_2;
              deduped_1_2 := 1 + i_2;
              return hoisted_3_1[deduped_1_2] + hoisted_4_1[deduped_1_2] * hoisted_5_1;
          end ) );
end
########
        
    ;
    
    ##
    AddCartesianBraidingWithGivenDirectProducts( cat,
        
########
function ( cat_1, s_1, a_1, b_1, r_1 )
    local deduped_1_1, hoisted_3_1, deduped_4_1;
    deduped_4_1 := Length( s_1 );
    hoisted_3_1 := Length( b_1 );
    deduped_1_1 := Length( a_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, r_1, AsList, List( [ 0 .. deduped_4_1 - 1 ], function ( i_2 )
              local deduped_1_2;
              deduped_1_2 := CAP_JIT_INCOMPLETE_LOGIC( i_2 );
              return CAP_JIT_INCOMPLETE_LOGIC( QuoIntWithDomain( deduped_1_2, deduped_1_1, deduped_4_1 ) ) + CAP_JIT_INCOMPLETE_LOGIC( RemIntWithDomain( deduped_1_2, deduped_1_1, deduped_4_1 ) ) * hoisted_3_1;
          end ) );
end
########
        
    , 301 : IsPrecompiledDerivation := true );
    
    ##
    cat!.cached_precompiled_functions.CartesianBraidingWithGivenDirectProducts :=
        
########
function ( cat_1, s_1, a_1, b_1, r_1 )
    local deduped_1_1, hoisted_3_1, hoisted_4_1, hoisted_5_1, deduped_6_1, deduped_7_1;
    deduped_7_1 := Length( s_1 );
    deduped_6_1 := [ 0 .. deduped_7_1 - 1 ];
    hoisted_5_1 := Length( b_1 );
    deduped_1_1 := Length( a_1 );
    hoisted_4_1 := List( deduped_6_1, function ( i_2 )
            return RemIntWithDomain( i_2, deduped_1_1, deduped_7_1 );
        end );
    hoisted_3_1 := List( deduped_6_1, function ( i_2 )
            return QuoIntWithDomain( i_2, deduped_1_1, deduped_7_1 );
        end );
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, r_1, AsList, List( deduped_6_1, function ( i_2 )
              local deduped_1_2;
              deduped_1_2 := 1 + i_2;
              return hoisted_3_1[deduped_1_2] + hoisted_4_1[deduped_1_2] * hoisted_5_1;
          end ) );
end
########
        
    ;
    
    ##
    AddCartesianLambdaElimination( cat,
        
########
function ( cat_1, a_1, b_1, alpha_1 )
    local hoisted_1_1, hoisted_3_1, deduped_4_1;
    deduped_4_1 := Length( a_1 );
    hoisted_3_1 := Length( b_1 );
    hoisted_1_1 := AsList( alpha_1 )[1];
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, b_1, AsList, List( [ 0 .. deduped_4_1 - 1 ], function ( i_2 )
              return DigitInPositionalNotation( hoisted_1_1, i_2, deduped_4_1, hoisted_3_1 );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCartesianLambdaIntroduction( cat,
        
########
function ( cat_1, alpha_1 )
    local hoisted_1_1, deduped_3_1, deduped_4_1;
    deduped_4_1 := Length( Source( alpha_1 ) );
    deduped_3_1 := Length( Range( alpha_1 ) );
    hoisted_1_1 := AsList( alpha_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( 1 ) ), CreateCapCategoryObjectWithAttributes( cat_1, Length, deduped_3_1 ^ deduped_4_1 ), AsList, [ Sum( List( [ 0 .. deduped_4_1 - 1 ], function ( k_2 )
                    return hoisted_1_1[(1 + k_2)] * deduped_3_1 ^ k_2;
                end ) ) ] );
end
########
        
    , 503 : IsPrecompiledDerivation := true );
    
    ##
    AddCartesianLeftCoevaluationMorphismWithGivenRange( cat,
        
########
function ( cat_1, a_1, b_1, r_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1, deduped_4_1, deduped_5_1;
    deduped_5_1 := Length( a_1 );
    deduped_4_1 := Length( b_1 );
    deduped_3_1 := deduped_4_1 * deduped_5_1;
    hoisted_2_1 := deduped_4_1 * deduped_3_1 * GeometricSumDiff1( deduped_3_1, deduped_5_1 );
    hoisted_1_1 := GeometricSum( deduped_3_1, deduped_5_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, b_1, r_1, AsList, List( [ 0 .. deduped_4_1 - 1 ], function ( i_2 )
              return i_2 * hoisted_1_1 + hoisted_2_1;
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCartesianLeftEvaluationMorphismWithGivenSource( cat,
        
########
function ( cat_1, a_1, b_1, s_1 )
    local deduped_1_1, deduped_5_1, deduped_6_1, deduped_7_1;
    deduped_7_1 := Length( a_1 );
    deduped_6_1 := Length( b_1 );
    deduped_5_1 := Length( s_1 );
    deduped_1_1 := deduped_6_1 ^ deduped_7_1;
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, b_1, AsList, List( [ 0 .. deduped_5_1 - 1 ], function ( f_i_2 )
              return DigitInPositionalNotation( RemIntWithDomain( f_i_2, deduped_1_1, deduped_5_1 ), QuoIntWithDomain( f_i_2, deduped_1_1, deduped_5_1 ), deduped_7_1, deduped_6_1 );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCartesianLeftUnitorInverseWithGivenDirectProduct( cat,
        
########
function ( cat_1, a_1, r_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsList, [ 0 .. Length( a_1 ) - 1 ] );
end
########
        
    , 100 );
    
    ##
    AddCartesianLeftUnitorWithGivenDirectProduct( cat,
        
########
function ( cat_1, a_1, s_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsList, [ 0 .. Length( a_1 ) - 1 ] );
end
########
        
    , 100 );
    
    ##
    AddCartesianRightCoevaluationMorphismWithGivenRange( cat,
        
########
function ( cat_1, a_1, b_1, r_1 )
    local hoisted_2_1, hoisted_3_1, deduped_4_1, deduped_5_1, deduped_6_1;
    deduped_6_1 := Length( a_1 );
    deduped_5_1 := Length( b_1 );
    deduped_4_1 := deduped_6_1 * deduped_5_1;
    hoisted_3_1 := deduped_4_1 * GeometricSumDiff1( deduped_4_1, deduped_6_1 );
    hoisted_2_1 := GeometricSum( deduped_4_1, deduped_6_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, b_1, r_1, AsList, List( [ 0 .. deduped_5_1 - 1 ], function ( i_2 )
              return hoisted_3_1 + deduped_6_1 * i_2 * hoisted_2_1;
          end ) );
end
########
        
    , 301 : IsPrecompiledDerivation := true );
    
    ##
    AddCartesianRightEvaluationMorphismWithGivenSource( cat,
        
########
function ( cat_1, a_1, b_1, s_1 )
    local deduped_1_1, hoisted_3_1, deduped_4_1;
    deduped_4_1 := Length( s_1 );
    hoisted_3_1 := Length( b_1 );
    deduped_1_1 := Length( a_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, b_1, AsList, List( [ 0 .. deduped_4_1 - 1 ], function ( i_2 )
              return DigitInPositionalNotation( QuoIntWithDomain( i_2, deduped_1_1, deduped_4_1 ), RemIntWithDomain( i_2, deduped_1_1, deduped_4_1 ), deduped_1_1, hoisted_3_1 );
          end ) );
end
########
        
    , 301 : IsPrecompiledDerivation := true );
    
    ##
    AddCartesianRightUnitorInverseWithGivenDirectProduct( cat,
        
########
function ( cat_1, a_1, r_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsList, [ 0 .. Length( a_1 ) - 1 ] );
end
########
        
    , 100 );
    
    ##
    AddCartesianRightUnitorWithGivenDirectProduct( cat,
        
########
function ( cat_1, a_1, s_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsList, [ 0 .. Length( a_1 ) - 1 ] );
end
########
        
    , 100 );
    
    ##
    AddClassifyingMorphismOfSubobjectWithGivenSubobjectClassifier( cat,
        
########
function ( cat_1, alpha_1, Omega_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1;
    deduped_3_1 := Range( alpha_1 );
    hoisted_2_1 := BigInt( 1 );
    hoisted_1_1 := AsList( alpha_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_3_1, Omega_1, AsList, List( [ 0 .. Length( deduped_3_1 ) - 1 ], function ( x_2 )
              if x_2 in hoisted_1_1 then
                  return hoisted_2_1;
              else
                  return BigInt( 0 );
              fi;
              return;
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCoastrictionToImage( cat,
        
########
function ( cat_1, alpha_1 )
    local deduped_3_1, deduped_4_1, deduped_5_1;
    deduped_5_1 := AsList( alpha_1 );
    deduped_4_1 := Source( alpha_1 );
    deduped_3_1 := SSortedList( deduped_5_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_4_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( Length( deduped_3_1 ) ) ), AsList, List( [ 0 .. Length( deduped_4_1 ) - 1 ], function ( x_2 )
              return -1 + BigInt( SafePosition( deduped_3_1, deduped_5_1[(1 + x_2)] ) );
          end ) );
end
########
        
    , 202 : IsPrecompiledDerivation := true );
    
    ##
    AddCoequalizer( cat,
        
########
function ( cat_1, Y_1, morphisms_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( Length( SKELETAL_FIN_SETS_ExplicitCoequalizer( Y_1, morphisms_1 ) ) ) );
end
########
        
    , 100 );
    
    ##
    AddCoimageProjection( cat,
        
########
function ( cat_1, alpha_1 )
    local deduped_3_1, deduped_4_1, deduped_5_1;
    deduped_5_1 := AsList( alpha_1 );
    deduped_4_1 := Source( alpha_1 );
    deduped_3_1 := DuplicateFreeList( deduped_5_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_4_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( Length( deduped_3_1 ) ) ), AsList, List( [ 0 .. Length( deduped_4_1 ) - 1 ], function ( x_2 )
              return -1 + BigInt( SafePosition( deduped_3_1, deduped_5_1[(1 + x_2)] ) );
          end ) );
end
########
        
    , 202 : IsPrecompiledDerivation := true );
    
    ##
    AddColift( cat,
        
########
function ( cat_1, alpha_1, beta_1 )
    local deduped_1_1, hoisted_2_1, hoisted_3_1, deduped_4_1;
    deduped_4_1 := Range( alpha_1 );
    hoisted_3_1 := AsList( beta_1 );
    hoisted_2_1 := BigInt( 0 );
    deduped_1_1 := AsList( alpha_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_4_1, Range( beta_1 ), AsList, List( [ 0 .. Length( deduped_4_1 ) - 1 ], function ( y_2 )
              if not y_2 in deduped_1_1 then
                  return hoisted_2_1;
              else
                  return hoisted_3_1[SafePosition( deduped_1_1, y_2 )];
              fi;
              return;
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCoproduct( cat,
        
########
function ( cat_1, objects_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Sum( List( objects_1, Length ) ) );
end
########
        
    , 100 );
    
    ##
    AddDirectProduct( cat,
        
########
function ( cat_1, objects_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Product( List( objects_1, Length ) ) );
end
########
        
    , 100 );
    
    ##
    AddDirectProductToExponentialRightAdjunctMorphismWithGivenExponential( cat,
        
########
function ( cat_1, a_1, b_1, f_1, i_1 )
    local hoisted_2_1, hoisted_3_1, hoisted_4_1, deduped_5_1;
    deduped_5_1 := Length( a_1 );
    hoisted_4_1 := [ 0 .. deduped_5_1 - 1 ];
    hoisted_3_1 := Length( Range( f_1 ) );
    hoisted_2_1 := AsList( f_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, b_1, i_1, AsList, List( [ 0 .. Length( b_1 ) - 1 ], function ( i_2 )
              local hoisted_1_2;
              hoisted_1_2 := i_2 * deduped_5_1;
              return Sum( List( hoisted_4_1, function ( k_3 )
                        return hoisted_2_1[(1 + k_3 + hoisted_1_2)] * hoisted_3_1 ^ k_3;
                    end ) );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddEmbeddingOfEqualizerWithGivenEqualizer( cat,
        
########
function ( cat_1, Y_1, morphisms_1, P_1 )
    local deduped_1_1, hoisted_2_1;
    hoisted_2_1 := [ 1 .. Length( morphisms_1 ) - 1 ];
    deduped_1_1 := List( morphisms_1, AsList );
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, Y_1, AsList, Filtered( [ 0 .. Length( Y_1 ) - 1 ], function ( x_2 )
              local deduped_1_2;
              deduped_1_2 := 1 + x_2;
              return ForAll( hoisted_2_1, function ( j_3 )
                      return deduped_1_1[j_3][deduped_1_2] = deduped_1_1[j_3 + 1][deduped_1_2];
                  end );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddEpimorphismFromSomeProjectiveObject( cat,
        
########
function ( cat_1, A_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, A_1, A_1, AsList, [ 0 .. Length( A_1 ) - 1 ] );
end
########
        
    , 100 );
    
    ##
    AddEqualizer( cat,
        
########
function ( cat_1, Y_1, morphisms_1 )
    local deduped_1_1, hoisted_2_1;
    hoisted_2_1 := [ 1 .. Length( morphisms_1 ) - 1 ];
    deduped_1_1 := List( morphisms_1, AsList );
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Length( Filtered( [ 0 .. Length( Y_1 ) - 1 ], function ( x_2 )
                local deduped_1_2;
                deduped_1_2 := 1 + x_2;
                return ForAll( hoisted_2_1, function ( j_3 )
                        return deduped_1_1[j_3][deduped_1_2] = deduped_1_1[j_3 + 1][deduped_1_2];
                    end );
            end ) ) );
end
########
        
    , 100 );
    
    ##
    AddExactCoverWithGlobalElements( cat,
        
########
function ( cat_1, arg2_1 )
    local hoisted_1_1;
    hoisted_1_1 := CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( 1 ) );
    return List( [ 0 .. Length( arg2_1 ) - 1 ], function ( i_2 )
            return CreateCapCategoryMorphismWithAttributes( cat_1, hoisted_1_1, arg2_1, AsList, [ i_2 ] );
        end );
end
########
        
    , 100 );
    
    ##
    AddExponentialOnMorphismsWithGivenExponentials( cat,
        
########
function ( cat_1, s_1, alpha_1, beta_1, r_1 )
    local hoisted_3_1, hoisted_4_1, hoisted_5_1, hoisted_6_1, hoisted_7_1, deduped_8_1, deduped_9_1;
    deduped_9_1 := Length( Range( alpha_1 ) );
    deduped_8_1 := Length( Source( beta_1 ) );
    hoisted_7_1 := [ 0 .. Length( Source( alpha_1 ) ) - 1 ];
    hoisted_6_1 := Length( Range( beta_1 ) );
    hoisted_5_1 := AsList( beta_1 );
    hoisted_4_1 := AsList( alpha_1 );
    hoisted_3_1 := [ 0 .. deduped_9_1 - 1 ];
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, r_1, AsList, List( [ 0 .. deduped_8_1 ^ deduped_9_1 - 1 ], function ( i_2 )
              local hoisted_1_2;
              hoisted_1_2 := List( hoisted_3_1, function ( i_3 )
                      return DigitInPositionalNotation( i_2, i_3, deduped_9_1, deduped_8_1 );
                  end );
              return Sum( List( hoisted_7_1, function ( k_3 )
                        return CAP_JIT_INCOMPLETE_LOGIC( hoisted_5_1[(1 + hoisted_1_2[(1 + hoisted_4_1[(1 + CAP_JIT_INCOMPLETE_LOGIC( k_3 ))])])] ) * hoisted_6_1 ^ k_3;
                    end ) );
          end ) );
end
########
        
    , 1403 );
    
    ##
    cat!.cached_precompiled_functions.ExponentialOnMorphismsWithGivenExponentials :=
        
########
function ( cat_1, s_1, alpha_1, beta_1, r_1 )
    local hoisted_3_1, hoisted_4_1, hoisted_5_1, deduped_6_1, hoisted_7_1, deduped_8_1, deduped_9_1;
    deduped_9_1 := Length( Range( alpha_1 ) );
    deduped_8_1 := Length( Source( beta_1 ) );
    hoisted_7_1 := Length( Range( beta_1 ) );
    deduped_6_1 := [ 0 .. Length( Source( alpha_1 ) ) - 1 ];
    hoisted_5_1 := AsList( beta_1 );
    hoisted_4_1 := AsList( alpha_1 );
    hoisted_3_1 := [ 0 .. deduped_9_1 - 1 ];
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, r_1, AsList, List( [ 0 .. deduped_8_1 ^ deduped_9_1 - 1 ], function ( i_2 )
              local hoisted_1_2, hoisted_2_2;
              hoisted_1_2 := List( hoisted_3_1, function ( i_3 )
                      return DigitInPositionalNotation( i_2, i_3, deduped_9_1, deduped_8_1 );
                  end );
              hoisted_2_2 := List( deduped_6_1, function ( i_3 )
                      return hoisted_5_1[1 + hoisted_1_2[(1 + hoisted_4_1[(1 + i_3)])]];
                  end );
              return Sum( List( deduped_6_1, function ( k_3 )
                        return hoisted_2_2[(1 + k_3)] * hoisted_7_1 ^ k_3;
                    end ) );
          end ) );
end
########
        
    ;
    
    ##
    AddExponentialOnObjects( cat,
        
########
function ( cat_1, a_1, b_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Length( b_1 ) ^ Length( a_1 ) );
end
########
        
    , 100 );
    
    ##
    AddExponentialToDirectProductRightAdjunctMorphismWithGivenDirectProduct( cat,
        
########
function ( cat_1, a_1, c_1, g_1, s_1 )
    local deduped_1_1, hoisted_3_1, hoisted_4_1, deduped_5_1;
    deduped_5_1 := Length( s_1 );
    hoisted_4_1 := Length( c_1 );
    hoisted_3_1 := AsList( g_1 );
    deduped_1_1 := Length( a_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, c_1, AsList, List( [ 0 .. deduped_5_1 - 1 ], function ( i_2 )
              return DigitInPositionalNotation( hoisted_3_1[1 + QuoIntWithDomain( i_2, deduped_1_1, deduped_5_1 )], RemIntWithDomain( i_2, deduped_1_1, deduped_5_1 ), deduped_1_1, hoisted_4_1 );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddIdentityMorphism( cat,
        
########
function ( cat_1, a_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsList, [ 0 .. Length( a_1 ) - 1 ] );
end
########
        
    , 100 );
    
    ##
    AddImageEmbedding( cat,
        
########
function ( cat_1, alpha_1 )
    local deduped_1_1;
    deduped_1_1 := SSortedList( AsList( alpha_1 ) );
    return CreateCapCategoryMorphismWithAttributes( cat_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( Length( deduped_1_1 ) ) ), Range( alpha_1 ), AsList, deduped_1_1 );
end
########
        
    , 100 );
    
    ##
    AddInitialObject( cat,
        
########
function ( cat_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( 0 ) );
end
########
        
    , 100 );
    
    ##
    AddInjectionOfCofactorOfCoproductWithGivenCoproduct( cat,
        
########
function ( cat_1, objects_1, k_1, P_1 )
    local deduped_1_1, deduped_2_1;
    deduped_2_1 := List( objects_1, Length );
    deduped_1_1 := Sum( deduped_2_1{[ 1 .. k_1 - 1 ]} );
    return CreateCapCategoryMorphismWithAttributes( cat_1, objects_1[k_1], P_1, AsList, [ deduped_1_1 .. deduped_1_1 + deduped_2_1[k_1] - 1 ] );
end
########
        
    , 100 );
    
    ##
    AddIsColiftable( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    local hoisted_2_1, deduped_3_1;
    if Length( Range( arg3_1 ) ) = 0 and not Length( Range( arg2_1 ) ) = 0 then
        return false;
    else
        deduped_3_1 := AsList( arg2_1 );
        hoisted_2_1 := AsList( arg3_1 );
        return ForAll( SSortedList( deduped_3_1 ), function ( i_2 )
                return Length( SSortedList( hoisted_2_1{Positions( deduped_3_1, i_2 )} ) ) = 1;
            end );
    fi;
    return;
end
########
        
    , 100 );
    
    ##
    AddIsEpimorphism( cat,
        
########
function ( cat_1, arg2_1 )
    return not false in SKELETAL_FIN_SETS_IsEpimorphism( AsList( arg2_1 ), Length( Range( arg2_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddIsEqualForMorphisms( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    return AsList( arg2_1 ) = AsList( arg3_1 );
end
########
        
    , 100 );
    
    ##
    AddIsEqualForObjects( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    return Length( arg2_1 ) = Length( arg3_1 );
end
########
        
    , 100 );
    
    ##
    AddIsHomSetInhabited( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    return Length( arg2_1 ) = 0 or not Length( arg3_1 ) = 0;
end
########
        
    , 202 : IsPrecompiledDerivation := true );
    
    ##
    AddIsInitial( cat,
        
########
function ( cat_1, arg2_1 )
    return Length( arg2_1 ) = 0;
end
########
        
    , 100 );
    
    ##
    AddIsInjective( cat,
        
########
function ( cat_1, arg2_1 )
    return not Length( arg2_1 ) = 0;
end
########
        
    , 100 );
    
    ##
    AddIsLiftable( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    local deduped_2_1, deduped_3_1;
    deduped_3_1 := AsList( arg3_1 );
    deduped_2_1 := AsList( arg2_1 );
    return ForAll( CAP_JIT_EXPR_CASE_WRAPPER( function (  )
                if 100 * Length( deduped_2_1 ) < Length( deduped_3_1 ) then
                    return SSortedList( deduped_2_1 );
                else
                    return deduped_2_1;
                fi;
                return;
            end )(  ), function ( y_2 )
            return y_2 in deduped_3_1;
        end );
end
########
        
    , 100 );
    
    ##
    AddIsMonomorphism( cat,
        
########
function ( cat_1, arg2_1 )
    return SKELETAL_FIN_SETS_IsMonomorphism( AsList( arg2_1 ), Length( Range( arg2_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddIsProjective( cat,
        
########
function ( cat_1, arg2_1 )
    return true;
end
########
        
    , 100 );
    
    ##
    AddIsSplitEpimorphism( cat,
        
########
function ( cat_1, arg2_1 )
    return not false in SKELETAL_FIN_SETS_IsEpimorphism( AsList( arg2_1 ), Length( Range( arg2_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddIsSplitMonomorphism( cat,
        
########
function ( cat_1, arg2_1 )
    local deduped_1_1;
    deduped_1_1 := Length( Range( arg2_1 ) );
    return deduped_1_1 = 0 or not Length( Source( arg2_1 ) ) = 0 and SKELETAL_FIN_SETS_IsMonomorphism( AsList( arg2_1 ), deduped_1_1 );
end
########
        
    , 100 );
    
    ##
    AddIsTerminal( cat,
        
########
function ( cat_1, arg2_1 )
    return Length( arg2_1 ) = 1;
end
########
        
    , 100 );
    
    ##
    AddIsWellDefinedForMorphisms( cat,
        
########
function ( cat_1, alpha_1 )
    local hoisted_1_1, deduped_2_1;
    deduped_2_1 := AsList( alpha_1 );
    hoisted_1_1 := Length( Range( alpha_1 ) );
    if not ForAll( deduped_2_1, function ( a_2 )
                 return (IsBigInt( a_2 ) and a_2 >= 0);
             end ) then
        return false;
    elif Length( Source( alpha_1 ) ) <> Length( deduped_2_1 ) then
        return false;
    elif not ForAll( deduped_2_1, function ( a_2 )
                 return a_2 < hoisted_1_1;
             end ) then
        return false;
    else
        return true;
    fi;
    return;
end
########
        
    , 100 );
    
    ##
    AddIsWellDefinedForObjects( cat,
        
########
function ( cat_1, arg2_1 )
    return Length( arg2_1 ) >= 0;
end
########
        
    , 100 );
    
    ##
    AddLift( cat,
        
########
function ( cat_1, alpha_1, beta_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1;
    deduped_3_1 := Source( alpha_1 );
    hoisted_2_1 := AsList( beta_1 );
    hoisted_1_1 := AsList( alpha_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_3_1, Source( beta_1 ), AsList, List( [ 0 .. Length( deduped_3_1 ) - 1 ], function ( x_2 )
              return -1 + BigInt( SafePosition( hoisted_2_1, hoisted_1_1[(1 + x_2)] ) );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddMonomorphismIntoSomeInjectiveObjectWithGivenSomeInjectiveObject( cat,
        
########
function ( cat_1, A_1, I_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, A_1, I_1, AsList, [ 0 .. Length( A_1 ) - 1 ] );
end
########
        
    , 100 );
    
    ##
    AddMorphismConstructor( cat,
        
########
function ( cat_1, arg2_1, arg3_1, arg4_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, arg2_1, arg4_1, AsList, arg3_1 );
end
########
        
    , 100 );
    
    ##
    AddMorphismDatum( cat,
        
########
function ( cat_1, arg2_1 )
    return AsList( arg2_1 );
end
########
        
    , 100 );
    
    ##
    AddMorphismsOfExternalHom( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    local hoisted_3_1, deduped_4_1, deduped_5_1;
    deduped_5_1 := Length( arg2_1 );
    deduped_4_1 := Length( arg3_1 );
    hoisted_3_1 := [ 0 .. deduped_5_1 - 1 ];
    return List( [ 0 .. deduped_4_1 ^ deduped_5_1 - 1 ], function ( i_2 )
            return CreateCapCategoryMorphismWithAttributes( cat_1, arg2_1, arg3_1, AsList, List( hoisted_3_1, function ( i_3 )
                      return DigitInPositionalNotation( i_2, i_3, deduped_5_1, deduped_4_1 );
                  end ) );
        end );
end
########
        
    , 401 );
    
    ##
    AddObjectConstructor( cat,
        
########
function ( cat_1, arg2_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, arg2_1 );
end
########
        
    , 100 );
    
    ##
    AddObjectDatum( cat,
        
########
function ( cat_1, arg2_1 )
    return Length( arg2_1 );
end
########
        
    , 100 );
    
    ##
    AddPreCompose( cat,
        
########
function ( cat_1, alpha_1, beta_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1;
    deduped_3_1 := Source( alpha_1 );
    hoisted_2_1 := AsList( beta_1 );
    hoisted_1_1 := AsList( alpha_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_3_1, Range( beta_1 ), AsList, List( [ 0 .. Length( deduped_3_1 ) - 1 ], function ( i_2 )
              return hoisted_2_1[1 + hoisted_1_1[(1 + i_2)]];
          end ) );
end
########
        
    , 100 );
    
    ##
    AddProjectionInFactorOfDirectProductWithGivenDirectProduct( cat,
        
########
function ( cat_1, objects_1, k_1, P_1 )
    local hoisted_4_1, deduped_5_1, deduped_6_1, deduped_7_1, deduped_8_1;
    deduped_8_1 := List( objects_1, Length );
    deduped_7_1 := Length( P_1 );
    deduped_6_1 := deduped_8_1[k_1];
    deduped_5_1 := Product( deduped_8_1{[ 1 .. k_1 - 1 ]} );
    hoisted_4_1 := DivIntWithGivenQuotient( deduped_7_1, deduped_5_1, deduped_6_1 * Product( deduped_8_1{[ (k_1 + 1) .. Length( objects_1 ) ]} ) );
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, objects_1[k_1], AsList, List( [ 0 .. deduped_7_1 - 1 ], function ( i_2 )
              return RemIntWithDomain( QuoIntWithDomain( i_2, deduped_5_1, deduped_7_1 ), deduped_6_1, hoisted_4_1 );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddProjectionOntoCoequalizerWithGivenCoequalizer( cat,
        
########
function ( cat_1, Y_1, morphisms_1, P_1 )
    local hoisted_1_1;
    hoisted_1_1 := SKELETAL_FIN_SETS_ExplicitCoequalizer( Y_1, morphisms_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, Y_1, P_1, AsList, List( [ 0 .. Length( Y_1 ) - 1 ], function ( x_2 )
              return -1 + BigInt( SafeUniquePositionProperty( hoisted_1_1, function ( c_3 )
                          return (x_2 in c_3);
                      end ) );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddPushoutComplement( cat,
        
########
function ( cat_1, l_1, m_1 )
    local deduped_3_1, deduped_5_1, hoisted_6_1, deduped_9_1, hoisted_10_1, hoisted_14_1, hoisted_16_1, hoisted_17_1, hoisted_18_1, deduped_20_1, deduped_21_1, deduped_22_1, deduped_23_1, deduped_24_1, deduped_25_1, deduped_26_1, deduped_27_1, deduped_28_1, deduped_29_1, deduped_30_1, deduped_31_1, deduped_32_1, deduped_33_1, deduped_34_1, deduped_35_1;
    deduped_35_1 := BigInt( 1 );
    deduped_34_1 := BigInt( 0 );
    deduped_33_1 := Range( m_1 );
    deduped_32_1 := Length( Source( l_1 ) );
    deduped_31_1 := Length( Source( m_1 ) );
    deduped_30_1 := deduped_31_1 * deduped_32_1;
    deduped_29_1 := deduped_31_1 * deduped_31_1;
    deduped_28_1 := [ 0 .. deduped_30_1 - 1 ];
    deduped_27_1 := [ 0 .. deduped_29_1 - 1 ];
    deduped_3_1 := List( deduped_27_1, function ( i_2 )
            return RemIntWithDomain( i_2, deduped_31_1, deduped_29_1 );
        end );
    deduped_26_1 := Filtered( deduped_27_1, function ( x_2 )
            return deduped_3_1[1 + x_2] = CAP_JIT_INCOMPLETE_LOGIC( QuoIntWithDomain( CAP_JIT_INCOMPLETE_LOGIC( x_2 ), deduped_31_1, deduped_29_1 ) );
        end );
    hoisted_10_1 := AsList( l_1 );
    deduped_9_1 := List( deduped_28_1, function ( i_2 )
            return RemIntWithDomain( i_2, deduped_31_1, deduped_30_1 );
        end );
    deduped_25_1 := Filtered( deduped_28_1, function ( x_2 )
            return deduped_9_1[1 + x_2] = CAP_JIT_INCOMPLETE_LOGIC( hoisted_10_1[1 + QuoIntWithDomain( CAP_JIT_INCOMPLETE_LOGIC( x_2 ), deduped_31_1, deduped_30_1 )] );
        end );
    deduped_24_1 := Length( deduped_25_1 );
    deduped_23_1 := deduped_24_1 * deduped_32_1;
    deduped_22_1 := [ 0 .. deduped_24_1 - 1 ];
    hoisted_14_1 := List( deduped_22_1, function ( i_2 )
            return CAP_JIT_INCOMPLETE_LOGIC( QuoIntWithDomain( CAP_JIT_INCOMPLETE_LOGIC( deduped_25_1[1 + i_2] ), deduped_31_1, deduped_30_1 ) );
        end );
    deduped_21_1 := Filtered( [ 0 .. deduped_23_1 - 1 ], function ( x_2 )
            local deduped_1_2;
            deduped_1_2 := CAP_JIT_INCOMPLETE_LOGIC( x_2 );
            return CAP_JIT_INCOMPLETE_LOGIC( hoisted_14_1[1 + RemIntWithDomain( deduped_1_2, deduped_24_1, deduped_23_1 )] ) = CAP_JIT_INCOMPLETE_LOGIC( QuoIntWithDomain( deduped_1_2, deduped_24_1, deduped_23_1 ) );
        end );
    hoisted_18_1 := BigInt( 2 );
    deduped_5_1 := AsList( m_1 );
    hoisted_16_1 := List( deduped_22_1, function ( i_2 )
            return deduped_5_1[1 + deduped_9_1[(1 + deduped_25_1[(1 + i_2)])]];
        end );
    hoisted_17_1 := List( [ 0 .. Length( deduped_21_1 ) - 1 ], function ( i_2 )
            return hoisted_16_1[1 + CAP_JIT_INCOMPLETE_LOGIC( RemIntWithDomain( CAP_JIT_INCOMPLETE_LOGIC( deduped_21_1[(1 + i_2)] ), deduped_24_1, deduped_23_1 ) )];
        end );
    hoisted_6_1 := List( [ 0 .. Length( deduped_26_1 ) - 1 ], function ( i_2 )
            return deduped_5_1[1 + deduped_3_1[(1 + deduped_26_1[(1 + i_2)])]];
        end );
    deduped_20_1 := SSortedList( Filtered( [ 0 .. Length( deduped_33_1 ) - 1 ], function ( x_2 )
              local deduped_1_2;
              deduped_1_2 := CAP_JIT_INCOMPLETE_LOGIC( x_2 );
              return CAP_JIT_INCOMPLETE_LOGIC( CAP_JIT_EXPR_CASE_WRAPPER( function (  )
                            if (CAP_JIT_INCOMPLETE_LOGIC( CAP_JIT_EXPR_CASE_WRAPPER( function (  )
                                              if (deduped_1_2 in hoisted_6_1) then
                                                  return deduped_35_1;
                                              else
                                                  return deduped_34_1;
                                              fi;
                                              return;
                                          end )(  ) ) + CAP_JIT_INCOMPLETE_LOGIC( CAP_JIT_EXPR_CASE_WRAPPER( function (  )
                                                if (deduped_1_2 in hoisted_17_1) then
                                                    return deduped_35_1;
                                                else
                                                    return deduped_34_1;
                                                fi;
                                                return;
                                            end )(  ) ) * hoisted_18_1 = deduped_35_1) then
                                return deduped_34_1;
                            else
                                return deduped_35_1;
                            fi;
                            return;
                        end )(  ) ) = deduped_35_1;
          end ) );
    return CreateCapCategoryMorphismWithAttributes( cat_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( Length( deduped_20_1 ) ) ), deduped_33_1, AsList, deduped_20_1 );
end
########
        
    , 19464 : IsPrecompiledDerivation := true );
    
    ##
    cat!.cached_precompiled_functions.PushoutComplement :=
        
########
function ( cat_1, l_1, m_1 )
    local deduped_3_1, hoisted_4_1, deduped_6_1, hoisted_7_1, hoisted_9_1, deduped_11_1, hoisted_12_1, hoisted_13_1, hoisted_15_1, hoisted_18_1, hoisted_19_1, hoisted_20_1, hoisted_22_1, hoisted_23_1, hoisted_24_1, hoisted_25_1, hoisted_26_1, hoisted_28_1, deduped_29_1, deduped_30_1, deduped_31_1, deduped_32_1, deduped_33_1, deduped_34_1, deduped_35_1, deduped_36_1, deduped_37_1, deduped_38_1, deduped_39_1, deduped_40_1, deduped_41_1, deduped_42_1, deduped_43_1, deduped_44_1, deduped_45_1, deduped_46_1;
    deduped_46_1 := BigInt( 0 );
    deduped_45_1 := BigInt( 1 );
    deduped_44_1 := Range( m_1 );
    deduped_43_1 := Length( Source( l_1 ) );
    deduped_42_1 := Length( Source( m_1 ) );
    deduped_41_1 := deduped_42_1 * deduped_43_1;
    deduped_40_1 := deduped_42_1 * deduped_42_1;
    deduped_39_1 := [ 0 .. Length( deduped_44_1 ) - 1 ];
    deduped_38_1 := [ 0 .. deduped_41_1 - 1 ];
    deduped_37_1 := [ 0 .. deduped_40_1 - 1 ];
    hoisted_12_1 := AsList( l_1 );
    hoisted_13_1 := List( deduped_38_1, function ( i_2 )
            return hoisted_12_1[1 + QuoIntWithDomain( i_2, deduped_42_1, deduped_41_1 )];
        end );
    deduped_11_1 := List( deduped_38_1, function ( i_2 )
            return RemIntWithDomain( i_2, deduped_42_1, deduped_41_1 );
        end );
    deduped_36_1 := Filtered( deduped_38_1, function ( x_2 )
            local deduped_1_2;
            deduped_1_2 := 1 + x_2;
            return deduped_11_1[deduped_1_2] = hoisted_13_1[deduped_1_2];
        end );
    hoisted_4_1 := List( deduped_37_1, function ( i_2 )
            return QuoIntWithDomain( i_2, deduped_42_1, deduped_40_1 );
        end );
    deduped_3_1 := List( deduped_37_1, function ( i_2 )
            return RemIntWithDomain( i_2, deduped_42_1, deduped_40_1 );
        end );
    deduped_35_1 := Filtered( deduped_37_1, function ( x_2 )
            local deduped_1_2;
            deduped_1_2 := 1 + x_2;
            return deduped_3_1[deduped_1_2] = hoisted_4_1[deduped_1_2];
        end );
    deduped_33_1 := Length( deduped_36_1 );
    deduped_32_1 := deduped_33_1 * deduped_43_1;
    deduped_31_1 := [ 0 .. deduped_33_1 - 1 ];
    deduped_30_1 := [ 0 .. deduped_32_1 - 1 ];
    hoisted_20_1 := List( deduped_30_1, function ( i_2 )
            return QuoIntWithDomain( i_2, deduped_33_1, deduped_32_1 );
        end );
    hoisted_15_1 := List( deduped_38_1, function ( i_2 )
            return QuoIntWithDomain( i_2, deduped_42_1, deduped_41_1 );
        end );
    hoisted_18_1 := List( deduped_31_1, function ( i_2 )
            return hoisted_15_1[1 + deduped_36_1[(1 + i_2)]];
        end );
    hoisted_19_1 := List( deduped_30_1, function ( i_2 )
            return hoisted_18_1[1 + RemIntWithDomain( i_2, deduped_33_1, deduped_32_1 )];
        end );
    deduped_29_1 := Filtered( deduped_30_1, function ( x_2 )
            local deduped_1_2;
            deduped_1_2 := 1 + x_2;
            return hoisted_19_1[deduped_1_2] = hoisted_20_1[deduped_1_2];
        end );
    hoisted_26_1 := BigInt( 2 );
    deduped_6_1 := AsList( m_1 );
    hoisted_23_1 := List( deduped_31_1, function ( i_2 )
            return deduped_6_1[1 + deduped_11_1[(1 + deduped_36_1[(1 + i_2)])]];
        end );
    hoisted_22_1 := List( deduped_30_1, function ( i_2 )
            return RemIntWithDomain( i_2, deduped_33_1, deduped_32_1 );
        end );
    hoisted_24_1 := List( [ 0 .. Length( deduped_29_1 ) - 1 ], function ( i_2 )
            return hoisted_23_1[1 + hoisted_22_1[(1 + deduped_29_1[(1 + i_2)])]];
        end );
    hoisted_25_1 := List( deduped_39_1, function ( x_2 )
            if x_2 in hoisted_24_1 then
                return deduped_45_1;
            else
                return deduped_46_1;
            fi;
            return;
        end );
    hoisted_7_1 := List( [ 0 .. Length( deduped_35_1 ) - 1 ], function ( i_2 )
            return deduped_6_1[1 + deduped_3_1[(1 + deduped_35_1[(1 + i_2)])]];
        end );
    hoisted_9_1 := List( deduped_39_1, function ( x_2 )
            if x_2 in hoisted_7_1 then
                return deduped_45_1;
            else
                return deduped_46_1;
            fi;
            return;
        end );
    hoisted_28_1 := List( deduped_39_1, function ( i_2 )
            local deduped_1_2;
            deduped_1_2 := 1 + i_2;
            if hoisted_9_1[deduped_1_2] + hoisted_25_1[deduped_1_2] * hoisted_26_1 = deduped_45_1 then
                return deduped_46_1;
            else
                return deduped_45_1;
            fi;
            return;
        end );
    deduped_34_1 := SSortedList( Filtered( deduped_39_1, function ( x_2 )
              return hoisted_28_1[1 + x_2] = deduped_45_1;
          end ) );
    return CreateCapCategoryMorphismWithAttributes( cat_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( Length( deduped_34_1 ) ) ), deduped_44_1, AsList, deduped_34_1 );
end
########
        
    ;
    
    ##
    AddSingletonMorphismWithGivenPowerObject( cat,
        
########
function ( cat_1, a_1, Pa_1 )
    local hoisted_1_1;
    hoisted_1_1 := BigInt( 2 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, Pa_1, AsList, List( [ 0 .. Length( a_1 ) - 1 ], function ( i_2 )
              return hoisted_1_1 ^ i_2;
          end ) );
end
########
        
    , 605 : IsPrecompiledDerivation := true );
    
    ##
    AddSomeInjectiveObject( cat,
        
########
function ( cat_1, arg2_1 )
    if Length( arg2_1 ) = 0 then
        return CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( 1 ) );
    else
        return arg2_1;
    fi;
    return;
end
########
        
    , 100 );
    
    ##
    AddSubobjectClassifier( cat,
        
########
function ( cat_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( 2 ) );
end
########
        
    , 100 );
    
    ##
    AddTerminalObject( cat,
        
########
function ( cat_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( 1 ) );
end
########
        
    , 100 );
    
    ##
    AddTruthMorphismOfImplies( cat,
        
########
function ( cat_1 )
    local deduped_1_1;
    deduped_1_1 := BigInt( 1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( 4 ) ), CreateCapCategoryObjectWithAttributes( cat_1, Length, BigInt( 2 ) ), AsList, [ deduped_1_1, BigInt( 0 ), deduped_1_1, deduped_1_1 ] );
end
########
        
    , 1206 : IsPrecompiledDerivation := true );
    
    ##
    AddUniversalMorphismFromCoequalizerWithGivenCoequalizer( cat,
        
########
function ( cat_1, Y_1, morphisms_1, T_1, tau_1, P_1 )
    local hoisted_1_1;
    hoisted_1_1 := AsList( tau_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, Range( tau_1 ), AsList, List( SKELETAL_FIN_SETS_ExplicitCoequalizer( Y_1, morphisms_1 ), function ( x_2 )
              return hoisted_1_1[1 + x_2[1]];
          end ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismFromCoproductWithGivenCoproduct( cat,
        
########
function ( cat_1, objects_1, T_1, tau_1, P_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, T_1, AsList, Concatenation( List( tau_1, AsList ) ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismFromInitialObjectWithGivenInitialObject( cat,
        
########
function ( cat_1, T_1, P_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, T_1, AsList, CapJitTypedExpression( [  ], function (  )
              return rec(
                  filter := IsList,
                  element_type := rec(
                      filter := IsInt ) );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismIntoDirectProductWithGivenDirectProduct( cat,
        
########
function ( cat_1, objects_1, T_1, tau_1, P_1 )
    local hoisted_1_1, hoisted_2_1, hoisted_3_1, deduped_5_1;
    deduped_5_1 := [ 0 .. Length( objects_1 ) - 1 ];
    hoisted_2_1 := List( objects_1, Length );
    hoisted_3_1 := List( deduped_5_1, function ( j_2 )
            return Product( hoisted_2_1{[ 1 .. j_2 ]} );
        end );
    hoisted_1_1 := List( tau_1, AsList );
    return CreateCapCategoryMorphismWithAttributes( cat_1, T_1, P_1, AsList, List( [ 0 .. Length( T_1 ) - 1 ], function ( i_2 )
              local hoisted_1_2;
              hoisted_1_2 := 1 + i_2;
              return Sum( deduped_5_1, function ( j_3 )
                      local deduped_1_3;
                      deduped_1_3 := 1 + j_3;
                      return hoisted_1_1[deduped_1_3][hoisted_1_2] * hoisted_3_1[deduped_1_3];
                  end );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismIntoEqualizerWithGivenEqualizer( cat,
        
########
function ( cat_1, Y_1, morphisms_1, T_1, tau_1, P_1 )
    local deduped_1_1, hoisted_2_1, hoisted_3_1, hoisted_4_1;
    hoisted_2_1 := [ 1 .. Length( morphisms_1 ) - 1 ];
    deduped_1_1 := List( morphisms_1, AsList );
    hoisted_4_1 := Filtered( [ 0 .. Length( Y_1 ) - 1 ], function ( x_2 )
            local deduped_1_2;
            deduped_1_2 := 1 + x_2;
            return ForAll( hoisted_2_1, function ( j_3 )
                    return deduped_1_1[j_3][deduped_1_2] = deduped_1_1[j_3 + 1][deduped_1_2];
                end );
        end );
    hoisted_3_1 := AsList( tau_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, T_1, P_1, AsList, List( [ 0 .. Length( T_1 ) - 1 ], function ( x_2 )
              return -1 + BigInt( SafePosition( hoisted_4_1, hoisted_3_1[(1 + x_2)] ) );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismIntoTerminalObjectWithGivenTerminalObject( cat,
        
########
function ( cat_1, T_1, P_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, T_1, P_1, AsList, ListWithIdenticalEntries( Length( T_1 ), BigInt( 0 ) ) );
end
########
        
    , 100 );
    
    if IsBound( cat!.precompiled_functions_added ) then
        
        # COVERAGE_IGNORE_NEXT_LINE
        Error( "precompiled functions have already been added before" );
        
    fi;
    
    cat!.precompiled_functions_added := true;
    
end );

BindGlobal( "SkeletalCategoryOfFiniteSetsWithMorphismsGivenByLists_precompiled", function (  )
  local category_constructor, cat;
    
    category_constructor :=
        
        
        function (  )
    return SkeletalCategoryOfFiniteSets(  );
end;
        
        
    
    cat := category_constructor(  : FinalizeCategory := false, no_precompiled_code := true );
    
    ADD_FUNCTIONS_FOR_SkeletalCategoryOfFiniteSetsWithMorphismsGivenByLists_precompiled( cat );
    
    Finalize( cat );
    
    return cat;
    
end );
