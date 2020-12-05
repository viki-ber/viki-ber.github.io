module Pages.About exposing (Model, Msg, Params, page)

import Components.HtmlRenderer
import Content exposing (..)
import Html exposing (..)
import Html.Attributes exposing (class, href, value)
import Html.Parser
import Html.Parser.Util
import Spa.Document exposing (Document)
import Spa.Page as Page exposing (Page)
import Spa.Url exposing (Url)


type alias Params =
    ()


type alias Model =
    Url Params


type alias Msg =
    Never


page : Page Params Model Msg
page =
    Page.static
        { view = view
        }



-- VIEW


view : Url Params -> Document Msg
view { params } =
    { title = Content.about.title
    , body =
        [ div [ class "grid-row" ]
            [ div [ class "main-body" ]
                [ div [ class "about-container" ]
                    [ div [ class "about-box" ]
                        [ div [ class "about-photo" ] []
                        , div [ class "about-text" ]
                            [ Components.HtmlRenderer.htmlRenderer Content.about.content ]
                        ]
                    ]
                ]
            ]
        ]
    }
