module Msg exposing(Msg(..))
import Time
import Http exposing (..)

-- UPDATE

type Msg = Tick Time.Posix
         | PlayAudio
         | PauseAudio
         | ToIntro
         | ToStep1
         | ToStep2
         | ToStep3
         | ToThanks
         | ToQuestionary
         | ToTerms
         | ToCredits
         | ToAudioPage 
         | Happy
         | Sad
         | Normal
         | GotText (Result Http.Error String)

