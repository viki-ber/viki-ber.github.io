module Pages.Top exposing (Model, Msg, Params, page)

import Browser.Navigation
import Components.CategoryList exposing (listCategories)
import Components.Imagegrid exposing (displayProjects, filterProjects)
import Content exposing (Project, projects)
import Dict exposing (Dict, merge)
import Html exposing (..)
import Html.Attributes exposing (class)
import Spa.Document exposing (Document)
import Spa.Generated.Route as Route
import Spa.Page as Page exposing (Page)
import Spa.Url exposing (Url)
import Url


type alias Params =
    ()


type alias Model =
    { selection : String
    }


type alias Url params =
    { params : params
    , query : Dict String String
    , key : Browser.Navigation.Key
    , rawUrl : Url.Url
    }


type Msg
    = Selection String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Selection x ->
            { model | selection = x }


init : Url Params -> Model
init { params, query } =
    { selection = "All" }


page : Page Params Model Msg
page =
    Page.sandbox
        { init = init
        , update = update
        , view = view
        }



-- VIEW


view : Model -> Document Msg
view model =
    { title = Content.top.title
    , body =
        [ div [ class "grid-row", class "grid-top-margin" ]
            [ div [ class "main-body" ]
                [ div [ class "left-container-menu" ] (listCategories model.selection Selection)
                , div [ class "row" ]
                    (displayProjects (filterProjects model.selection))
                ]
            ]
        ]
    }
