# SPDX-License-Identifier: GPL-2.0-or-later
# FinSetsForCAP: The elementary topos of (skeletal) finite sets
#
# Implementations
#
BindGlobal( "ADD_FUNCTIONS_FOR_CategoryOfSkeletalFinSetsPrecompiled", function ( cat )
    
    ##
    AddCartesianBraidingInverseWithGivenDirectProducts( cat,
        
########
function ( cat_1, s_1, a_1, b_1, r_1 )
    local hoisted_1_1, hoisted_2_1;
    hoisted_2_1 := Length( a_1 );
    hoisted_1_1 := Length( b_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, r_1, AsLazyArray, LazyArray( Length( s_1 ), function ( i_2 )
              return REM_INT( i_2, hoisted_1_1 ) * hoisted_2_1 + QUO_INT( i_2, hoisted_1_1 );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCartesianCoevaluationMorphismWithGivenRange( cat,
        
########
function ( cat_1, a_1, b_1, r_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1, deduped_4_1, deduped_5_1;
    deduped_5_1 := Length( b_1 );
    deduped_4_1 := Length( a_1 );
    deduped_3_1 := deduped_4_1 * deduped_5_1;
    hoisted_2_1 := deduped_4_1 * deduped_3_1 * GeometricSumDiff1( deduped_3_1, deduped_5_1 );
    hoisted_1_1 := GeometricSum( deduped_3_1, deduped_5_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, r_1, AsLazyArray, LazyArray( deduped_4_1, function ( i_2 )
              return i_2 * hoisted_1_1 + hoisted_2_1;
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCartesianEvaluationMorphismWithGivenSource( cat,
        
########
function ( cat_1, a_1, b_1, s_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1, deduped_4_1, deduped_5_1;
    deduped_5_1 := Length( a_1 );
    deduped_4_1 := Length( b_1 );
    deduped_3_1 := deduped_4_1 ^ deduped_5_1;
    hoisted_2_1 := deduped_4_1;
    hoisted_1_1 := deduped_3_1;
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, b_1, AsLazyArray, LazyArray( deduped_3_1 * deduped_5_1, function ( i_2 )
              return REM_INT( QUO_INT( i_2, hoisted_2_1 ^ QUO_INT( i_2, hoisted_1_1 ) ), hoisted_2_1 );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCartesianLambdaElimination( cat,
        
########
function ( cat_1, a_1, b_1, alpha_1 )
    local hoisted_1_1, hoisted_2_1, hoisted_3_1, hoisted_4_1, hoisted_5_1, hoisted_6_1, hoisted_7_1, hoisted_8_1, hoisted_9_1, hoisted_10_1, hoisted_11_1, hoisted_12_1, hoisted_13_1, hoisted_14_1, deduped_15_1, deduped_16_1, deduped_17_1, deduped_18_1, deduped_19_1;
    deduped_19_1 := Length( b_1 );
    deduped_18_1 := Length( a_1 );
    deduped_17_1 := Length( Source( alpha_1 ) );
    deduped_16_1 := deduped_19_1 ^ deduped_18_1;
    deduped_15_1 := deduped_17_1 * deduped_18_1;
    hoisted_2_1 := deduped_19_1;
    hoisted_1_1 := deduped_16_1;
    hoisted_13_1 := LazyArray( deduped_16_1 * deduped_18_1, function ( i_2 )
            return REM_INT( QUO_INT( i_2, hoisted_2_1 ^ QUO_INT( i_2, hoisted_1_1 ) ), hoisted_2_1 );
        end );
    hoisted_11_1 := Length( Range( alpha_1 ) );
    hoisted_9_1 := LazyStandardInterval( deduped_18_1 );
    hoisted_7_1 := deduped_18_1;
    hoisted_3_1 := deduped_17_1;
    hoisted_8_1 := LazyArray( deduped_15_1, function ( i_2 )
            return REM_INT( QUO_INT( i_2, hoisted_3_1 ), hoisted_7_1 );
        end );
    hoisted_10_1 := LazyArray( deduped_15_1, function ( i_2 )
            return hoisted_9_1[hoisted_8_1[i_2]];
        end );
    hoisted_5_1 := AsLazyArray( alpha_1 );
    hoisted_4_1 := LazyArray( deduped_15_1, function ( i_2 )
            return REM_INT( i_2, hoisted_3_1 );
        end );
    hoisted_6_1 := LazyArray( deduped_15_1, function ( i_2 )
            return hoisted_5_1[hoisted_4_1[i_2]];
        end );
    hoisted_12_1 := LazyArray( deduped_15_1, function ( i_2 )
            return hoisted_6_1[i_2] + hoisted_10_1[i_2] * hoisted_11_1;
        end );
    hoisted_14_1 := LazyArray( deduped_15_1, function ( i_2 )
            return hoisted_13_1[hoisted_12_1[i_2]];
        end );
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, b_1, AsLazyArray, LazyArray( deduped_18_1, function ( i_2 )
              return hoisted_14_1[hoisted_9_1[i_2]];
          end ) );
end
########
        
    , 1407 : IsPrecompiledDerivation := true );
    
    ##
    AddCartesianLambdaIntroduction( cat,
        
########
function ( cat_1, alpha_1 )
    local hoisted_1_1, hoisted_2_1, hoisted_3_1, hoisted_4_1, hoisted_5_1, hoisted_6_1, hoisted_7_1, hoisted_8_1, hoisted_9_1, hoisted_10_1, deduped_11_1, deduped_12_1;
    deduped_12_1 := Length( Source( alpha_1 ) );
    deduped_11_1 := Length( Range( alpha_1 ) );
    hoisted_6_1 := [ 0 .. deduped_12_1 - 1 ];
    hoisted_5_1 := deduped_11_1;
    hoisted_2_1 := AsLazyArray( alpha_1 );
    hoisted_1_1 := LazyStandardInterval( deduped_12_1 );
    hoisted_4_1 := LazyArray( deduped_12_1, function ( i_2 )
            return hoisted_2_1[hoisted_1_1[i_2]];
        end );
    hoisted_3_1 := deduped_12_1;
    hoisted_10_1 := LazyArray( deduped_12_1 ^ deduped_12_1, function ( i_2 )
            local hoisted_1_2, hoisted_2_2, hoisted_3_2;
            hoisted_1_2 := LazyArray( hoisted_3_1, function ( j_3 )
                    return REM_INT( QUO_INT( i_2, hoisted_3_1 ^ j_3 ), hoisted_3_1 );
                end );
            hoisted_2_2 := LazyArray( hoisted_3_1, function ( i_3 )
                    return hoisted_1_2[hoisted_1_1[i_3]];
                end );
            hoisted_3_2 := LazyArray( hoisted_3_1, function ( i_3 )
                    return hoisted_4_1[hoisted_2_2[i_3]];
                end );
            return Sum( List( hoisted_6_1, function ( k_3 )
                      return hoisted_3_2[k_3] * hoisted_5_1 ^ k_3;
                  end ) );
        end );
    hoisted_8_1 := deduped_12_1 * GeometricSumDiff1( deduped_12_1, deduped_12_1 );
    hoisted_7_1 := GeometricSum( deduped_12_1, deduped_12_1 );
    hoisted_9_1 := LazyArray( 1, function ( i_2 )
            return i_2 * hoisted_7_1 + hoisted_8_1;
        end );
    return CreateCapCategoryMorphismWithAttributes( cat_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, 1 ), CreateCapCategoryObjectWithAttributes( cat_1, Length, deduped_11_1 ^ deduped_12_1 ), AsLazyArray, LazyArray( 1, function ( i_2 )
              return hoisted_10_1[hoisted_9_1[i_2]];
          end ) );
end
########
        
    , 1105 : IsPrecompiledDerivation := true );
    
    ##
    AddCartesianLeftUnitorInverseWithGivenDirectProduct( cat,
        
########
function ( cat_1, a_1, r_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsLazyArray, LazyStandardInterval( Length( a_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddCartesianLeftUnitorWithGivenDirectProduct( cat,
        
########
function ( cat_1, a_1, s_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsLazyArray, LazyStandardInterval( Length( a_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddCartesianRightUnitorInverseWithGivenDirectProduct( cat,
        
########
function ( cat_1, a_1, r_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsLazyArray, LazyStandardInterval( Length( a_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddCartesianRightUnitorWithGivenDirectProduct( cat,
        
########
function ( cat_1, a_1, s_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsLazyArray, LazyStandardInterval( Length( a_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddClassifyingMorphismOfSubobjectWithGivenSubobjectClassifier( cat,
        
########
function ( cat_1, alpha_1, Omega_1 )
    local hoisted_1_1, deduped_2_1;
    deduped_2_1 := Range( alpha_1 );
    hoisted_1_1 := AsLazyArray( alpha_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_2_1, Omega_1, AsLazyArray, LazyArray( Length( deduped_2_1 ), function ( x_2 )
              if x_2 in hoisted_1_1 then
                  return 1;
              else
                  return 0;
              fi;
              return;
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCoastrictionToImageWithGivenImageObject( cat,
        
########
function ( cat_1, alpha_1, I_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1, deduped_4_1;
    deduped_4_1 := AsLazyArray( alpha_1 );
    deduped_3_1 := Source( alpha_1 );
    hoisted_2_1 := SSortedList( deduped_4_1 );
    hoisted_1_1 := deduped_4_1;
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_3_1, I_1, AsLazyArray, LazyArray( Length( deduped_3_1 ), function ( l_2 )
              return -1 + SafePosition( hoisted_2_1, hoisted_1_1[l_2] );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCoequalizer( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Length( SKELETAL_FIN_SETS_ExplicitCoequalizer( arg2_1, arg3_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddColift( cat,
        
########
function ( cat_1, alpha_1, beta_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1;
    deduped_3_1 := Range( alpha_1 );
    hoisted_2_1 := AsLazyArray( beta_1 );
    hoisted_1_1 := AsLazyArray( alpha_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_3_1, Range( beta_1 ), AsLazyArray, LazyArray( Length( deduped_3_1 ), function ( y_2 )
              if not y_2 in hoisted_1_1 then
                  return 0;
              else
                  return hoisted_2_1[SafePosition( hoisted_1_1, y_2 )];
              fi;
              return;
          end ) );
end
########
        
    , 100 );
    
    ##
    AddCoproduct( cat,
        
########
function ( cat_1, arg2_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Sum( List( arg2_1, Length ) ) );
end
########
        
    , 100 );
    
    ##
    AddDirectProduct( cat,
        
########
function ( cat_1, arg2_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Product( List( arg2_1, Length ) ) );
end
########
        
    , 100 );
    
    ##
    AddEmbeddingOfEqualizerWithGivenEqualizer( cat,
        
########
function ( cat_1, Y_1, morphisms_1, P_1 )
    local hoisted_1_1, hoisted_2_1;
    hoisted_2_1 := [ 1 .. Length( morphisms_1 ) - 1 ];
    hoisted_1_1 := List( morphisms_1, AsLazyArray );
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, Y_1, AsLazyArray, LazyArrayFromList( Filtered( [ 0 .. Length( Y_1 ) - 1 ], function ( x_2 )
                return ForAll( hoisted_2_1, function ( j_3 )
                        return hoisted_1_1[j_3][x_2] = hoisted_1_1[j_3 + 1][x_2];
                    end );
            end ) ) );
end
########
        
    , 100 );
    
    ##
    AddEpimorphismFromSomeProjectiveObject( cat,
        
########
function ( cat_1, A_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, A_1, A_1, AsLazyArray, LazyStandardInterval( Length( A_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddEqualizer( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    local hoisted_1_1, hoisted_2_1;
    hoisted_2_1 := [ 1 .. Length( arg3_1 ) - 1 ];
    hoisted_1_1 := List( arg3_1, AsLazyArray );
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Length( Filtered( [ 0 .. Length( arg2_1 ) - 1 ], function ( x_2 )
                return ForAll( hoisted_2_1, function ( j_3 )
                        return hoisted_1_1[j_3][x_2] = hoisted_1_1[j_3 + 1][x_2];
                    end );
            end ) ) );
end
########
        
    , 100 );
    
    ##
    AddExponentialOnMorphismsWithGivenExponentials( cat,
        
########
function ( cat_1, s_1, alpha_1, beta_1, r_1 )
    local hoisted_1_1, hoisted_2_1, hoisted_3_1, hoisted_4_1, hoisted_5_1, hoisted_6_1, hoisted_7_1, deduped_8_1, deduped_9_1, deduped_10_1;
    deduped_10_1 := Length( Source( alpha_1 ) );
    deduped_9_1 := Length( Range( alpha_1 ) );
    deduped_8_1 := Length( Source( beta_1 ) );
    hoisted_7_1 := [ 0 .. deduped_10_1 - 1 ];
    hoisted_6_1 := Length( Range( beta_1 ) );
    hoisted_5_1 := AsLazyArray( beta_1 );
    hoisted_4_1 := deduped_10_1;
    hoisted_3_1 := AsLazyArray( alpha_1 );
    hoisted_2_1 := deduped_9_1;
    hoisted_1_1 := deduped_8_1;
    return CreateCapCategoryMorphismWithAttributes( cat_1, s_1, r_1, AsLazyArray, LazyArray( deduped_8_1 ^ deduped_9_1, function ( i_2 )
              local hoisted_1_2, hoisted_2_2, hoisted_3_2;
              hoisted_1_2 := LazyArray( hoisted_2_1, function ( j_3 )
                      return REM_INT( QUO_INT( i_2, hoisted_1_1 ^ j_3 ), hoisted_1_1 );
                  end );
              hoisted_2_2 := LazyArray( hoisted_4_1, function ( i_3 )
                      return hoisted_1_2[hoisted_3_1[i_3]];
                  end );
              hoisted_3_2 := LazyArray( hoisted_4_1, function ( i_3 )
                      return hoisted_5_1[hoisted_2_2[i_3]];
                  end );
              return Sum( List( hoisted_7_1, function ( k_3 )
                        return hoisted_3_2[k_3] * hoisted_6_1 ^ k_3;
                    end ) );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddExponentialOnObjects( cat,
        
########
function ( cat_1, a_1, b_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Length( b_1 ) ^ Length( a_1 ) );
end
########
        
    , 100 );
    
    ##
    AddIdentityMorphism( cat,
        
########
function ( cat_1, a_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, a_1, AsLazyArray, LazyStandardInterval( Length( a_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddImageEmbeddingWithGivenImageObject( cat,
        
########
function ( cat_1, alpha_1, I_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, I_1, Range( alpha_1 ), AsLazyArray, LazyArrayFromList( SSortedList( AsLazyArray( alpha_1 ) ) ) );
end
########
        
    , 100 );
    
    ##
    AddImageObject( cat,
        
########
function ( cat_1, arg2_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, Length( SSortedList( AsLazyArray( arg2_1 ) ) ) );
end
########
        
    , 100 );
    
    ##
    AddInitialObject( cat,
        
########
function ( cat_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, 0 );
end
########
        
    , 100 );
    
    ##
    AddInjectionOfCofactorOfCoproductWithGivenCoproduct( cat,
        
########
function ( cat_1, objects_1, k_1, P_1 )
    local deduped_1_1;
    deduped_1_1 := List( objects_1, Length );
    return CreateCapCategoryMorphismWithAttributes( cat_1, objects_1[k_1], P_1, AsLazyArray, LazyInterval( deduped_1_1[k_1], Sum( deduped_1_1{[ 1 .. k_1 - 1 ]} ) ) );
end
########
        
    , 100 );
    
    ##
    AddIsColiftable( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1;
    deduped_3_1 := ListOfValues( AsLazyArray( arg2_1 ) );
    hoisted_2_1 := ListOfValues( AsLazyArray( arg3_1 ) );
    hoisted_1_1 := deduped_3_1;
    return ForAll( SSortedList( deduped_3_1 ), function ( i_2 )
            return Length( SSortedList( hoisted_2_1{Positions( hoisted_1_1, i_2 )} ) ) = 1;
        end );
end
########
        
    , 100 );
    
    ##
    AddIsEpimorphism( cat,
        
########
function ( cat_1, arg2_1 )
    return not false in SKELETAL_FIN_SETS_IsEpimorphism( AsLazyArray( arg2_1 ), Length( Range( arg2_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddIsEqualForMorphisms( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    return AsLazyArray( arg2_1 ) = AsLazyArray( arg3_1 );
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
        
    , 100 );
    
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
    local hoisted_1_1, deduped_2_1, deduped_3_1;
    deduped_3_1 := AsLazyArray( arg3_1 );
    deduped_2_1 := AsLazyArray( arg2_1 );
    hoisted_1_1 := deduped_3_1;
    return ForAll( IdFunc( function (  )
                if 100 * Length( deduped_2_1 ) < Length( deduped_3_1 ) then
                    return SSortedList( deduped_2_1 );
                else
                    return deduped_2_1;
                fi;
                return;
            end )(  ), function ( y_2 )
            return y_2 in hoisted_1_1;
        end );
end
########
        
    , 100 );
    
    ##
    AddIsMonomorphism( cat,
        
########
function ( cat_1, arg2_1 )
    return SKELETAL_FIN_SETS_IsMonomorphism( AsLazyArray( arg2_1 ), Length( Range( arg2_1 ) ) );
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
    return not false in SKELETAL_FIN_SETS_IsEpimorphism( AsLazyArray( arg2_1 ), Length( Range( arg2_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddIsSplitMonomorphism( cat,
        
########
function ( cat_1, arg2_1 )
    local deduped_1_1;
    deduped_1_1 := Length( Range( arg2_1 ) );
    return deduped_1_1 = 0 or not Length( Source( arg2_1 ) ) = 0 and SKELETAL_FIN_SETS_IsMonomorphism( AsLazyArray( arg2_1 ), deduped_1_1 );
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
function ( cat_1, arg2_1 )
    local hoisted_1_1, deduped_2_1;
    deduped_2_1 := AsLazyArray( arg2_1 );
    hoisted_1_1 := Length( Range( arg2_1 ) );
    if not ForAll( deduped_2_1, function ( a_2 )
                 return (IsInt( a_2 ) and a_2 >= 0);
             end ) then
        return false;
    elif Length( Source( arg2_1 ) ) <> Length( deduped_2_1 ) then
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
    hoisted_2_1 := AsLazyArray( beta_1 );
    hoisted_1_1 := AsLazyArray( alpha_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_3_1, Source( beta_1 ), AsLazyArray, LazyArray( Length( deduped_3_1 ), function ( x_2 )
              return SafePosition( hoisted_2_1, hoisted_1_1[x_2] );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddMonomorphismIntoSomeInjectiveObjectWithGivenSomeInjectiveObject( cat,
        
########
function ( cat_1, A_1, I_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, A_1, I_1, AsLazyArray, LazyStandardInterval( Length( A_1 ) ) );
end
########
        
    , 100 );
    
    ##
    AddMorphismConstructor( cat,
        
########
function ( cat_1, arg2_1, arg3_1, arg4_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, arg2_1, arg4_1, AsLazyArray, arg3_1 );
end
########
        
    , 100 );
    
    ##
    AddMorphismDatum( cat,
        
########
function ( cat_1, arg2_1 )
    return AsLazyArray( arg2_1 );
end
########
        
    , 100 );
    
    ##
    AddMorphismsOfExternalHom( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
    local hoisted_1_1, hoisted_2_1, hoisted_3_1, hoisted_4_1, hoisted_5_1, hoisted_6_1, hoisted_7_1, deduped_8_1, deduped_9_1, deduped_10_1;
    deduped_10_1 := Length( arg2_1 );
    deduped_9_1 := Length( arg3_1 );
    deduped_8_1 := deduped_9_1 ^ deduped_10_1;
    hoisted_2_1 := deduped_9_1;
    hoisted_1_1 := deduped_8_1;
    hoisted_7_1 := LazyArray( deduped_8_1 * deduped_10_1, function ( i_2 )
            return REM_INT( QUO_INT( i_2, hoisted_2_1 ^ QUO_INT( i_2, hoisted_1_1 ) ), hoisted_2_1 );
        end );
    hoisted_5_1 := LazyStandardInterval( deduped_10_1 );
    hoisted_3_1 := deduped_10_1;
    hoisted_4_1 := LazyArray( deduped_10_1, function ( i_2 )
            return REM_INT( i_2, hoisted_3_1 );
        end );
    hoisted_6_1 := LazyArray( deduped_10_1, function ( i_2 )
            return hoisted_5_1[hoisted_4_1[i_2]];
        end );
    return List( [ 0 .. deduped_8_1 - 1 ], function ( i_2 )
            local hoisted_1_2, hoisted_2_2;
            hoisted_1_2 := LazyArray( hoisted_3_1, function ( i_3 )
                    return i_2 + hoisted_6_1[i_3] * hoisted_1_1;
                end );
            hoisted_2_2 := LazyArray( hoisted_3_1, function ( i_3 )
                    return hoisted_7_1[hoisted_1_2[i_3]];
                end );
            return CreateCapCategoryMorphismWithAttributes( cat_1, arg2_1, arg3_1, AsLazyArray, LazyArray( hoisted_3_1, function ( i_3 )
                      return hoisted_2_2[hoisted_5_1[i_3]];
                  end ) );
        end );
end
########
        
    , 100 );
    
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
    hoisted_2_1 := AsLazyArray( beta_1 );
    hoisted_1_1 := AsLazyArray( alpha_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, deduped_3_1, Range( beta_1 ), AsLazyArray, LazyArray( Length( deduped_3_1 ), function ( i_2 )
              return hoisted_2_1[hoisted_1_1[i_2]];
          end ) );
end
########
        
    , 100 );
    
    ##
    AddProjectionInFactorOfDirectProductWithGivenDirectProduct( cat,
        
########
function ( cat_1, objects_1, k_1, P_1 )
    local hoisted_1_1, hoisted_2_1, deduped_3_1;
    deduped_3_1 := List( objects_1, Length );
    hoisted_2_1 := deduped_3_1[k_1];
    hoisted_1_1 := Product( deduped_3_1{[ 1 .. k_1 - 1 ]} );
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, objects_1[k_1], AsLazyArray, LazyArray( Length( P_1 ), function ( i_2 )
              return REM_INT( QUO_INT( i_2, hoisted_1_1 ), hoisted_2_1 );
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
    return CreateCapCategoryMorphismWithAttributes( cat_1, Y_1, P_1, AsLazyArray, LazyArray( Length( Y_1 ), function ( x_2 )
              return -1 + SafePosition( hoisted_1_1, SafeFirst( hoisted_1_1, function ( c_3 )
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
    local hoisted_1_1, hoisted_2_1, hoisted_3_1, hoisted_4_1, hoisted_5_1, hoisted_6_1, hoisted_7_1, hoisted_8_1, hoisted_9_1, hoisted_10_1, hoisted_11_1, hoisted_12_1, hoisted_13_1, hoisted_14_1, hoisted_15_1, hoisted_16_1, hoisted_17_1, hoisted_18_1, hoisted_19_1, hoisted_20_1, hoisted_21_1, hoisted_22_1, hoisted_23_1, hoisted_24_1, hoisted_25_1, hoisted_26_1, hoisted_27_1, hoisted_28_1, hoisted_29_1, hoisted_30_1, hoisted_31_1, hoisted_32_1, hoisted_33_1, hoisted_34_1, hoisted_35_1, hoisted_36_1, hoisted_37_1, hoisted_38_1, hoisted_39_1, hoisted_40_1, hoisted_41_1, hoisted_42_1, hoisted_43_1, hoisted_44_1, hoisted_45_1, hoisted_46_1, hoisted_47_1, hoisted_48_1, hoisted_49_1, hoisted_50_1, hoisted_51_1, hoisted_52_1, hoisted_53_1, hoisted_54_1, hoisted_55_1, hoisted_56_1, hoisted_57_1, hoisted_58_1, hoisted_59_1, deduped_60_1, deduped_61_1, deduped_62_1, deduped_63_1, deduped_64_1, deduped_65_1, deduped_66_1, deduped_67_1, deduped_68_1, deduped_69_1, deduped_70_1, deduped_71_1, deduped_72_1, deduped_73_1, deduped_74_1, deduped_75_1;
    deduped_75_1 := Range( m_1 );
    deduped_74_1 := Length( Source( l_1 ) );
    deduped_73_1 := Length( Source( m_1 ) );
    deduped_72_1 := Length( deduped_75_1 );
    deduped_71_1 := deduped_73_1 * deduped_74_1;
    deduped_70_1 := deduped_73_1 * deduped_73_1;
    hoisted_25_1 := AsLazyArray( l_1 );
    hoisted_23_1 := deduped_74_1;
    hoisted_7_1 := deduped_73_1;
    hoisted_24_1 := LazyArray( deduped_71_1, function ( i_2 )
            return REM_INT( QUO_INT( i_2, hoisted_7_1 ), hoisted_23_1 );
        end );
    hoisted_26_1 := LazyArray( deduped_71_1, function ( i_2 )
            return hoisted_25_1[hoisted_24_1[i_2]];
        end );
    hoisted_21_1 := LazyArray( deduped_71_1, function ( i_2 )
            return REM_INT( i_2, hoisted_7_1 );
        end );
    hoisted_9_1 := LazyStandardInterval( deduped_73_1 );
    hoisted_22_1 := LazyArray( deduped_71_1, function ( i_2 )
            return hoisted_9_1[hoisted_21_1[i_2]];
        end );
    deduped_68_1 := Filtered( [ 0 .. deduped_71_1 - 1 ], function ( x_2 )
            return hoisted_22_1[x_2] = hoisted_26_1[x_2];
        end );
    hoisted_11_1 := LazyArray( deduped_70_1, function ( i_2 )
            return REM_INT( QUO_INT( i_2, hoisted_7_1 ), hoisted_7_1 );
        end );
    hoisted_12_1 := LazyArray( deduped_70_1, function ( i_2 )
            return hoisted_9_1[hoisted_11_1[i_2]];
        end );
    hoisted_8_1 := LazyArray( deduped_70_1, function ( i_2 )
            return REM_INT( i_2, hoisted_7_1 );
        end );
    hoisted_10_1 := LazyArray( deduped_70_1, function ( i_2 )
            return hoisted_9_1[hoisted_8_1[i_2]];
        end );
    deduped_67_1 := Filtered( [ 0 .. deduped_70_1 - 1 ], function ( x_2 )
            return hoisted_10_1[x_2] = hoisted_12_1[x_2];
        end );
    deduped_65_1 := Length( deduped_68_1 );
    deduped_64_1 := Length( deduped_67_1 );
    deduped_63_1 := deduped_65_1 * deduped_74_1;
    hoisted_32_1 := deduped_65_1;
    hoisted_36_1 := LazyArray( deduped_63_1, function ( i_2 )
            return REM_INT( QUO_INT( i_2, hoisted_32_1 ), hoisted_23_1 );
        end );
    hoisted_31_1 := LazyStandardInterval( deduped_74_1 );
    hoisted_37_1 := LazyArray( deduped_63_1, function ( i_2 )
            return hoisted_31_1[hoisted_36_1[i_2]];
        end );
    hoisted_27_1 := LazyArrayFromList( deduped_68_1 );
    hoisted_29_1 := LazyArray( deduped_65_1, function ( i_2 )
            return hoisted_24_1[hoisted_27_1[i_2]];
        end );
    hoisted_28_1 := LazyStandardInterval( deduped_65_1 );
    hoisted_30_1 := LazyArray( deduped_65_1, function ( i_2 )
            return hoisted_29_1[hoisted_28_1[i_2]];
        end );
    hoisted_34_1 := LazyArray( deduped_65_1, function ( i_2 )
            return hoisted_31_1[hoisted_30_1[i_2]];
        end );
    hoisted_33_1 := LazyArray( deduped_63_1, function ( i_2 )
            return REM_INT( i_2, hoisted_32_1 );
        end );
    hoisted_35_1 := LazyArray( deduped_63_1, function ( i_2 )
            return hoisted_34_1[hoisted_33_1[i_2]];
        end );
    deduped_61_1 := Filtered( [ 0 .. deduped_63_1 - 1 ], function ( x_2 )
            return hoisted_35_1[x_2] = hoisted_37_1[x_2];
        end );
    deduped_60_1 := Length( deduped_61_1 );
    hoisted_50_1 := deduped_72_1;
    hoisted_54_1 := LazyArray( deduped_72_1, function ( i_2 )
            return REM_INT( QUO_INT( i_2, hoisted_50_1 ), 1 );
        end );
    hoisted_1_1 := LazyStandardInterval( 1 );
    hoisted_2_1 := LazyArray( 1, function ( x_2 )
            if x_2 in hoisted_1_1 then
                return 1;
            else
                return 0;
            fi;
            return;
        end );
    hoisted_55_1 := LazyArray( deduped_72_1, function ( i_2 )
            return hoisted_2_1[hoisted_54_1[i_2]];
        end );
    hoisted_5_1 := LazyArray( 4, function ( i_2 )
            return REM_INT( i_2, 2 );
        end );
    hoisted_3_1 := LazyArray( 1, function ( i_2 )
            local deduped_1_2;
            deduped_1_2 := hoisted_2_1[i_2];
            return deduped_1_2 + deduped_1_2 * 2;
        end );
    hoisted_4_1 := LazyArray( 4, function ( x_2 )
            if x_2 in hoisted_3_1 then
                return 1;
            else
                return 0;
            fi;
            return;
        end );
    hoisted_6_1 := LazyArrayFromList( Filtered( [ 0, 1, 2, 3 ], function ( x_2 )
              return hoisted_4_1[x_2] = hoisted_5_1[x_2];
          end ) );
    hoisted_49_1 := LazyArray( 4, function ( x_2 )
            if x_2 in hoisted_6_1 then
                return 1;
            else
                return 0;
            fi;
            return;
        end );
    hoisted_38_1 := LazyArray( deduped_65_1, function ( i_2 )
            return hoisted_21_1[hoisted_27_1[i_2]];
        end );
    hoisted_39_1 := LazyArray( deduped_65_1, function ( i_2 )
            return hoisted_38_1[hoisted_28_1[i_2]];
        end );
    hoisted_17_1 := AsLazyArray( m_1 );
    hoisted_44_1 := LazyArray( deduped_65_1, function ( i_2 )
            return hoisted_17_1[hoisted_39_1[i_2]];
        end );
    hoisted_40_1 := LazyArrayFromList( deduped_61_1 );
    hoisted_42_1 := LazyArray( deduped_60_1, function ( i_2 )
            return hoisted_33_1[hoisted_40_1[i_2]];
        end );
    hoisted_41_1 := LazyStandardInterval( deduped_60_1 );
    hoisted_43_1 := LazyArray( deduped_60_1, function ( i_2 )
            return hoisted_42_1[hoisted_41_1[i_2]];
        end );
    hoisted_45_1 := LazyArray( deduped_60_1, function ( i_2 )
            return hoisted_44_1[hoisted_43_1[i_2]];
        end );
    hoisted_46_1 := LazyArrayFromList( SSortedList( LazyArray( deduped_60_1, function ( i_2 )
                return hoisted_45_1[i_2];
            end ) ) );
    hoisted_47_1 := LazyArray( deduped_72_1, function ( x_2 )
            if x_2 in hoisted_46_1 then
                return 1;
            else
                return 0;
            fi;
            return;
        end );
    hoisted_13_1 := LazyArrayFromList( deduped_67_1 );
    hoisted_15_1 := LazyArray( deduped_64_1, function ( i_2 )
            return hoisted_8_1[hoisted_13_1[i_2]];
        end );
    hoisted_14_1 := LazyStandardInterval( deduped_64_1 );
    hoisted_16_1 := LazyArray( deduped_64_1, function ( i_2 )
            return hoisted_15_1[hoisted_14_1[i_2]];
        end );
    hoisted_18_1 := LazyArray( deduped_64_1, function ( i_2 )
            return hoisted_17_1[hoisted_16_1[i_2]];
        end );
    hoisted_19_1 := LazyArrayFromList( SSortedList( LazyArray( deduped_64_1, function ( i_2 )
                return hoisted_18_1[i_2];
            end ) ) );
    hoisted_20_1 := LazyArray( deduped_72_1, function ( x_2 )
            if x_2 in hoisted_19_1 then
                return 1;
            else
                return 0;
            fi;
            return;
        end );
    hoisted_48_1 := LazyArray( deduped_72_1, function ( i_2 )
            return hoisted_20_1[i_2] + hoisted_47_1[i_2] * 2;
        end );
    hoisted_52_1 := LazyArray( deduped_72_1, function ( i_2 )
            return hoisted_49_1[hoisted_48_1[i_2]];
        end );
    hoisted_51_1 := LazyArray( deduped_72_1, function ( i_2 )
            return REM_INT( i_2, hoisted_50_1 );
        end );
    hoisted_53_1 := LazyArray( deduped_72_1, function ( i_2 )
            return hoisted_52_1[hoisted_51_1[i_2]];
        end );
    deduped_69_1 := Filtered( [ 0 .. deduped_72_1 - 1 ], function ( x_2 )
            return hoisted_53_1[x_2] = hoisted_55_1[x_2];
        end );
    deduped_66_1 := Length( deduped_69_1 );
    hoisted_56_1 := LazyArrayFromList( deduped_69_1 );
    hoisted_58_1 := LazyArray( deduped_66_1, function ( i_2 )
            return hoisted_51_1[hoisted_56_1[i_2]];
        end );
    hoisted_57_1 := LazyStandardInterval( deduped_66_1 );
    hoisted_59_1 := LazyArray( deduped_66_1, function ( i_2 )
            return hoisted_58_1[hoisted_57_1[i_2]];
        end );
    deduped_62_1 := SSortedList( LazyArray( deduped_66_1, function ( i_2 )
              return hoisted_51_1[hoisted_59_1[i_2]];
          end ) );
    return CreateCapCategoryMorphismWithAttributes( cat_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, Length( deduped_62_1 ) ), deduped_75_1, AsLazyArray, LazyArrayFromList( deduped_62_1 ) );
end
########
        
    , 5723 : IsPrecompiledDerivation := true );
    
    ##
    AddSomeInjectiveObject( cat,
        
########
function ( cat_1, arg2_1 )
    if Length( arg2_1 ) = 0 then
        return CreateCapCategoryObjectWithAttributes( cat_1, Length, 1 );
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
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, 2 );
end
########
        
    , 100 );
    
    ##
    AddTerminalObject( cat,
        
########
function ( cat_1 )
    return CreateCapCategoryObjectWithAttributes( cat_1, Length, 1 );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismFromCoequalizerWithGivenCoequalizer( cat,
        
########
function ( cat_1, Y_1, morphisms_1, T_1, tau_1, P_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, Range( tau_1 ), AsLazyArray, LazyArrayFromList( List( SKELETAL_FIN_SETS_ExplicitCoequalizer( Y_1, morphisms_1 ), function ( x_2 )
                return tau_1( x_2[1] );
            end ) ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismFromCoproductWithGivenCoproduct( cat,
        
########
function ( cat_1, objects_1, T_1, tau_1, P_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, T_1, AsLazyArray, Concatenation( List( tau_1, AsLazyArray ) ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismFromInitialObjectWithGivenInitialObject( cat,
        
########
function ( cat_1, T_1, P_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, P_1, T_1, AsLazyArray, LazyStandardInterval( 0 ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismIntoDirectProductWithGivenDirectProduct( cat,
        
########
function ( cat_1, objects_1, T_1, tau_1, P_1 )
    local hoisted_1_1, hoisted_2_1, hoisted_3_1, hoisted_4_1, deduped_5_1;
    deduped_5_1 := [ 0 .. Length( objects_1 ) - 1 ];
    hoisted_4_1 := deduped_5_1;
    hoisted_2_1 := List( objects_1, Length );
    hoisted_3_1 := List( deduped_5_1, function ( j_2 )
            return Product( hoisted_2_1{[ 1 .. j_2 ]} );
        end );
    hoisted_1_1 := List( tau_1, AsLazyArray );
    return CreateCapCategoryMorphismWithAttributes( cat_1, T_1, P_1, AsLazyArray, LazyArray( Length( T_1 ), function ( i_2 )
              return Sum( hoisted_4_1, function ( j_3 )
                      local deduped_1_3;
                      deduped_1_3 := 1 + j_3;
                      return hoisted_1_1[deduped_1_3][i_2] * hoisted_3_1[deduped_1_3];
                  end );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismIntoEqualizerWithGivenEqualizer( cat,
        
########
function ( cat_1, Y_1, morphisms_1, T_1, tau_1, P_1 )
    local hoisted_1_1, hoisted_2_1, hoisted_3_1, hoisted_4_1;
    hoisted_2_1 := [ 1 .. Length( morphisms_1 ) - 1 ];
    hoisted_1_1 := List( morphisms_1, AsLazyArray );
    hoisted_4_1 := Filtered( [ 0 .. Length( Y_1 ) - 1 ], function ( x_2 )
            return ForAll( hoisted_2_1, function ( j_3 )
                    return hoisted_1_1[j_3][x_2] = hoisted_1_1[j_3 + 1][x_2];
                end );
        end );
    hoisted_3_1 := AsLazyArray( tau_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, T_1, P_1, AsLazyArray, LazyArray( Length( T_1 ), function ( x_2 )
              return -1 + SafePosition( hoisted_4_1, hoisted_3_1[x_2] );
          end ) );
end
########
        
    , 100 );
    
    ##
    AddUniversalMorphismIntoTerminalObjectWithGivenTerminalObject( cat,
        
########
function ( cat_1, T_1, P_1 )
    return CreateCapCategoryMorphismWithAttributes( cat_1, T_1, P_1, AsLazyArray, LazyConstantArray( Length( T_1 ), 0 ) );
end
########
        
    , 100 );
    
    if IsBound( cat!.precompiled_functions_added ) then
        
        # COVERAGE_IGNORE_NEXT_LINE
        Error( "precompiled functions have already been added before" );
        
    fi;
    
    cat!.precompiled_functions_added := true;
    
end );

BindGlobal( "CategoryOfSkeletalFinSetsPrecompiled", function (  )
  local category_constructor, cat;
    
    category_constructor :=
        
        
        function (  )
    return CategoryOfSkeletalFinSets(  );
end;
        
        
    
    cat := category_constructor(  : FinalizeCategory := false, no_precompiled_code := true );
    
    ADD_FUNCTIONS_FOR_CategoryOfSkeletalFinSetsPrecompiled( cat );
    
    Finalize( cat );
    
    return cat;
    
end );
