module NonZero (NonZero, fromNum, toNum) where

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


map : (number -> number) -> NonZero number -> Maybe (NonZero number)
map f =
    fromNum << f << toNum


add : NonZero number -> NonZero number -> NonZero number
add nz nz' =
    toNum nz + toNum nz' |> NonZero


subtract : NonZero number -> NonZero number -> Maybe (NonZero number)
subtract nz nz' =
    toNum nz - toNum nz' |> fromNum


divideI : NonZero Int -> NonZero Int -> NonZero Int
divideI nz nz' =
    toNum nz // toNum nz' |> NonZero


divideF : NonZero Float -> NonZero Float -> NonZero Float
divideF nz nz' =
    toNum nz / toNum nz' |> NonZero


multiply : NonZero number -> NonZero number -> NonZero number
multiply nz nz' =
    toNum nz * toNum nz' |> NonZero
