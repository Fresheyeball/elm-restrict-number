module Even exposing (Even, fromInt, toInt)

{-|
Because the constructor for `Even` is not exported, you can be
confident that if you are using a `Even`, then its `Even`.

@docs Even, fromInt, toInt
-}


{-| -}
type Even
    = Even Int


{-| -}
fromInt : Int -> Maybe Even
fromInt x =
    if
        x % 2 == 0
    then
        Just (Even x)
    else
        Nothing


{-| -}
toInt : Even -> Int
toInt (Even x) =
    x
