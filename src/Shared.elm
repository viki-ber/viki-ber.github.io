module Shared exposing
    ( Flags
    , Model
    , Msg
    , init
    , subscriptions
    , update
    , view
    )

import Browser.Navigation exposing (Key)
import Components.Header
import Html exposing (..)
import Html.Attributes exposing (class, href, src)
import Spa.Document exposing (Document)
import Spa.Generated.Route as Route exposing (Route)
import Url exposing (Url)



-- INIT


type alias Flags =
    ()


type alias Model =
    { url : Url
    , key : Key
    }


init : Flags -> Url -> Key -> ( Model, Cmd Msg )
init flags url key =
    ( Model url key
    , Cmd.none
    )



-- UPDATE


type Msg
    = ReplaceMe


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ReplaceMe ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


displayBody page =
    if page.title == "Main page" then
        [ div [ class "filler" ]
            [ div [ class "logo" ] []
            ]
        , div [ class "body-container" ]
            [ Components.Header.view
            , div [] page.body
            ]
        ]

    else
        [ div [ class "body-container" ]
            [ Components.Header.view
            , div [] page.body
            ]
        ]


view :
    { page : Document msg, toMsg : Msg -> msg }
    -> Model
    -> Document msg
view { page, toMsg } model =
    { title = page.title
    , body = displayBody page
    }
