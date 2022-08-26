initUI <- function(id) {
    ns <- NS(id)
    tagList(
        h5("You can take an R/Shiny skill assessment within this app."),
        actionButton(ns("start"), "Start test")
    )
}

initServer <- function(id) {
    moduleServer(id, function(input, output, session) {

    })
}
