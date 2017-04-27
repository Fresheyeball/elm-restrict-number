module Odd exposing (Odd, fromInt, toInt)

{-|
Because the constructor for `Odd` is not exported, you can be
confident that if you are using a `Odd`, then its `Odd`.

@docs Odd, fromInt, toInt
-}


{-| -}
type Odd
    = Odd Int


{-| -}
fromInt : Int -> Maybe Odd
fromInt x =
    if x % 2 == 0 then
        Nothing
    else
        Just (Odd x)


{-| -}
toInt : Odd -> Int
toInt (Odd x) =
    x
