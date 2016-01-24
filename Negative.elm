module Negative (Negative, fromNum, toNum) where

{-|
Negative numbers exclude zero.
Because the constructor for `Negative` is not exported, you can be
confident that if you are using a `Negative`, then its `Negative`.

@docs Negative, fromNum, toNum
-}


{-| -}
type Negative number
    = Negative number


{-| -}
fromNum : number -> Maybe (Negative number)
fromNum x =
    if
        x < 0
    then
        Just (Negative x)
    else
        Nothing


{-| -}
toNum : Negative number -> number
toNum (Negative x) =
    x


map : (number -> number) -> Negative number -> Maybe (Negative number)
map f =
    fromNum << f << toNum
