module Update exposing (..)

import Time

type Msg = Player PlayerMsg 
         | Navigation NavigationMsg 




type PlayerMsg = Tick Time.Posix
  | PlayAudio
  | PauseAudio

type NavigationMsg = Tointro
                    | ToStep1
                    | ToStep2
                    | ToTerms
                    | ToAudioPage 