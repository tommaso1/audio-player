module Terms exposing(viewTerms)

import Html exposing (..)
import Msg exposing (..)
import Msg exposing (Msg(..))
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)


viewTerms : () -> Html Msg
viewTerms () =  div [ class "column" ] [ 
      h2 [ class "margin-top" ][ text "Avvertenze" ] 
    , p [ class "description" ] [ text """Prima di cominciare, ti prego di leggere queste indicazioni.
Le tracce che potrai ascoltare, non sono da intendersi come alternativa ad un percorso medico o terapeutico, prescritto per un disturbo di qualsiasi genere, fisico o mentale. Sono invece da considerarsi come un supporto al cambiamento, alla crescita personale, e come strumento di facilitazione delle risposte fisiologiche e naturali del nostro sistema mente-corpo. """ ]
    , p [ class "description"  ] [ text """Queste tracce sono state elaborate sulla base delle conoscenze relative all’attivazione neuronale e corticale della
nostra unità psiche-soma, e per questa ragione hanno proprietà rilassanti e trasformative, intense ed efficaci.
Per questo devono essere usate in un luogo protetto e tranquillo, certamente non mentre stai guidando o stai usando macchinari pericolosi.
Se hai compreso e accetti queste avvertenze, allora siamo pronti ad iniziare.""" ]
    , button [ onClick ToStep1, class "input_primary" ] [ text "Iniziamo" ]
  ]