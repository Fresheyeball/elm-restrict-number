module Positive exposing (Positive, fromNum, toNum)

{-|
Positive numbers exclude zero.
Because the constructor for `Positive` is not exported, you can be
confident that if you are using a `Positive`, then its `Positive`.

@docs Positive, fromNum, toNum
-}


{-| -}
type Positive number
    = Positive number


{-| -}
fromNum : number -> Maybe (Positive number)
fromNum x =
    if
        x > 0
    then
        Just (Positive x)
    else
        Nothing


{-| -}
toNum : Positive number -> number
toNum (Positive x) =
    x
