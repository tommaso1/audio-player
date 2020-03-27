module Questionary exposing(..)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src, href)
import Html.Events exposing (onClick)
import Model exposing (PageState(..), AudioPageModel, PlayerState(..), Mood(..))

viewQuesitonary : Mood -> Html Msg
viewQuesitonary model = div [ class "column-intro" ] [
    h2 [ class "margin-top margin-bottom-4" ] [ text "Profondamente" ]
    , div [ class "column" ] [
      p [] [ text "La sessione è finita."]
          , p [][ text "Come valuti questa esperienza?"]
          , br [][]
          , br [][] 
            ]
    , div [ class "smile-container" ] [
            button [ onClick Happy, class "smile-button"] [ img [ src "smile_happy.svg" ] [] ]
            , button [ onClick Normal, class "smile-button"] [ img [ src "smile_neutral.svg" ] [] ]
            , button [ onClick Msg.Sad, class "smile-button"] [ img [ src "smile_sad.svg" ] [] ]
    ]
    -- , a [
    --     class "input_flat"
    --     -- , href ""
    -- ] [ text "Compila il quesitonario" ]

  ]