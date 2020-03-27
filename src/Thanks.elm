module Thanks exposing (..)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick) 


viewThanks : () -> Html Msg
viewThanks model =  div [ class "column-space-between" ] [ 
    h2 [ class "margin-top margin-bottom-4" ] [ 
        text "Profondamente" ]
    , h2 [ class "tutorial_item margin-top-2" ] [
        text "Grazie!"
    ]
    , div[ class "img-container"] [ img [ src "Illustration_thanks.svg" ] [] ]
    , button [ onClick ToCredits, class "input_flat margin-bottom-4"] [ text "Credits" ]  
  ]