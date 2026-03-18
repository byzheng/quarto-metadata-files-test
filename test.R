Sys.setenv(QUARTO_KNITR_RSCRIPT_ARGS="--vanilla")

if (!requireNamespace("quarto", quietly = TRUE)) {
    stop("The 'quarto' package must be installed before running test.R", call. = FALSE)
}

results_dir <- Sys.getenv("RESULTS_DIR", unset = "")

if (nzchar(results_dir)) {
    dir.create(results_dir, recursive = TRUE, showWarnings = FALSE)
}

cleanup <- function() {
    if (file.exists("_quarto.yml")) {
        file.remove("_quarto.yml")
    }
}

on.exit(cleanup(), add = TRUE)

scenarios <- list(
    list(name = "metadata_file", config = "_quarto1.yml"),
    list(name = "inline_metadata", config = "_quarto2.yml"),
    list(name = "metadata_file_render_list", config = "_quarto3.yml")
)

results <- vector("list", length(scenarios))

for (index in seq_along(scenarios)) {
    scenario <- scenarios[[index]]

    file.copy(
        scenario$config,
        "_quarto.yml",
        overwrite = TRUE
    )

    timing <- system.time({
        quarto::quarto_render(
            "index.qmd",
            quarto_args = c(
                "--log-level", "debug"
            )
        )
    })

    scenario_result <- data.frame(
        scenario = scenario$name,
        config = scenario$config,
        user = unname(timing[["user.self"]]),
        system = unname(timing[["sys.self"]]),
        elapsed = unname(timing[["elapsed"]]),
        stringsAsFactors = FALSE
    )

    print(scenario_result, row.names = FALSE)
    results[[index]] <- scenario_result
}

results_df <- do.call(rbind, results)

cat("\nCombined timings\n")
print(results_df, row.names = FALSE)

if (nzchar(results_dir)) {
    write.csv(
        results_df,
        file.path(results_dir, "timings.csv"),
        row.names = FALSE
    )
}


