module Credits exposing(..)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)

viewCredits : () -> Html Msg
viewCredits _ =  div [ class "column-credits"] [
    h2 [ class "margin-top margin-bottom-4" ] [ text "Credits" ]
    , p [ class "bold" ] [ text "Invented and Approved by" ]
    , p [ class "margin-bottom-4" ] [ text "Donato Simone Frigotto" ]
    , p [ class "bold margin-bottom-4" ] [ text "Designed and Realized by" ]
    , img [ src "uqido.png", class "uqido-logo" ] []
    , p [ class "bold margin-top-4" ] [ text "Special Thanks to" ]
    , p [ class "" ] [ 
         text "Fausto Panizzolo"
        , br [] []
        , text "Pier Mattia Avesani"
        , br [] []
        , text "Anna Germin"
        , br [] []
        , text "Giulia Mastrella"
        , br [] []
        , text "Tommaso Rosso"
        , br [] []
        , text "Camilla Stevani"
         ]

    , p [ class "bold margin-top-4" ] [ text "Illustrations by" ]
    , p [ class "credit-item" ] [ text "freepik" ]
    ]