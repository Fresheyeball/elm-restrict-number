module Negative exposing (Negative, fromInt, fromFloat, toNum)

{-|
Negative numbers exclude zero.
Because the constructor for `Negative` is not exported, you can be
confident that if you are using a `Negative`, then its `Negative`.

@docs Negative, fromInt, fromFloat, toNum
-}


{-| -}
type Negative number
    = Negative number


fromNum_ : comparable -> Maybe (Negative comparable)
fromNum_ x =
    if x < 0 then
        Just (Negative x)
    else
        Nothing


{-| -}
fromInt : Int -> Maybe (Negative Int)
fromInt =
    fromNum_


{-| -}
fromFloat : Float -> Maybe (Negative Float)
fromFloat =
    fromNum_


{-| -}
toNum : Negative number -> number
toNum (Negative x) =
    x
