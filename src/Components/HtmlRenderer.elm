module Components.HtmlRenderer exposing (..)

import Html exposing (..)
import Html.Parser
import Html.Parser.Util


htmlRenderer : String -> Html msg
htmlRenderer raw =
    let
        innerHtml =
            case Html.Parser.run raw of
                Ok nodes ->
                    Html.Parser.Util.toVirtualDom nodes

                Err _ ->
                    [ text "ERROR RENDERING HTML" ]
    in
    span [] innerHtml
