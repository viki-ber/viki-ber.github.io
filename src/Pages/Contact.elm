module Pages.Contact exposing (Model, Msg, Params, page)

import Components.HtmlRenderer
import Content
import Html exposing (..)
import Html.Attributes exposing (class, href, value)
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
    { title = Content.contact.title
    , body =
        [ div [ class "grid-row" ]
            [ div [ class "main-body" ]
                [ div [ class "contact-box" ]
                    [ div [ class "contact-content" ]
                        [ div [ class "contact-text" ]
                            [ Components.HtmlRenderer.htmlRenderer Content.contact.content ]
                        , div
                            [ class "social-media" ]
                            [ div [ class "social-media-logo" ] [ a [ class "logo-linkedin", href "https://se.linkedin.com/in/viktorija-bernataviciute-72456785" ] [] ]
                            , div [ class "social-media-logo" ] [ a [ class "logo-instagram", href "https://www.instagram.com/viktorija.graphics/" ] [] ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    }
