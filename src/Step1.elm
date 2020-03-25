module Step1 exposing(..)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)


viewStep1 : () -> Html Msg
viewStep1 model =  div [ class "column-space-between" ] [ 
    h2 [ class "tutorial_item margin-top-2" ] [ 
        text "Dai a te stesso il"
        , br [][]
        , text "permesso di dedicarti"
        , br [][]
        , text "20 minuti di tempo." 
    ]
    , img [ src "Illustration_time.svg" ] []
    , button [ onClick ToStep2, class "input_flat margin-bottom-4"] [ text "Tocca per continuare" ]  
  ]