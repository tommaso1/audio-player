module Credits exposing(..)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)

viewCredits : () -> Html Msg
viewCredits _ = text "credits"