module Odd (Odd, fromInt, toInt) where

{-|
Because the constructor for `Odd` is not exported, you can be
confident that if you are using a `Odd`, then its `Odd`.

@docs Odd, fromInt, toInt
-}

import Types


{-| -}
type alias Odd =
    Types.Odd


{-| -}
fromInt : Int -> Maybe Odd
fromInt x =
    if
        x % 2 == 0
    then
        Nothing
    else
        Just (Types.Odd x)


{-| -}
toInt : Odd -> Int
toInt (Types.Odd x) =
    x


{-| -}
map : (Int -> Int) -> Odd -> Maybe Odd
map f =
    fromInt << f << toInt


add : Odd -> Odd -> Types.Even
add o o' =
    toInt o + toInt o' |> Types.Even


multiply : Odd -> Odd -> Odd
multiply o o' =
    toInt o * toInt o' |> Types.Odd


subtract : Odd -> Odd -> Types.Even
subtract o o' =
    toInt o - toInt o' |> Types.Even


divide : Odd -> Odd -> Odd
divide o o' =
    toInt o // toInt o' |> Types.Odd
