fluidPage(
    tags$head(
        shiny::singleton(
            tags$link(rel = "stylesheet", type = "text/css", href = "css/style.css")
        ),
        shiny::singleton(tags$script(src = "js/shinyConnection.js"))
    ),
    navbarPage(
        title = div("QuestR"),
        tabPanel("Test", initUI("init_module")),
        tabPanel("Resources"),
        tabPanel("About")
    )
)
