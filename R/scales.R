#' Helper function-palette for discrete scales
#'
#' @param pal the palette colors
#' @param reverse whether to reverse
#'
#' @importFrom grDevices colorRampPalette rgb
discr_pal = function(pal, reverse=FALSE) {
    n_col = length(pal)
    names(pal) = NULL
    ramp = colorRampPalette(pal)
    function(n) {
        if (n <= n_col)
            pal[1:n]
        else
            ramp(n)
    }
}

#' Color palettes for `ggplot2`
#'
#' @rdname scale_wa
#'
#' @param palette a `[wacolors]` palette or palette name.
#' @param which if not `NULL`, the indices or names of a subset of colors to use.
#' @param ... Other arguments passed on to [ggplot2::discrete_scale()],
#'   [ggplot2::continuous_scale()], or [ggplot2::binned_scale()] to control
#'   name, limits, breaks, labels and so forth.
#' @param reverse `TRUE` if the colors should be reversed.
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(mpg, wt)) +
#'     geom_point(aes(color = factor(cyl), size=hp)) +
#'     scale_color_wa_d()
#'
#' ggplot(mtcars, aes(mpg, wt)) +
#'     geom_point(aes(color = hp)) +
#'     scale_color_wa_c("seattle_night",  which=c("seafirst", "pike_clock"))
#'
#' ggplot(diamonds) +
#'     geom_bar(aes(x = cut, fill = clarity)) +
#'     scale_fill_wa_d(wacolors$sound_sunset, reverse=TRUE)
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn scale_fill_gradientn
#' @export
scale_color_wa_d = function(palette="rainier", which=NULL, ..., reverse=FALSE) {
    pal = match_pal(palette)
    if (!is.null(which)) pal$pal = pal$pal[which]
    if (reverse) pal$pal = rev(pal$pal)

    if (pal$name %in% cont_pal)
        pal_fun = colorRampPalette(pal$pal)
    else
        pal_fun = discr_pal(pal$pal)

    discrete_scale("colour", pal$name, palette=pal_fun, ...)
}

#' @rdname scale_wa
#' @export
scale_fill_wa_d = function(palette="rainier", which=NULL, ..., reverse=FALSE) {
    pal = match_pal(palette)
    if (!is.null(which)) pal$pal = pal$pal[which]
    if (reverse) pal$pal = rev(pal$pal)

    if (pal$name %in% cont_pal)
        pal_fun = colorRampPalette(pal$pal)
    else
        pal_fun = discr_pal(pal$pal)

    discrete_scale("fill", pal$name, palette=pal_fun, ...)
}

#' @rdname scale_wa
#' @export
scale_color_wa_c = function(palette="ferries", which=NULL, ..., reverse=FALSE) {
    pal = match_pal(palette)
    if (!is.null(which)) pal$pal = pal$pal[which]
    if (reverse) pal$pal = rev(pal$pal)

    scale_color_gradientn(..., colours=pal$pal)
}

#' @rdname scale_wa
#' @export
scale_fill_wa_c = function(palette="ferries", which=NULL, ..., reverse=FALSE) {
    pal = match_pal(palette)
    if (!is.null(which)) pal$pal = pal$pal[which]
    if (reverse) pal$pal = rev(pal$pal)

    scale_fill_gradientn(..., colours=pal$pal)
}

#' @rdname scale_wa
#' @export
scale_colour_wa_d = scale_color_wa_d
#' @rdname scale_wa
#' @export
scale_colour_wa_c = scale_color_wa_c
#' @rdname scale_wa
#' @export
scale_color_wa_b = scale_color_wa_d
#' @rdname scale_wa
#' @export
scale_colour_wa_b = scale_color_wa_d
#' @rdname scale_wa
#' @export
scale_fill_wa_b = scale_fill_wa_d
