module Model exposing (PageState(..), AudioPageModel, PlayerState(..), Mood(..))


-- MODEL
type PageState =  SplashPage Int
                | Intro
                | Step1
                | Step2
                | Step3
                | Terms
                | Thanks
                | Credits
                | Questionary Mood
                | AudioPage AudioPageModel


type alias AudioPageModel =
  { seconds: Int,
    playerState: PlayerState
  }

type PlayerState = Idle 
                | Play 
                | Stop

type Mood = Good | Neutral | Sad | None