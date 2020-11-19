module Components.Header exposing (view)

import Components.Grid
import Html exposing (..)
import Html.Attributes exposing (class, href)
import Spa.Generated.Route as Route exposing (Route)


view : Html msg
view =
    Components.Grid.row
        [ div [ class "top-container" ]
            [ div [ class "top-menu-container", class "adjust-for-grid-left" ]
                [ div [ class "top-menu-item" ] [ a [ href (Route.toString Route.Top) ] [ text "Projects" ] ]
                , div [ class "top-menu-item" ] [ a [ href (Route.toString Route.About) ] [ text "About" ] ]
                , div [ class "top-menu-item" ] [ a [ href (Route.toString Route.Contact) ] [ text "Contact" ] ]
                ]
            , div [ class "logo-container", class "adjust-for-grid-right" ]
                [ a [ class "logo-linkedin", href "https://se.linkedin.com/in/viktorija-bernataviciute-72456785" ] []
                , a [ class "logo-instagram", href "https://www.instagram.com/viktorija.graphics/" ] []
                ]
            ]
        ]
