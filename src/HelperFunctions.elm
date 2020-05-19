module HelperFunctions exposing (..)

import Element exposing (..)
import MessagesAndModels exposing (..)


bkgAttributes : List (Attribute msg) -> Attribute msg
bkgAttributes attr =
    let
        attributes =
            List.append
                [ width fill
                , height fill
                ]
                attr
    in
    Element.behindContent <| Element.el attributes (text "")


speedIf : Bool -> a -> a -> a
speedIf condition result elseResult =
    if condition then
        result

    else
        elseResult


flip : OpenOrClosed -> OpenOrClosed
flip a =
    speedIf (a == Open) Closed Open
