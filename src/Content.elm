module Content exposing (..)


top : { title : String, content : String }
top =
    { title = "My Portfolio"
    , content = "lorem ipsum dolor sit amet"
    }


about : { title : String, content : String }
about =
    { title = "About Me"
    , content = "Graphic designer and illustrator based in Gothenburg, Sweden. <br /><br /> Trained at Jönköping and Linneaus universities. <br /><br /> Previous experience in food product and brand development.<br /><br /> Favourite colours - yellow, blue and grey.<br /><br /> Dream collaboration - Stefan Sagmeister.<br /><br /> Dream brief - design an issue of Lucky Peach magazine.<br /><br />"
    }


contact : { title : String, content : String }
contact =
    { title = "Contact Me"
    , content = "I am happy to hear about possible work orders or potential collaborations. If you would like to see my professional CV, do not hesitate to ask. You can drop me a line on:<br /><br /><span class=\"email-link\"><a href=\"mailto:viktorija.graphics@outlook.com\">viktorija.graphics@outlook.com</a></span><br /><br />You are also welcome to contact me via my social media accounts."
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
      , description = "<strong></strong> This brief asked to create a branding and UI design for a movie streaming service specialising in outdoor adventure movies. Main inspiration for the design came from modern outdoor, travel and adventure magazines."
      , facts =
            [  { name = "Date"
              , value = "October 2020"
              }
            , { name = "Tools"
              , value = "Photoshop, Illustrator, XD"
              }
              , { name = "Try:"
              , value = "<a href='https://xd.adobe.com/view/7e240d0c-6c57-4a8c-9c84-46f290a352e8-2b77/'>Interactive Prototype</a>"
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
              , value = "Photoshop, Illustrator, XD"
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
              , value = "HTML, CSS"
              }
              
            ]
      , content =
            [ { graphic = "/img/fikatime/image1.jpg"
              }
              
              ,{ graphic = "/img/fikatime/image2.jpg"
              }
              
            ]
      }
       ,{ name = "Colour Grabber"
      , id = "colourgrabber"
      , categories = [  "Graphic Design", "All", "UX/UI" ]
      , display = "/img/colourgrabber/display.png"
      , description = "In this brief I had to create a device specific graphic user interface and its assets. I chose to create an interface for a colour capturing application and used neumorphic style as inspiration for a clean and minimatistic look, where the captured colour is the main focus. "
      , facts =
            [  { name = "Date:"
              , value = "November 2020"
              }
            , { name = "Tools:"
              , value = "XD"
              }
              ,{ name = "Try:"
              , value = "<a href='https://xd.adobe.com/view/0dbb5502-96cc-444c-b7c8-53267224f761-58e8/'>Interactive Prototype</a>"
              }
              
            ]
      , content =
            [ { graphic = "/img/colourgrabber/movie1.mp4"
              }
              
              ,{ graphic = "/img/colourgrabber/image1.jpg"
              }
              ,{ graphic = "/img/colourgrabber/movie2.mp4"
              }
              
            ]
       }
       ,{ name = "OFFcenter magazine"
      , id = "offcenter"
      , categories = [ "Graphic Design", "All", "Print" ]
      , display = "/img/offcenter/display2.jpg"
      , description = "The brief for this university project was to design and print a magazine about design, featuring at least a couple of Adobe tutorials and an article about some sort of printing technique. The rest was up to us. We chose to produce a magazine celebrating different and non-main-stream design and designers. For the project we produced all the graphical elements, wrote the content and even designed our own fully functional typeface for the title and headings. Finally we got the magazine printed at a proffessional printhouse with a 50 copy print run."
      , facts =
            [  { name = "Date:"
              , value = "May 2020"
              }
            , { name = "Tools:"
              , value = "Photoshop, Illustrator, Indesign"
              }
              , { name = "Collaboration:"
              , value = "Maria Arango-Kure, Linda Hammarstrand"
              }
              , { name = "Try:"
              , value = "<a href='https://drive.google.com/file/d/1ktjONkSPHLeHc-1Go4Igoikuo26Evu-F/view?usp=sharing'>Read the full magazine here</a>"
              }
            ]
      , content =
            [ { graphic = "/img/offcenter/main.jpg"
              }
              
            ]
      }
      ,{ name = "The Hop Brothers Brewery"
      , id = "hopbrothers"
      , categories = [ "Graphic Design", "All", "Branding", "Illustration" ]
      , display = "/img/hopbrothers/display.jpg"
      , description = "The brief for this project asked to create branding, a brand identity design manual and product packaging, for a small craft brewery ran by two brothers. Main inspiration for the design's artwork came from classic style tattoos, which alongside bright colours and witty product names, will help the brand stand out on the shop shelves."
      , facts =
            [  { name = "Date:"
              , value = "March 2020"
              }
            , { name = "Tools:"
              , value = "Photoshop, Illustrator"
              }
             
            ]
      , content =
            [ { graphic = "/img/hopbrothers/display.jpg"
              }
              ,{ graphic = "/img/hopbrothers/image1.jpg"
              }
              ,{ graphic = "/img/hopbrothers/image2.jpg"
              }
              ,{ graphic = "/img/hopbrothers/image3.jpg"
              }
              ,{ graphic = "/img/hopbrothers/image4.jpg"
              }
               ,{ graphic = "/img/hopbrothers/image5_2.jpg"
              }
              ,{ graphic = "/img/hopbrothers/image5.jpg"
              }
              
              ,{ graphic = "/img/hopbrothers/image6.jpg"
              }
              ,{ graphic = "/img/hopbrothers/image7.jpg"
              }
              ,{ graphic = "/img/hopbrothers/image8.jpg"
              }
              ,{ graphic = "/img/hopbrothers/image9.jpg"
              }
              ,{ graphic = "/img/hopbrothers/image10.jpg"
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
