module Components.Imagegrid exposing (..)

import Content exposing (Project, projects)
import Html exposing (Attribute, Html, a, div, img, text)
import Html.Attributes exposing (class, href, src)
import List.Extra
import Spa.Generated.Route as Route


displayProjects : List Project -> List (Html msg)
displayProjects projects =
    List.concat (groupProjects projects)


groupProjects : List Project -> List (List (Html msg))
groupProjects projects =
    List.map calculateGrid (List.Extra.greedyGroupsOfWithStep 2 2 projects)


calculateGrid : List Project -> List (Html msg)
calculateGrid projects =
    case List.length projects of
        0 ->
            []

        1 ->
            displayGrid [ class "column-one" ] projects

        2 ->
            displayGrid [ class "column-two", class "column-two-fixed-height" ] projects

        _ ->
            displayGrid [ class "column-three", class "column-two-fixed-height" ] projects


displayGrid : List (Attribute msg) -> List Project -> List (Html msg)
displayGrid style projects =
    [ div
        [ class "row" ]
        (List.map (\y -> displayProject y style) projects)
    ]


displayProject : Project -> List (Attribute msg) -> Html msg
displayProject project style =
    div
        ([ class "project" ] ++ style)
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
