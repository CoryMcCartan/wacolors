# Very basic tests

test_that("Printing works OK", {
    x = c("red", "black")
    attr(x, "name") = "pal"
    exp_out = paste0(
        '<div class="color-palette"><span style="text-weight: bold">pal',
        '</span><div style="display: flex; flex-direction: row; width: 100%; ',
        'height: 1em; max-width: 30em;"><div style="flex-grow: 1; background: red;">',
        '</div><div style="flex-grow: 1; background: black;"></div></div></div>'
        )

    expect_output(palette_html(x), exp_out, fixed=TRUE)
})


test_that("Plotting works OK", {
    x = c("red", "black")
    attr(x, "name") = "pal"

    expect_invisible(plot.palette(x))
})

test_that("Code generation works OK", {
    exp_out = 'PAL_RAINIER = c("#6D9537", "#364B6F", "#A1A2B7", "#2A4E45")'
    expect_output(pal_vector("rainier", 4), exp_out, fixed=TRUE)

})
