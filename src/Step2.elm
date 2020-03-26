module Step2 exposing(..)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)


viewStep2 : () -> Html Msg
viewStep2 model =  div [ class "column-space-between" ] [ 
    h2 [ class "tutorial_item margin-top-2" ] [ 
        text "Trova un luogo "
        , br [][]
        , text "tranquillo."
        , br [][]
        , text "Se possibile, indossa" 
        , br [][]
        , text "delle cuffie auricolari."
    ]
    , div[ class "img-container"] [ img [ src "Illustration_sound.svg" ] [] ]
    , button [ onClick ToStep3, class "input_flat margin-bottom-4"] [ text "Tocca per continuare" ]  
  ]