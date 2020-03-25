module Step3 exposing(..)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)


viewStep3 : () -> Html Msg
viewStep3 model =  div [ class "column-space-between" ] [ 
    h2 [ class "tutorial_item margin-top-2" ] [ 
        text "Mettiti comodo, trova"
        , br [][]
        , text "una posizione"
        , br [][]
        , text "confortevole seduto" 
        , br [][]
        , text "o steso" 
    ]
    , img [ src "Illustration_posture.svg" ] []
    , button [ onClick ToAudioPage, class "input_flat margin-bottom-4"] [ text "Iniziamo" ]]
