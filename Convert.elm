module Convert exposing (..)

{-|
There are some assumptions that can be made about these types.

Odds can be Even and Even can be Odd if we add or remove 1
@docs addOneEven, addOneOdd, subtraceOneEven, subtraceOneOdd

Natural numbers are always Whole, Positive, and not Zero
@docs naturalToWhole, naturalToPositive, naturalToNonZero

Whole numbers are always Positive
@docs wholeToPositive

Prime numbers are always Positive, Whole, Natural and not Zero
@docs primeToWhole, primeToPositive, primeToNatural, primeToNonZero

Positive, Negative and Odd numbers are never Zero
@docs positiveToNonZero, negativeToNonZero, oddToNonZero

Positive and Negative numbers are the negation of each other
@docs positiveToNegativeInt, positiveToNegativeFloat, negativeToPositiveInt, negativeToPositiveFloat
-}

import Even exposing (..)
import Odd exposing (..)
import Natural exposing (..)
import Whole exposing (..)
import Positive exposing (..)
import Prime exposing (..)
import Negative exposing (..)
import NonZero exposing (..)


{-| -}
addOneEven : Even -> Odd
addOneEven x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Even") <| Odd.fromInt <| Even.toInt x + 1


{-| -}
addOneOdd : Odd -> Even
addOneOdd x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Odd") <| Even.fromInt <| Odd.toInt x + 1


{-| -}
subtraceOneEven : Even -> Odd
subtraceOneEven x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Even") <| Odd.fromInt <| Even.toInt x - 1


{-| -}
subtraceOneOdd : Odd -> Even
subtraceOneOdd x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Odd") <| Even.fromInt <| Odd.toInt x - 1


{-| -}
naturalToWhole : Natural -> Whole
naturalToWhole x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Natural") <| Whole.fromInt <| Natural.toInt x


{-| -}
naturalToPositive : Natural -> Positive Int
naturalToPositive x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Natural") <| Positive.fromInt <| Natural.toInt x


{-| -}
naturalToNonZero : Natural -> NonZero Int
naturalToNonZero x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Natural") <| NonZero.fromNum <| Natural.toInt x


{-| -}
wholeToPositive : Whole -> Positive Int
wholeToPositive x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Whole") <| Positive.fromInt <| Whole.toInt x


{-| -}
primeToPositive : Prime -> Positive Int
primeToPositive x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Prime") <| Positive.fromInt <| Prime.toInt x


{-| -}
primeToNatural : Prime -> Natural
primeToNatural x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Prime") <| Natural.fromInt <| Prime.toInt x


{-| -}
primeToWhole : Prime -> Whole
primeToWhole x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Prime") <| Whole.fromInt <| Prime.toInt x


{-| -}
primeToNonZero : Prime -> NonZero Int
primeToNonZero x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Prime") <| NonZero.fromNum <| Prime.toInt x


{-| -}
positiveToNonZero : Positive number -> NonZero number
positiveToNonZero x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Positive") <| NonZero.fromNum <| Positive.toNum x


{-| -}
negativeToNonZero : Negative number -> NonZero number
negativeToNonZero x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Negative") <| NonZero.fromNum <| Negative.toNum x


{-| -}
oddToNonZero : Odd -> NonZero Int
oddToNonZero x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Odd") <| NonZero.fromNum <| Odd.toInt x


{-| -}
negativeToPositiveInt : Negative Int -> Positive Int
negativeToPositiveInt x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Negative") <| Positive.fromInt <| negate <| Negative.toNum x


{-| -}
negativeToPositiveFloat : Negative Float -> Positive Float
negativeToPositiveFloat x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Negative") <| Positive.fromFloat <| negate <| Negative.toNum x


{-| -}
positiveToNegativeInt : Positive Int -> Negative Int
positiveToNegativeInt x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Positive") <| Negative.fromInt <| negate <| Positive.toNum x


{-| -}
positiveToNegativeFloat : Positive Float -> Negative Float
positiveToNegativeFloat x =
    Maybe.withDefault (Debug.crash "You managed to get a bad Positive") <| Negative.fromFloat <| negate <| Positive.toNum x
