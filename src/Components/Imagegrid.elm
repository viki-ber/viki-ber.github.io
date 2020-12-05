module Components.Imagegrid exposing (..)

import Content exposing (Project)
import Html exposing (Attribute, Html, a, div, img, text)
import Html.Attributes exposing (class, href, src)
import List.Extra
import Spa.Generated.Route as Route


displayProjects : List Project -> List (Html msg)
displayProjects projects =
    List.concat (groupProjects projects)


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


calcRows : List Project -> Int
calcRows projects =
    floor (toFloat (List.length Content.projects) / 3)


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


displayProject : Project -> Html msg
displayProject project =
    div [ class "project" ]
        [ a [ class "link", href (Route.toString (Route.Projects__Id_String { id = project.id })) ]
            [ img [ src project.display ] []
            , div [ class "project-infobox" ]
                [ div [ class "title" ] [ text project.name ]
                , div [ class "subtitle" ]
                    [ text
                        (List.filter (\x -> not (x == "All")) project.categories
                            |> List.intersperse " | "
                            |> List.foldl (++) ""
                        )
                    ]
                ]
            ]
        ]


filterProjects : String -> List Project
filterProjects selection =
    List.filter (\x -> List.member selection x.categories) Content.projects
