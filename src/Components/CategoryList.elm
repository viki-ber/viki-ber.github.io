module Components.CategoryList exposing (..)

import Content
import Html exposing (Html, div, h1, sup, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import List.Extra


listCategory : String -> (String -> msg) -> String -> Html msg
listCategory selection toMsg project =
    div
        [ class "left-menu-item"
        , onClick (toMsg project)
        , if selection == project then
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


listCategories : String -> (String -> msg) -> List (Html msg)
listCategories selection toMsg =
    List.map (listCategory selection toMsg) (List.sort mergeCategories)


mergeCategories : List String
mergeCategories =
    List.map (\project -> project.categories) Content.projects
        |> (\x -> List.concat x)
        |> List.Extra.unique
