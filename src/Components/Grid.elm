module Components.Grid exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


row : List (Html msg) -> Html msg
row content =
    div [ class "grid-row" ] content


left : List (Html msg) -> Html msg
left content =
    div [ class "grid-left-column" ] content


right : List (Html msg) -> Html msg
right content =
    div [ class "grid-right-column" ] content
