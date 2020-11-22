module Content exposing (..)


top : { title : String, content : String }
top =
    { title = "My Portfolio"
    , content = "lorem ipsum dolor sit amet"
    }


about : { title : String, content : String }
about =
    { title = "About Me"
    , content = "This is me.<br /><br />Chef, turned food developer, turned graphic designer. <br /><br />Ever since I can remember, art has always played a huge part in my life - spending hours drawing in my room, visiting art galleries and exhibitions, as well as finishing one of Lithuania’s most prestigious art schools. <br /><br />When my career took me on a route working with food, I embraced it as a creative form of expression and truly enjoyed every moment of it.<br /><br />However, my passion for art, and especially graphic design, has never left me. And so here I am today - with a strong determination to learn and face challenges on the route to being the best designer that I can be.<br />"
    }


contact : { title : String, content : String }
contact =
    { title = "Contact Me"
    , content = "I am happy to hear about possible work orders or potential collaborations. If you would like to see my professional CV, do not hesitate to ask. You can drop me a line on:<br /><br /><span class=\"email-link\"><a href=\"mailto:hello@viktorija.graphics\">hello@viktorija.graphics</a></span><br /><br />You are also welcome to contact me via my social media accounts."
    }


type alias Project =
    { name : String
    , id : String
    , categories : List String
    , display : String
    , description : String
    , facts :
        List
            { name : String
            , value : String
            }
    , content : List { graphic : String }
    }


projects : List Project
projects =
    [ { name = "Terra Venture"
      , id = "terraventure"
      , categories = [ "Branding", "UX/UI", "Graphic Design", "All" ]
      , display = "/img/first.jpg"
      , description = "<strong>Lorem</strong> ipsum dolor sit amet consectetur, adipisicing elit. Totam consectetur atque unde at numquamaccusantium deleniti nihil <i>error reprehenderit expedita</i> eligendi aliquid dicta quia distinctio, esse culpa minus. <br /> <br /> Cumque, totam. Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita aut in nulla aliquid adipisci corrupti quis fuga ducimus rem aspernatur <a href=\"#\">esse mollitia reprehenderit</a> consequatur minima illum placeat, id libero atque? <br /> <br /> Lorem ipsum dolor, sit amet consectetur adipisicing elit. Atque iusto odit fugiat rem nihil praesentium ullam magnam nemo, debitis, quibusdam laboriosam sunt optio, quod dignissimos repellendus vitae voluptatum eligendi voluptates?"
      , facts =
            [ { name = "Duration"
              , value = "1 week"
              }
            , { name = "Date"
              , value = "YYYY-MM-DD"
              }
            , { name = "Tools"
              , value = "Free-hand, Sketch, Photoshop"
              }
            ]
      , content =
            [ { graphic = "/img/first.jpg"
              }
            , { graphic = "/img/graphic_profile_light.jpg"
              }
            , { graphic = "/img/graphic_profile_dark.jpg"
              }
            , { graphic = "/img/mockup_2.jpg"
              }
            , { graphic = "/img/terraventure/movie2.mp4"
              }
            ]
      }

      ,{ name = "Esca"
      , id = "esca"
      , categories = [ "Branding", "UX/UI", "Graphic Design", "All" ]
      , display = "/img/esca/display.png"
      , description = "The brief for this project was to create a branding and an e-commerce website for a company selling premium food products"
      , facts =
            [  { name = "Date:"
              , value = "October 2020"
              }
            , { name = "Tools:"
              , value = "Photoshop, XD, Illustrator, Rotato"
              }
              , { name = "Try:"
              , value = "<a href='https://xd.adobe.com/view/037c0fc6-01c4-41d5-a0d8-a77733748a4b-562f/'>Interactive Prototype</a>"
              }
            ]
      , content =
            [ { graphic = "/img/esca/logo.mp4"
              }
              
              ,{ graphic = "/img/esca/page2.jpg"
              }
              ,{ graphic = "/img/esca/micro.mp4"
              }
              ,{ graphic = "/img/esca/ui_movie.mp4"
              }
            , { graphic = "/img/esca/page3.jpg"
              }
            ]
      }
              ,{ name = "It's fika time"
      , id = "fika"
      , categories = [  "Graphic Design", "All" ]
      , display = "/img/fikatime/display.jpg"
      , description = "This creative brief asked to produce any piece of design, adhering to only one constraint - the design had to be produced using only HTML and CSS languages. I chose to create a set of graphical elements inspired by Swedish folk art. These elements can then be mixed and matched to produce various patters that can be applied to different everyday objects. "
      , facts =
            [  { name = "Date:"
              , value = "November 2020"
              }
            , { name = "Tools:"
              , value = "HTML, CSS, Photoshop (for muckups only)"
              }
              
            ]
      , content =
            [ { graphic = "/img/fikatime/image1.jpg"
              }
              
              ,{ graphic = "/img/fikatime/image2.jpg"
              }
              
            
            ]
      }
   

    --   { name = "Name of the project"
    --   , id = "name_of_url"
    --   , categories = [ "Add", "Some", "Categories" ]
    --   , display = "/img/image_to_use_on_grid.jpg"
    --   , description = "<strong>Text</strong> in info box. Can use HTML for markup."
    --   , facts =
    --         [ { name = "Duration"
    --           , value = "Around 5 days"
    --           }
    --         , { name = "Date"
    --           , value = "YYYY-MM-DD"
    --           }
    --         , { name = "Whatever"
    --           , value = "Whatever"
    --           }
    --         ]
    --   , content =
    --         [ { graphic = "/img/some_image.jpg"
    --           },
    --           { graphic = "https://www.youtube.com/embed/w7J4o4rtt68"
    --           }
    --         ]
    --   }
    ]
