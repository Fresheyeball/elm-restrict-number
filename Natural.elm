module Natural exposing (Natural, fromInt, toInt)

{-|
Natural numbers are positive whole numbers excluding zero.
Because the constructor for `Natural` is not exported, you can be
confident that if you are using a `Natural`, then its `Natural`.

@docs Natural, fromInt, toInt
-}


{-| -}
type Natural
    = Natural Int


{-| -}
fromInt : Int -> Maybe Natural
fromInt x =
    if
        x > 0
    then
        Just (Natural x)
    else
        Nothing


{-| -}
toInt : Natural -> Int
toInt (Natural x) =
    x
