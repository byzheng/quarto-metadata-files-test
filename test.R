system.time({
    quarto::quarto_render(
        "index.qmd",
        quarto_args = c(
            "--log-level", "debug"
        )
    )
})
