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
    , p [ class "credit-item" ] [ text "Fausto Panizzolo" ]
    , p [ class "credit-item" ] [ text "Pier Mattia Avesani" ]
    , p [ class "credit-item" ] [ text "Anna Germin" ]
    , p [ class "credit-item" ] [ text "Giulia Mastrella" ]
    , p [ class "credit-item" ] [ text "Tommaso Rosso" ]
    , p [ class "credit-item" ] [ text "Camilla Stevani" ]
    , p [ class "bold margin-top-4" ] [ text "Illustrations by" ]
    , p [ class "credit-item" ] [ text "freepik" ]
    ]