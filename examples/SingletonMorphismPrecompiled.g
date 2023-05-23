LoadPackage( "FinSetsForCAP" );

SM :=
function ( cat_1, a_1 )
    local hoisted_1_1, hoisted_2_1, deduped_4_1, hoisted_6_1, deduped_9_1, deduped_10_1, deduped_11_1, deduped_12_1;
    deduped_12_1 := Length( a_1 );
    deduped_11_1 := BigInt( 2 );
    deduped_10_1 := deduped_12_1 ^ 2;
    deduped_9_1 := [ 0 .. deduped_12_1 - 1 ];
    deduped_4_1 := BigInt( 1 );
    hoisted_6_1 := List( deduped_9_1, function ( i_2 )
            return deduped_4_1 * i_2 + deduped_12_1 * i_2;
        end );
    hoisted_2_1 := deduped_12_1 * deduped_10_1 * GeometricSumDiff1( deduped_10_1, deduped_12_1 );
    hoisted_1_1 := GeometricSum( deduped_10_1, deduped_12_1 );
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, deduped_11_1 ^ deduped_12_1 ), AsFunc,
       function ( i_2 )
            local hoisted_1_2;
            hoisted_1_2 := i_2 * hoisted_1_1 + hoisted_2_1;
            return Sum( List( deduped_9_1, function ( k_3 )
                      return IdFunc( function (  )
                                  if (REM_INT( QUO_INT( hoisted_1_2, deduped_10_1 ^ k_3 ), deduped_10_1 ) in hoisted_6_1) then
                                      return deduped_4_1;
                                  else
                                      return BigInt( 0 );
                                  fi;
                                  return;
                              end )(  ) * deduped_11_1 ^ k_3;
                  end ) );
        end );
end;
