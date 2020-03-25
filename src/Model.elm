module Model exposing (PageState(..), AudioPageModel, PlayerState(..))


-- MODEL
type PageState =  SplashPage Int
                | Intro
                | Step1
                | Step2
                | Step3
                | Terms
                | AudioPage AudioPageModel


type alias AudioPageModel =
  { seconds: Int,
    playerState: PlayerState
  }

type PlayerState = Idle 
                | Play 
                | Stop