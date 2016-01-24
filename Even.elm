module Even (Even, fromInt, toInt) where

{-|
Because the constructor for `Even` is not exported, you can be
confident that if you are using a `Even`, then its `Even`.

@docs Even, fromInt, toInt
-}

import Types


{-| -}
type alias Even =
    Types.Even


{-| -}
fromInt : Int -> Maybe Even
fromInt x =
    if
        x % 2 == 0
    then
        Just (Types.Even x)
    else
        Nothing


{-| -}
toInt : Even -> Int
toInt (Types.Even x) =
    x


{-| -}
map : (Int -> Int) -> Even -> Maybe Even
map f =
    fromInt << f << toInt


add : Even -> Even -> Types.Odd
add o o' =
    toInt o + toInt o' |> Types.Odd


multiply : Even -> Even -> Even
multiply o o' =
    toInt o * toInt o' |> Types.Even


subtract : Even -> Even -> Types.Odd
subtract o o' =
    toInt o - toInt o' |> Types.Odd


divide : Even -> Even -> Even
divide o o' =
    toInt o // toInt o' |> Types.Even
