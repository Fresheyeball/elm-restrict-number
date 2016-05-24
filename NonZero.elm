module NonZero exposing (NonZero, fromNum, toNum)

{-|
NonZero numbers are numbers excluding zero.
Because the constructor for `NonZero` is not exported, you can be
confident that if you are using a `NonZero`, then its `NonZero`.

@docs NonZero, fromNum, toNum
-}


{-| -}
type NonZero number
    = NonZero number


{-| -}
fromNum : number -> Maybe (NonZero number)
fromNum x =
    if
        x == 0
    then
        Nothing
    else
        Just (NonZero x)


{-| -}
toNum : NonZero number -> number
toNum (NonZero x) =
    x
