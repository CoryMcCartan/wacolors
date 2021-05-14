# Very basic tests

test_that("Plotting works OK", {
    x = c("red", "black")
    attr(x, "name") = "pal"

    expect_invisible(plot.palette(x))
})

test_that("Code generation works OK", {
    exp_out = 'PAL_RAINIER = c('
    expect_output(pal_vector("rainier", 4), exp_out, fixed=TRUE)

})
