module Msg exposing(Msg(..))
import Time

-- UPDATE

type Msg = Tick Time.Posix
         | PlayAudio
         | PauseAudio
         | ToIntro
         | ToStep1
         | ToStep2
         | ToTerms
         | ToAudioPage 
