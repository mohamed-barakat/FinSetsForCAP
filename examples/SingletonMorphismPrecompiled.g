LoadPackage( "FinSetsForCAP" );

SM :=
function ( cat_1, a_1 )
    local hoisted_2_1, hoisted_3_1, deduped_6_1, deduped_7_1, deduped_8_1;
    deduped_8_1 := Length( a_1 );
    deduped_7_1 := BigInt( 2 );
    deduped_6_1 := [ 0 .. deduped_8_1 - 1 ];
    hoisted_3_1 := BigInt( 1 );
    hoisted_2_1 := List( deduped_6_1, function ( i_2 )
            return i_2 + deduped_8_1 * i_2;
        end );
    return CreateCapCategoryMorphismWithAttributes( cat_1, a_1, CreateCapCategoryObjectWithAttributes( cat_1, Length, deduped_7_1 ^ deduped_8_1 ), AsFunc,
       function ( i_2 )
            return Sum( List( deduped_6_1, function ( k_3 )
                      return IdFunc( function (  )
                                  if (i_2 + deduped_8_1 * k_3 in hoisted_2_1) then
                                      return hoisted_3_1;
                                  else
                                      return BigInt( 0 );
                                  fi;
                                  return;
                              end )(  ) * deduped_7_1 ^ k_3;
                  end ) );
        end );
end;
