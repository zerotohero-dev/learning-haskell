roots :: (Float, Float, Float) -> (Float, Float)
roots (a, b, c)
    | a == 0    = error "not quadratic"
    | disc < 0  = error "complex roots"
    | otherwise = ( (-b-r)/e, (-b+r)/e )
    where {disc = b*b - 4*a*c; r = sqrt disc; e = 2*a}

roots2 :: (Float, Float, Float) -> (Float, Float)
roots2 (a, b, c)
    | a == 0    = error "not quadratic"
    | disc < 0  = error "complex roots"
    | otherwise = ( (-b-r)/e, (-b+r)/e )
    where disc = b*b - 4*a*c
          r = sqrt disc
          e = 2*a
