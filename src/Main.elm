port module Main exposing (..)

import Html exposing (..)
import Browser
import Time
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)

port playNotification : Bool -> Cmd msg

-- MAIN


main =
  Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



-- MODEL


type alias Model =
  { seconds: Int,
    playerState: PlayerState
  }

init : () -> (Model, Cmd Msg)
init _ =
  ( { seconds = 0, playerState = Idle }
  , Cmd.none
  )



-- UPDATE


type Msg
  = Tick Time.Posix
  | PlayAudio
  | PauseAudio

type PlayerState = Idle | Play | Stop


update : Msg -> Model -> (Model, Cmd Msg)
update msg model = case (msg, model.playerState) of
          (Tick _, Play) -> ( { model | seconds = model.seconds + 1 }, Cmd.none)
          (Tick _, _) -> ( model , Cmd.none)
          (PlayAudio, _) -> ({ model | playerState = Play }, playNotification True)
          (PauseAudio, _) -> ({ model | playerState = Stop }, playNotification False)


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Time.every 1000 Tick



-- VIEW


view : Model -> Html Msg
view model =
  let
    second = formatSeconds(modBy 60 model.seconds)
    minutes = formatSeconds(model.seconds // 60)
  in
  div [ class "container" ] [
      div [ class "circle-container" ] [
        div [ class (classFromModel model) ] [
          h1 [] [ text (minutes ++ ":" ++ second) ]
        ]
      ]
      , button [ onClick
       (case model.playerState of 
        Idle -> PlayAudio
        Play -> PauseAudio
        Stop -> PlayAudio)
      , id "input"] [
        text (case model.playerState of 
          Idle -> "Play"
          Play -> "Pause"
          Stop -> "Play"
        )
      ]
  ]

classFromModel : Model -> String
classFromModel model = case model.playerState of
       Idle -> "init"
       Stop -> "stop"
       Play -> "play"
        
formatSeconds : Int -> String
formatSeconds i = if i > 9 then String.fromInt i else "0" ++ String.fromInt i
