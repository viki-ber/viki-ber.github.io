module Content exposing (..)


top : { title : String, content : String }
top =
    { title = "My Portfolio"
    , content = "lorem ipsum dolor sit amet"
    }


about : { title : String, content : String }
about =
    { title = "About Me"
    , content = "Hi! My name is Viktorija, I am a graphic designer and illustrator based in Gothenburg, Sweden. <br /><br /> Trained at Jönköping and Linneaus universities. <br /><br /> Previous experience in food product and brand development.<br /><br /> Favourite colours - yellow, blue and grey.<br /><br /> Dream collaboration - Stefan Sagmeister.<br /><br /> Dream brief - design an issue of Lucky Peach magazine.<br /><br />"
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
    [ { name = "Sustainable web design"
      , id = "thesis"
      , categories = [ "UX/UI", "Graphic Design", "All", "Academic Writing", "User Research" ]
      , display = "/img/thesis/cover_image.png"
      , description = "<strong></strong> Sustainable web design is the practice of designing digital products and services to prioritise the health of our home planet. At its core, it is concerned with reducing carbon emissions and the energy consumption of web services. <br /><br />In recent years, the web development industry has been aiming to make websites more sustainable through green hosting and sustainable approaches in both back-end and front-end levels of websites. However, switching to sustainably designed websites would require a change in user behaviour, which might be one of the main reasons lower-impact websites are not being introduced more widely. <br /><br />The purpose of the study was to evaluate and improve existing sustainable web design guidelines in order to make lower-impact websites more attractive to users. Due to the steady exponential growth of the e-commerce sector, grocery shopping websites was chosen as a context. <br /><br />Surveys and focus groups were used to evaluate users' experience and attitudes toward existing lower-impact websites. The gathered data identified improvements to the existing sustainable web design guidelines, which then were applied to build a high-fidelity prototype of a lower-impact grocery e-commerce website. A follow-up usability testing was carried out to evaluate the UX of the prototype, which indicated what would make a lower-impact website more attractive to users. <br /><br />The study proposes a strategy of combining the existing sustainable web design guidelines with certain behaviour change theories to facilitate a smoother transition towards lower-impact websites.<br /><br />Follow the links on the side to read the full study or try out the prototype."
      , facts =
            [ { name = "Date:"
              , value = "Spring 2022"
              }
            , { name = "Tools:"
              , value = "Figma, Illustrator, Various User Research Methods"
              }
               ,{ name = "Collaboration:"
              , value = "Ráhel Anna Balogh"
              }
               , { name = "Try the prototype:"
              , value = "<a href='https://www.figma.com/proto/D6Zl3duTJnBVKbnOfoO9wh/Thesis-project?page-id=0%3A1&node-id=310%3A12429&starting-point-node-id=310%3A12429/'>Interactive Prototype</a>"
              }
              , { name = "Read the full study:"
              , value = "<a href='http://hj.diva-portal.org/smash/get/diva2:1672889/FULLTEXT01.pdf'>Sustainable web design in the e-commercde sector</a>"
              }
              
            ]
      , content =
            [ { graphic = "/img/thesis/main_image.png"
              }
              ,{ graphic = "/img/thesis/video.mp4"
              }
            ]
      }
      ,{ name = "Ätbart"
      , id = "atbart"
      , categories = [ "UX/UI", "Graphic Design", "All" ]
      , display = "/img/atbart/mockup_1.png"
      , description = "<strong></strong> Ätbart is a non-profit organisation, based in Skaraborg municipality in Sweden, fighting food waste. I have been hired to do a complete re-design of their website. <br /><br />I started this project by holding a brainstorming discussion together with the Ätbart team to establish a new structure for the website. This session was very appreciated by the client, as well as very productive, as we could quickly establish the website layout that met both client’s wishes, as well as UX and IA best practices. The old website had a lot of content, relevant to different user groups, therefore it was vital to create a very user-friendly information structure. <br /><br />For the design, I followed Ätbart’s brand manual (which I helped to curate in another project), as well as created bespoke elements, such as small illustrations and icons. The design was then handed over to the web developer as an XD prototype, including a full asset library and guide.<br /><br />My goal was to create a clear and easy-to-use website, making sure that each specific user could easily find information relevant to them. I aimed for a visual solution that was clean and conveyed the important work the organisation was doing, at the same time reflecting their fun and lively side. ."
      , facts =
            [ { name = "Date"
              , value = "Autumn 2021"
              }
            , { name = "Tools"
              , value = "Adobe XD, Illustrator"
              }
               , { name = "Try the desktop prototype:"
              , value = "<a href='https://xd.adobe.com/view/ce9b68ec-4116-44d8-a0ba-611c4822fd88-9bc8/'>Interactive Prototype</a>"
              }
              , { name = "Try the mobile prototype:"
              , value = "<a href='https://xd.adobe.com/view/d1d7604b-3402-40ed-a083-74c96852cc45-8484/'>Interactive Prototype</a>"
              }
              , { name = "Visit the website:"
              , value = "<a href='https://atbart.org/'>www.atbart.org</a>"
              }
            ]
      , content =
            [ { graphic = "/img/atbart/main_image.png"
              }
            ]
      }
      ,{ name = "Mathjälpen"
      , id = "mathjalpen"
      , categories = [ "Branding", "Illustration", "Graphic Design", "All" ]
      , display = "/img/mathjalpen/main_image.jpg"
      , description = "<strong></strong> Ätbart is a non-profit organisation, based in Skaraborg municipality in Sweden, fighting food waste. One of their initiatives, called Mathjälpen (translates “food help”), works in partnership with all major local food retailers to redistribute edible food waste to people in financial difficulties. Organisation volunteers do regular pick-ups every few days from food stores of food products that are bound for waste (because of damaged packaging or short expiration date remaining, for example), pack them into well balanced food bags and hand these out to people in need in local communities. For this project, I worked with Ätbart to create visual identity for Mathjälpen, as well as a package of various marketing materials that their partner stores could use in their premises to promote their involvement in this initiative. Moreover, I developed a manual for the use of this marketing package, with examples and tips for best ways to display it."
      , facts =
            [ { name = "Date"
              , value = "Spring 2021"
              }
            , { name = "Tools"
              , value = "Photoshop, Illustrator, InDesign"
              }
            ]
      , content =
            [ { graphic = "/img/mathjalpen/image_1.jpg"
              }
            ]
      }
      ,{ name = "Terra Venture"
      , id = "terraventure"
      , categories = [ "Branding", "UX/UI", "Graphic Design", "All" ]
      , display = "/img/first.jpg"
      , description = "<strong></strong> This brief asked to create a branding and UI design for a movie streaming service specialising in outdoor adventure movies. Main inspiration for the design came from modern outdoor, travel and adventure magazines."
      , facts =
            [ { name = "Date"
              , value = "October 2021"
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
    , { name = "Esca"
      , id = "esca"
      , categories = [ "Branding", "UX/UI", "Graphic Design", "All" ]
      , display = "/img/esca/display.png"
      , description = "The brief for this project was to create a branding and an e-commerce website for a company selling premium food products"
      , facts =
            [ { name = "Date:"
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
            , { graphic = "/img/esca/page2.jpg"
              }
            , { graphic = "/img/esca/micro.mp4"
              }
            , { graphic = "/img/esca/ui_movie.mp4"
              }
            , { graphic = "/img/esca/page3.jpg"
              }
            ]
      }
    , { name = "It's fika time"
      , id = "fika"
      , categories = [ "Graphic Design", "All" ]
      , display = "/img/fikatime/display.jpg"
      , description = "This creative brief asked to produce any piece of design, adhering to only one constraint - the design had to be produced using only HTML and CSS languages. I chose to create a set of graphical elements inspired by Swedish folk art. These elements can then be mixed and matched to produce various patters that can be applied to different everyday objects. "
      , facts =
            [ { name = "Date:"
              , value = "November 2020"
              }
            , { name = "Tools:"
              , value = "HTML, CSS"
              }
            ]
      , content =
            [ { graphic = "/img/fikatime/image1.jpg"
              }
            , { graphic = "/img/fikatime/image2.jpg"
              }
            ]
      }
    , { name = "Colour Grabber"
      , id = "colourgrabber"
      , categories = [ "Graphic Design", "All", "UX/UI" ]
      , display = "/img/colourgrabber/display.png"
      , description = "In this brief I had to create a device specific graphic user interface and its assets. I chose to create an interface for a colour capturing application and used neumorphic style as inspiration for a clean and minimatistic look, where the captured colour is the main focus. "
      , facts =
            [ { name = "Date:"
              , value = "November 2020"
              }
            , { name = "Tools:"
              , value = "XD"
              }
            , { name = "Try:"
              , value = "<a href='https://xd.adobe.com/view/0dbb5502-96cc-444c-b7c8-53267224f761-58e8/'>Interactive Prototype</a>"
              }
            ]
      , content =
            [ { graphic = "/img/colourgrabber/movie1.mp4"
              }
            , { graphic = "/img/colourgrabber/image1.jpg"
              }
            , { graphic = "/img/colourgrabber/movie2.mp4"
              }
            ]
      }
    , { name = "OFFcenter magazine"
      , id = "offcenter"
      , categories = [ "Graphic Design", "All", "Print" ]
      , display = "/img/offcenter/display2.jpg"
      , description = "The brief for this university project was to design and print a magazine about design, featuring at least a couple of Adobe tutorials and an article about some sort of printing technique. The rest was up to us. We chose to produce a magazine celebrating different and non-main-stream design and designers. For the project we produced all the graphical elements, wrote the content and even designed our own fully functional typeface for the title and headings. Finally we got the magazine printed at a proffessional printhouse with a 50 copy print run."
      , facts =
            [ { name = "Date:"
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
    , { name = "The Hop Brothers Brewery"
      , id = "hopbrothers"
      , categories = [ "Graphic Design", "All", "Branding", "Illustration" ]
      , display = "/img/hopbrothers/display.jpg"
      , description = "The brief for this project asked to create branding, a brand identity design manual and product packaging, for a small craft brewery ran by two brothers. Main inspiration for the design's artwork came from classic style tattoos, which alongside bright colours and witty product names, will help the brand stand out on the shop shelves."
      , facts =
            [ { name = "Date:"
              , value = "March 2020"
              }
            , { name = "Tools:"
              , value = "Photoshop, Illustrator"
              }
            ]
      , content =
            [ { graphic = "/img/hopbrothers/display.jpg"
              }
            , { graphic = "/img/hopbrothers/image1.jpg"
              }
            , { graphic = "/img/hopbrothers/image2.jpg"
              }
            , { graphic = "/img/hopbrothers/image3.jpg"
              }
            , { graphic = "/img/hopbrothers/image4.jpg"
              }
            , { graphic = "/img/hopbrothers/image5_2.jpg"
              }
            , { graphic = "/img/hopbrothers/image5.jpg"
              }
            , { graphic = "/img/hopbrothers/image6.jpg"
              }
            , { graphic = "/img/hopbrothers/image7.jpg"
              }
            , { graphic = "/img/hopbrothers/image8.jpg"
              }
            , { graphic = "/img/hopbrothers/image9.jpg"
              }
            , { graphic = "/img/hopbrothers/image10.jpg"
              }
            ]
      }
    , { name = "Inform - Educate - Entertain"
      , id = "retro"
      , categories = [ "All", "Print", "Illustration" ]
      , display = "/img/retro/display.jpg"
      , description = "A personal illustration project of various retro objects, inspired by a Public Service Broadcasting album Inform - Educate - Entertain."
      , facts =
            [ { name = "Date:"
              , value = "November 2019"
              }
            , { name = "Tools:"
              , value = "Photoshop, Illustrator"
              }
            ]
      , content =
            [ { graphic = "/img/retro/display.jpg"
              }
            , { graphic = "/img/retro/image2.jpg"
              }
            , { graphic = "/img/retro/tape.jpg"
              }
            , { graphic = "/img/retro/polaroid.jpg"
              }
            , { graphic = "/img/retro/vinyl.jpg"
              }
            ]
      }
      , { name = "Two Wheeled Art"
      , id = "TWA"
      , categories = [ "All", "Print", "Illustration" ]
      , display = "/img/TWA/display.jpg"
      , description = "Two Wheeled Art is my illustration shop hosted on Etsy platform, specialising in bespoke illustrations of motorcycles and bicycles. Each illustration is produced to order, following pictures provided by the customer."
      , facts =
            [ { name = "Date:"
              , value = "2018 - ongoing"
              }
            , { name = "Tools:"
              , value = "Photoshop, Wacom drawing display"
              }
              , { name = "Visit:"
              , value = "<a href='https://www.etsy.com/se-en/shop/TwoWheeledArt?ref=search_shop_redirect'>Two Wheeled Art Shop</a>"
              }
              ]
      , content =
            [ { graphic = "/img/TWA/image3.jpg"
              }
            , { graphic = "/img/TWA/image1.jpg"
              }
            , { graphic = "/img/TWA/image2.jpg"
              }
            , { graphic = "/img/TWA/image4.jpg"
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


defaultProject : Project
defaultProject =
    { name = ""
    , id = ""
    , categories = []
    , display = ""
    , description = ""
    , facts =
        []
    , content =
        []
    }
