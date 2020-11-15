module Pages.Top exposing (Model, Msg, Params, page)

import Browser.Navigation
import Content exposing (Project, projects)
import Dict exposing (Dict, merge)
import Html exposing (..)
import Html.Attributes exposing (class, href, src, style, value)
import Html.Events exposing (onClick)
import List.Extra exposing (..)
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
    { selection = parseQueryString (Dict.get "filter" query) }


page : Page Params Model Msg
page =
    Page.sandbox
        { init = init
        , update = update
        , view = view
        }



-- VIEW


displayProject : Project -> Html msg
displayProject project =
    div []
        [ a [ class "link", href (Route.toString (Route.Projects__Id_String { id = project.id })) ]
            [ img [ src project.display ] [] ]
        ]


displayGrid : List (Attribute msg) -> List (List Project) -> List (Html msg)
displayGrid style projects =
    List.map
        (\x ->
            div style
                (List.map (\y -> displayProject y) x)
        )
        projects


displayTwoColumn : Bool -> List (Attribute msg)
displayTwoColumn isTopLevel =
    case isTopLevel of
        False ->
            [ class "column-two" ]

        True ->
            [ class "column-two", class "column-two-fixed-height" ]


calculateGrid : List (List Project) -> Bool -> List (Html msg)
calculateGrid projects isToplevel =
    case List.length projects of
        0 ->
            []

        1 ->
            displayGrid [ class "column-one" ] projects

        2 ->
            displayGrid (displayTwoColumn isToplevel) projects

        _ ->
            displayGrid [ class "column-three" ] projects


displayProjects : List Project -> List (Html msg)
displayProjects projects =
    List.concat (groupProjects projects)


calcRows : List Project -> Int
calcRows projects =
    floor (toFloat (List.length Content.projects) / 3)


filterProjects : Model -> List Project
filterProjects model =
    List.filter (\x -> List.member model.selection x.categories) Content.projects


parseQueryString : Maybe String -> String
parseQueryString qs =
    case qs of
        Nothing ->
            "All"

        Just "" ->
            "All"

        Just query ->
            query


groupProjects : List Project -> List (List (Html msg))
groupProjects projects =
    case List.length projects of
        0 ->
            [ [] ]

        1 ->
            [ calculateGrid (List.Extra.groupsOfVarying [ 1 ] projects) False ]

        2 ->
            [ calculateGrid (List.Extra.groupsOfVarying [ 1, 1 ] projects) False ]

        3 ->
            [ calculateGrid (List.Extra.groupsOfVarying [ 1, 1 ] (List.take 2 projects)) True
            , calculateGrid (List.Extra.groupsOfVarying [ 1 ] (List.drop 2 projects)) False
            ]

        4 ->
            [ calculateGrid (List.Extra.groupsOfVarying [ 2, 2 ] projects) False ]

        5 ->
            [ calculateGrid (List.Extra.groupsOfVarying [ 1, 1 ] (List.take 2 projects)) True
            , calculateGrid (List.Extra.groupsOfVarying [ 1, 1, 1 ] (List.drop 2 projects)) False
            ]

        6 ->
            [ calculateGrid (List.Extra.groupsOfVarying [ 1, 1 ] (List.take 2 projects)) True
            , calculateGrid (List.Extra.groupsOfVarying [ 2, 2 ] (List.drop 2 projects)) False
            ]

        _ ->
            [ calculateGrid (List.Extra.groupsOfVarying [ 1, 1 ] (List.take 2 projects)) True
            , calculateGrid (List.Extra.groupsOfVarying [ calcRows projects, calcRows projects, calcRows projects ] (List.drop 2 projects)) False
            ]


listCategory : Model -> String -> Html Msg
listCategory model project =
    div
        [ class "left-menu-item"
        , onClick (Selection project)
        , if model.selection == project then
            class "left-menu-item-selected"

          else
            class ""
        ]
        [ text project
        , sup []
            [ text
                ("("
                    ++ String.fromInt
                        (List.Extra.count ((==) project)
                            (List.map (\x -> x.categories) Content.projects
                                |> (\x -> List.concat x)
                            )
                        )
                    ++ ")"
                )
            ]
        ]


listCategories : Model -> List (Html Msg)
listCategories model =
    List.map (listCategory model) (List.sort mergeCategories)


mergeCategories : List String
mergeCategories =
    List.map (\project -> project.categories) Content.projects
        |> (\x -> List.concat x)
        |> List.Extra.unique


displayCategoryHeader : Model -> Html Msg
displayCategoryHeader model =
    if not (model.selection == "All") then
        div [ class "project-header", class "adjust-for-grid-left", class "adjust-for-grid-right" ]
            [ h1 [] [ text model.selection ]
            ]

    else
        Html.span [] []


view : Model -> Document Msg
view model =
    { title = Content.top.title
    , body =
        [ div [ class "grid-row", class "grid-top-margin" ]
            [ div [ class "grid-left-column" ]
                [ div [ class "left-container-menu" ] (listCategories model)
                ]
            , div [ class "grid-right-column" ]
                [ div [ class "main-body" ]
                    [ displayCategoryHeader model
                    , div [ class "row" ]
                        (displayProjects (filterProjects model))
                    ]
                ]
            ]
        ]
    }
