module Questionary exposing(..)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)
import Model exposing (PageState(..), AudioPageModel, PlayerState(..), Mood(..))

viewQuesitonary : Mood -> Html Msg
viewQuesitonary _ = text "questionary"