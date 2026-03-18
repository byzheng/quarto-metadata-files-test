# Test the metadata-files

file.copy(
    "_quarto1.yml",
    "_quarto.yml",
    overwrite = TRUE
)


system.time({
    quarto::quarto_render(
        "index.qmd",
        quarto_args = c(
            "--log-level", "debug"
        )
    )
})


# Test without the metadata-file
file.copy(
    "_quarto2.yml",
    "_quarto.yml",
    overwrite = TRUE
)


system.time({
    quarto::quarto_render(
        "index.qmd",
        quarto_args = c(
            "--log-level", "debug"
        )
    )
})


# Test with the metadata-file and without rscript
file.copy(
    "_quarto3.yml",
    "_quarto.yml",
    overwrite = TRUE
)


system.time({
    quarto::quarto_render(
        "index.qmd",
        quarto_args = c(
            "--log-level", "debug"
        )
    )
})

file.remove("_quarto.yml")