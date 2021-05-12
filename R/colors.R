#' Washington State Color Palettes
#'
#' A collection of colorblind-friendly color palettes for various settings in
#' the state of Washington.
#'
#' Available palettes (use [wa_pal()] to visualize):
#' `r paste0('* ``', names(wacolors), '``', collapse="\n")`
#'
#' @format A list of character vectors containing the color palettes. Discrete
#' palette vectors contain names for each color.
#'
#' @examples
#' wacolors$rainier
#' wacolors$palouse[1:4]
#'
#' @export
wacolors = list(
    # DISCRETE
    rainier = c(lake="#465177", ragwort="#E4C22B", lodge="#965127",
               trees="#29483A", ground="#759C44", winter_sky="#9FB6DA",
               paintbrush="#DF3383"),
    forest = c(trees="#254029", stream="#1E212F", fern="#516F25",
               bark="#3A270A", mountains="#40666F"),
    washington_pass = c(trees="#31543B", stone="#48628A", tips="#94AA3D",
                        road="#7F9CB1", sunbreak="#D9D1BE", stump="#3E3C3A"),
    palouse = c(snake="#2B3F4C", wheat="#C0A43D", fallow="#8A627C",
                scrub="#7C8455", canyon="#D1BD98", sky="#69A2E4"),
    uw = c(purple="#483778", gold="#D5C58D", brick="#7E4837", cherry="#E08E9A",
           stone="#737C78"),
    larch = c(larch="#D7A141", shrub="#333F2F", rock="#808A8D",
              moss="#7C6D3D", sky="#73A0E4", dirt="#C7B3A9"),
    fort_worden = c(sea="#4D5370", shrub="#2A3B19", lighthouse="#A6B7C6",
                    rust="#8F6D3F"),
    coast = c(surf="#7BAEA0", sea="#386276", rocks="#3A4332", sand="#7A7D6F",
              sunset="#D9B96E", sky="#BED4F0"),
    flag = c(green="#247F5B", yellow="#E2CB30", blue="#5DB3DB", tan="#FFDCCD"),
    # CONTINUOUS
    sound_sunset = c("#001B38", "#1B234C", "#3B295E", "#56316A", "#69406C",
                     "#7A5072", "#8A6078", "#9B7080", "#C67387", "#DC8386",
                     "#EE9581", "#FCAA79", "#FFC071", "#FFD86B", "#FFF075"),
    ferries = c("#241E33", "#1E2C54", "#003F69", "#005373", "#006372",
                "#007273", "#008174", "#349075", "#579E78", "#77AB7E",
                "#97B788", "#B3C493", "#CFD28F", "#F2DE83", "#FFE66C"),
    forest_fire = c("#2C0915", "#40111D", "#551A23", "#6A2626", "#7E3225",
                    "#92401D", "#A64F00", "#B96000", "#CB7100", "#DB8300",
                    "#E69800", "#EDAD00", "#F3C307", "#FAD753", "#FFEC7A"),
    sea = c("#070610", "#0E143A", "#002351", "#003466", "#004676", "#005577",
            "#1E647D", "#3B7385", "#52838E", "#66939A", "#79A3A6", "#8BB4B3",
            "#9DC5C1", "#AFD6CF", "#C1E8DE"),
    sea_star = c("#4B0049", "#5D014F", "#700853", "#821554", "#932252",
                 "#963D4E", "#985350", "#95675B", "#B16D51", "#C3774D",
                 "#D48349", "#E48F43", "#F29C3B", "#FFAA3B", "#FFBA54"),
    volcano = c("#29272C", "#323335", "#3E3F3F", "#4A4B4B", "#555857",
                "#626561", "#71726B", "#837E77", "#8C8D87", "#989B98",
                "#A7A8A8", "#B5B7B7", "#C2C5C8", "#D3D3D9", "#E7E0E8"),
    baker = c("#8091B1", "#9495B8", "#A599BC", "#B59EBF", "#C2A3C0", "#CCAAC1",
              "#D4B2C1", "#DBBAC2", "#DFC3C4", "#E3CCC7", "#E5D5CD", "#E8DED4",
              "#EBE7DE", "#EFEFE9", "#F6F7F4"),
    diablo = c("#0F2B14", "#003916", "#00471E", "#00542A", "#006238",
               "#006F48", "#007D59", "#00896B", "#00957D", "#00A28F",
               "#0FAFA0", "#33BBB2", "#4AC8C4", "#5FD5D6", "#72E3E8"),
    mountains = c("#002240", "#002B4C", "#00355A", "#003F6A", "#13487A",
                  "#2C528B", "#415C9C", "#5566AE", "#6A71BB", "#7F7CC2",
                  "#9289CA", "#A495D2", "#B4A2DA", "#C4B0E2", "#D4BEEB"),
    gorge = c("#003121", "#003B27", "#00462B", "#00512F", "#005C33", "#006835",
              "#0A7337", "#247E37", "#378A37", "#499536", "#5CA035", "#6EAB33",
              "#81B632", "#94C137", "#A9CB4A"),
    foothills_winter = c("#171200", "#1E2100", "#242F00", "#2C3E15", "#374C30",
                         "#445A46", "#53695A", "#63786D", "#758780", "#869792",
                         "#99A6A4", "#ABB6B6", "#BEC7C8", "#D0D8DA", "#E3E9EC"),
    olympic = c("#2B213A", "#3C3A61", "#415988", "#577898", "#7A97A8",
                "#A1B4BB", "#CAD2D3", "#F1F1F1", "#C9D2D1", "#9CB6B0",
                "#6C9C8D", "#338367", "#006741", "#174729", "#192A1A"),
    vantage = c("#502C62", "#524F79", "#566E8E", "#638D9F", "#7BAAB0",
                "#9DC7C1", "#C4E2D6", "#EAFFEE", "#B6EAA5", "#AACA68",
                "#A5A82B", "#9B8614", "#8C660C", "#784810", "#632B13")
)

cont_pal = c("sound_sunset", "ferries", "forest_fire", "sea_star", "sea",
             "volcano", "baker", "diablo", "mountains", "gorge",
             "foothills_winter", "olympic", "vantage")


#' Washington State Color Palette Generator
#'
#' Generate `palette` objects from the `wacolors` list
#'
#' @param palette The name of the palette (partial matching supported), or an
#'   actual palette from `[wacolors]`.
#' @param which if not `NULL`, the indices or names of a subset of colors to use.
#' @param n The number of colors in the palette. If this exceeds the actual
#'   number and `type` is not provided, it will be set to `continuous`.
#' @param type Either `continuous` or `discrete`. Use `continuous` if you want
#'   to automatically interpolate between colors.
#' @param reverse `TRUE` if palette should be reversed.
#'
#' @return A vector of colors of type `palette`
#'
#' @examples
#' wa_pal("rainier")
#' wa_pal(wacolors$rainier)
#' wa_pal("sound_sunset", 20, "continuous")
#' wa_pal("washington_pass", reverse=TRUE)
#'
#' @importFrom grDevices colorRampPalette
#' @export
wa_pal = function(palette, n, which=NULL,
                  type=c("discrete", "continuous"), reverse=FALSE) {
    obj = match_pal(palette)
    pal = obj$pal
    name = obj$name
    if (!is.null(which)) pal = pal[which]

    if (is.null(pal))
        stop("Palette `", name, "` not found.")

    if (missing(n))
        n = length(pal)

    if (n > length(pal))
        type="continuous"
    type = match.arg(type)

    if (type == "discrete")
        out = pal[1:n]
    else
        out = colorRampPalette(pal, space="Lab", interpolate="spline")(n)

    if (reverse) out = rev(out)

    structure(out, class="palette", name=name)
}
