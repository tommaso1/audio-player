module Model exposing (..)

type PageState = SplashPage Int
                | Intro
                | Step1
                | Step2
                | Terms
                | AudioPage PlayerModel


type alias PlayerModel =
  { seconds: Int,
    playerState: PlayerState
  }

type PlayerState = Idle 
                | Play 
                | Stop
