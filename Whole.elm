module Whole exposing (Whole, fromInt, toInt)

{-|
Whole numbers are positive numbers including zero.
Because the constructor for `Whole` is not exported, you can be
confident that if you are using a `Whole`, then its `Whole`.

@docs Whole, fromInt, toInt
-}


{-| -}
type Whole
    = Whole Int


{-| -}
fromInt : Int -> Maybe Whole
fromInt x =
    if x >= 0 then
        Just (Whole x)
    else
        Nothing


{-| -}
toInt : Whole -> Int
toInt (Whole x) =
    x
