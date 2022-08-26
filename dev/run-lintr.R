excludedDirs <- list("www", "inst", "packrat", "renv")

result <- lintr::lint_dir(
    path = getwd(),
    linters = lintr::linters_with_defaults(
        line_length_linter = lintr::line_length_linter(150),
        # CamelCase for R6 classes
        object_name_linter = lintr::object_name_linter(styles = c("camelCase", "CamelCase")),
        object_length_linter = lintr::object_length_linter(45),
        # disable due to poor working with R6 classes
        cyclocomp_linter = NULL,
        # disable to avoid conflicts with styler
        object_usage_linter = NULL
    ),
    exclusions = excludedDirs
)

if (length(result) > 0) {
    print(result)
} else {
    cat(crayon::green$bold("No lint issues\n"))
}
