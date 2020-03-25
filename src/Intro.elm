module Intro exposing(viewIntro)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)

viewIntro : () -> Html Msg
viewIntro () =  div [ class "column" ] [ 
    div [ class "app_bar"] [ h1 [][ text "Benvenuto su Mindfulness" ] ]
    , p [ class "description" ] [ text "Sei uno dei nostri eroi. Grazie per quello che fai. Prenditi una pausa e dedica un po' di tempo a te stesso. Ti consigliamo di utilizzare Mindfulness una volta concluso il tuo turno di lavoro o a casa per rigenerarti." ]
    , p [ class "description"  ] [ text "La mindfulness è un metodo validato che permette di passare da uno stato di sofferenza a una percezione soggettiva di benessere, grazie alla conoscenza profonda degli stati mentali." ]
    , div [ class "image" ] [ img [ src "Illustration_welcome.svg" ] [] ]
    , button [ onClick ToStep1, class "input_primary" ] [ text "Iniziamo" ]
    , button [ onClick ToTerms, class "input_flat"] [ text "Leggi le avvertenze" ]
  ]