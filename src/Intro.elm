module Intro exposing(viewIntro)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)

viewIntro : () -> Html Msg
viewIntro () =  div [ class "column-space-between" ] [ 
    div [ class "column" ] [ div [ class "app_bar"] [ h1 [][ text "Benvenuto su Profondamente" ] ]
    , p [ class "description" ] [ text "Sei uno dei nostri eroi. Grazie per quello che fai. Prenditi una pausa e dedica un po' di tempo a te stesso. Ti consigliamo di utilizzare Profondamente una volta concluso il tuo turno di lavoro o a casa per rigenerarti." ]
    , p [ class "description"  ] [ text "Questa app si basa su un metodo validato che permette di passare da uno stato di tensione e stanchezza a una percezione soggettiva di benessere, grazie alla conoscenza profonda degli stati mentali." ]
    ]
    , div [class "img-container"] [ img [ src "Illustration_welcome.svg" ] [] ]
    , div [ class "column" ] [
        button [ onClick ToStep1, class "input_primary" ] [ text "Iniziamo" ]
        , button [ onClick ToTerms, class "input_flat"] [ text "Leggi le avvertenze" ]
    ]
  ]