#' Washington State Color Palettes
#'
#' A collection of colorblind-friendly color palettes for various settings in
#' the state of Washington.
#'
#' @format A list of objects of type `palette`, which are themselves lists of
#'   colors.
#'
#' @export
wacolors = list(
    flag = c(green="#007D50", yellow="#F7DB03", blue="#5EBFDE", tan="#FBDBC9"),
    UW = c(purple="#4B2E83", suzallo="#C3A46D", cherry="#E1B2B8",
           brick="#664333", suzallo_light="#D6B844", stone="#92847A"),
    airplane = c("#161F47", "#134575", "#4A72B8", "#99C6F7", "#DCE8F8"),
    tartan = c(green="#004500", gold="#B2B202", darkblue="#191959",
               red="#800000", medblue="#014098")
)

#' Washington State Color Palette Generator
#'
#' Generate `palette` objects from the `wacolors` list
#'
#' @param name The name of the palette. Partial matching supported.
#' @param n The number of colors in the palette. If this exceeds the actual
#'   number and `type` is not provided, it will be set to `continuous`.
#' @param type Either `continuous` or `discrete`. Use `continuous` if you want
#'   to automatically interpolate between colors.
#'
#' @return A vector of colors of type `palette`
#'
#' @export
wa_palette = function(name, n, type=c("discrete", "continuous")) {
    name = match.arg(name, names(wacolors))

    pal = wacolors[[name]]
    if (is.null(pal))
        stop("Palette `", name, "` not found.")

    if (missing(n))
        n = length(pal)

    if (n > length(pal) && missing(type))
        type="continuous"
    type = match.arg(type)

    if (type == "discrete")
        out = pal[1:n]
    else
        out = grDevices::colorRampPalette(pal)(n)

    structure(out, class="palette", name=name)
}
