initUI <- function(id) {
    ns <- NS(id)
    tagList(
        h3("You can take an R/Shiny skill assessment within this app"),
        selectInput(
            ns("topic"),
            "Choose a topic",
            choices = c(
                "R" = "r",
                "R Shiny" = "shiny",
                "R packages" = "packages",
                "CI/CD" = "ci"
            ),
            selected = "r",
            multiple = TRUE
        ),
        actionButton(ns("start"), "Start test")
    )
}

initServer <- function(id) {
    moduleServer(id, function(input, output, session) {
    })
}
