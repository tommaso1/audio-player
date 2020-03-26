module Questionary exposing(..)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src, href)
import Html.Events exposing (onClick)
import Model exposing (PageState(..), AudioPageModel, PlayerState(..), Mood(..))

viewQuesitonary : Mood -> Html Msg
viewQuesitonary m = div [ class "column-space-between" ] [
    h2 [ class "margin-top margin-bottom-4" ] [ text "Mindfulness" ]
    , div [ class "column" ] [
      h3 [ ] [ 
          text "La sessione è finita." 
          , br [] []
          , text "Come ti senti?"
            ]
      
    ]
    , div [ class "smile-container" ] [
            button [ onClick Happy, class "smile-button"] [ img [ src "smile_happy.svg" ] [] ]
            , button [ onClick Normal, class "smile-button"] [ img [ src "smile_neutral.svg" ] [] ]
            , button [ onClick Msg.Sad, class "smile-button"] [ img [ src "smile_sad.svg" ] [] ]
    ]
    , a [
        class "input_flat", href "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    ] [ text "Compila il quesitonario" ]
  ]