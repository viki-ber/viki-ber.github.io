module Components.Header exposing (view)

import Components.Grid
import Html exposing (..)
import Html.Attributes exposing (class, href, id)
import Spa.Generated.Route as Route exposing (Route)


view : Html msg
view =
    Components.Grid.row
        [ div [ class "top-container", id "home" ]
            [ div [ class "menu-container" ]
                [ div [ class "menu-item" ] [ a [ href (Route.toString Route.Projects) ] [ text "Projects" ] ]
                , div [ class "menu-item" ] [ a [ href (Route.toString Route.About) ] [ text "About" ] ]
                , div [ class "menu-item" ] [ a [ href (Route.toString Route.Contact) ] [ text "Contact" ] ]
                ]
            ]
        ]
