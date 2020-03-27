module AudioPage exposing(viewAudioPage)

import Model exposing (PageState(..), AudioPageModel, PlayerState(..))
import Html exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)

-- AUDIO VIEW

viewAudioPage : AudioPageModel -> Html Msg
viewAudioPage model =
  let
    second = formatSeconds(modBy 60 model.seconds)
    minutes = formatSeconds(model.seconds // 60)
  in
  div [ class "column-space-between" ] [
    h2 [ class "margin-top margin-bottom-4" ] [ text "Profondamente" ]
    , div [ class "column" ] [
      h3 [ ] [ text "Rilassamento e Rigenerazione" ]
      , p [ class "margin-top-2" ] [ text "Durata sessione: 20 minuti" ]
    ]
    , div [ class "container" ] [
      div [ class "circle-container" ] [
        div [ class (classFromModel model) ] [
          h1 [] [ text (minutes ++ ":" ++ second) ]
        ]
      ]
    ]
    , button [ onClick
       (case model.playerState of 
        Idle -> PlayAudio
        Play -> PauseAudio
        Stop -> PlayAudio)
      , class "input margin-bottom-2"] [
        text (case model.playerState of 
          Idle -> "Play"
          Play -> "Pause"
          Stop -> "Play"
        )
      ]
    , button [ onClick ToQuestionary, class "input_flat margin-bottom-4"] [
        text "Credits"
      ]
  ]
  

classFromModel : AudioPageModel -> String
classFromModel model = case model.playerState of
       Idle -> "init"
       Stop -> "stop"
       Play -> "play"
        
formatSeconds : Int -> String
formatSeconds i = if i > 9 then String.fromInt i else "0" ++ String.fromInt i
