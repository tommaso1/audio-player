port module Main exposing (..)

import Html exposing (..)
import Browser
import Time
import AudioPage exposing (..)
import Model exposing (PageState(..), AudioPageModel, PlayerState(..))
import Msg exposing (Msg(..))
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import Intro exposing (..)
import Terms exposing (..)
import Step1 exposing (..)
import Step2 exposing (..)
import Step3 exposing (..)

port playNotification : Bool -> Cmd msg

-- MAIN


main =
  Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



-- INIT

init : () -> (PageState, Cmd Msg)
init _ =
  ( SplashPage 0
  , Cmd.none
  )



update : Msg -> PageState -> (PageState, Cmd Msg)
update msg model = case model of
    AudioPage m -> case (msg, m.playerState) of
          (Tick _, Play) -> (AudioPage { m | seconds = m.seconds + 1 }, Cmd.none)
          (Tick _, _) -> (model , Cmd.none)
          (PlayAudio, _) -> (AudioPage { m | playerState = Play }, playNotification True)
          (PauseAudio, _) -> (AudioPage { m | playerState = Stop }, playNotification False)
          (_, _) -> (model, Cmd.none)
    SplashPage 2 -> (Intro, Cmd.none)
    SplashPage p -> case msg of 
      Tick _ -> (SplashPage (1 + p), Cmd.none)
      _ -> (model, Cmd.none)
    _ -> case msg of
      ToIntro -> (Intro, Cmd.none)
      ToStep1 -> (Step1, Cmd.none)
      ToStep2 -> (Step2, Cmd.none)
      ToStep3 -> (Step3, Cmd.none)
      ToTerms -> (Terms, Cmd.none)
      ToAudioPage  -> (AudioPage { seconds = 0, playerState = Idle}, Cmd.none)
      _ -> (model, Cmd.none)


-- SUBSCRIPTIONS

subscriptions : PageState -> Sub Msg
subscriptions model =
  Time.every 1000 Tick


-- VIEW



view : PageState -> Html Msg
view model = case model of 
  AudioPage p -> viewAudioPage p
  SplashPage _ -> viewSplash()
  Intro -> viewIntro()
  Step1 -> viewStep1()
  Step2 -> viewStep2()
  Step3 -> viewStep3()
  Terms -> viewTerms()



viewSplash : () -> Html Msg
viewSplash () =  button [ onClick ToIntro, class "input"] [
        text "Splash page"
      ]

