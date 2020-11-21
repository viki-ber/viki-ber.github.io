module Pages.Projects.Id_String exposing (Model, Msg, Params, page)

import Array
import Components.HtmlRenderer
import Content exposing (..)
import Html exposing (..)
import Html.Attributes exposing (attribute, class, for, href, id, preload, property, src, style, type_, value, width)
import Json.Encode
import Spa.Document exposing (Document)
import Spa.Page as Page exposing (Page)
import Spa.Url exposing (Url)


type alias Params =
    { id : String
    }


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


notFound : Project
notFound =
    { categories = []
    , description = "Not found"
    , id = "not_found"
    , name = "NOT FOUND"
    , display = ""
    , content = []
    , facts = []
    }


factsContainer : { a | facts : List { b | name : String, value : String } } -> Html msg
factsContainer project =
    div [ class "project-details-facts-container" ]
        [ ul []
            (List.map
                (\x ->
                    li [ class "project-details-fact" ]
                        [ strong [] [ text x.name ]
                        , text (" " ++ x.value)
                        ]
                )
                project.facts
            )
        ]


renderMedia : String -> Html msg
renderMedia name =
    if String.contains ".mp4" name then
        video
            [ attribute "controls" "controls"
            , attribute "autoplay" "true"
            , attribute "loop" "true"
            , attribute "playsinline" "true"
            , property "muted" (Json.Encode.bool True)
            , preload "none"
            , style "width" "100%"
            , style "pointer-events" "none"
            ]
            [ source
                [ id "mp4"
                , src name
                , type_ "video/mp4"
                ]
                []
            ]

    else if String.contains "youtube.com" name then
        div [ class "youtube-container" ]
            [ iframe
                [ class "youtube-video"
                , src name
                , property "frameborder" (Json.Encode.string "0")
                , property "allowfullscreen" (Json.Encode.string "true")
                ]
                []
            ]

    else
        img [ src name, class "project-image" ] []


content : { a | content : List { b | graphic : String } } -> Html msg
content media =
    div []
        (List.map
            (\x ->
                renderMedia x.graphic
            )
            media.content
        )


presentProject : Project -> List (Html msg)
presentProject project =
    [ div [ class "project-header" ]
        [ h1 [] [ text project.name ]
        , label [ for "menu", class "extender" ] [ h1 [] [ text "+ Details" ] ]
        ]
    , input [ type_ "checkbox", id "menu" ] []
    , div [ class "project-details" ]
        [ div [ class "project-details-text" ]
            [ Components.HtmlRenderer.htmlRenderer project.description ]
        , factsContainer project
        ]
    , content project
    ]


getProject : String -> Project
getProject id =
    List.filter (\x -> x.id == id) Content.projects
        |> Array.fromList
        |> Array.get 0
        |> Maybe.withDefault notFound


view : Url Params -> Document Msg
view { params } =
    { title = (getProject params.id).name
    , body =
        [ div [ class "grid-row", class "grid-top-margin" ]
            [ div [ class "main-body" ]
                (presentProject
                    (getProject params.id)
                )
            ]
        ]
    }
