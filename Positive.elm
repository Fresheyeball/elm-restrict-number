module Positive exposing (Positive, fromInt, fromFloat, toNum)

{-|
Positive numbers exclude zero.
Because the constructor for `Positive` is not exported, you can be
confident that if you are using a `Positive`, then its `Positive`.

@docs Positive, fromInt, fromFloat, toNum
-}


{-| -}
type Positive number
    = Positive number


{-| -}
fromNum_ : comparable -> Maybe (Positive comparable)
fromNum_ x =
    if
        x > 0
    then
        Just (Positive x)
    else
        Nothing

{-| -}
fromInt : Int -> Maybe (Positive Int)
fromInt = fromNum_

{-| -}
fromFloat : Float -> Maybe (Positive Float)
fromFloat = fromNum_

{-| -}
toNum : Positive number -> number
toNum (Positive x) =
    x
