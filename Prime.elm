module Prime exposing (Prime, fromInt, toInt)

{-|
Prime numbers are divisble by themselves and 1.
Because the constructor for `Prime` is not exported, you can be
confident that if you are using a `Prime`, then its `Prime`.

@docs Prime, fromInt, toInt
-}


{-| -}
type Prime
    = Prime Int


{-| -}
fromInt : Int -> Maybe Prime
fromInt x =
    if isPrime x then
        Just (Prime x)
    else
        Nothing


{-| -}
toInt : Prime -> Int
toInt (Prime x) =
    x


isPrime : Int -> Bool
isPrime x =
    if x == 2 || x == 3 then
        True
    else if x < 2 || x % 2 == 0 then
        False
    else if x < 9 then
        True
    else if x % 3 == 0 then
        False
    else
        let
            f n z =
                if n == z then
                    True
                else if n % z == 0 then
                    False
                else if z < n then
                    f n (z + 1)
                else
                    False
        in
            f x 2
