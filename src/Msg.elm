module Msg exposing(Msg(..))
import Time

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
