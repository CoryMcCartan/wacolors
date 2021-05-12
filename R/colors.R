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
    rainier = c(lake="#465177", ragwort="#E4C22B", lodge="#965229",
               trees="#29483A", ground="#759C41", winter_sky="#9FB6DA",
               paintbrush="#DF3383"),
    forest = c(trees="#254029", stream="#1E212F", fern="#516F25",
               bark="#3A270A", mountains="#40666F"),
    washington_pass = c(trees="#31543B", stone="#48628A", tips="#94AA3D",
                        road="#7F9CB1", sunbreak="#D9D1BE", stump="#3D3F45"),
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
    sound_sunset = c("#001F39", "#1D2654", "#40296B", "#5E2F74", "#6F3F73",
                     "#7F4F75", "#8D5F7A", "#9D6F81", "#CD6E85", "#E47C7F",
                     "#F58F74", "#FFA363", "#FFBB58", "#FFD360", "#FFEA73"),
    ferries = c("#241E33", "#1E2C55", "#00406B", "#005473", "#006472",
                "#007374", "#108376", "#3E9278", "#65A07E", "#81AE82",
                "#9BBE80", "#BBCB7D", "#DFD87B", "#FFE27F", "#FFE990"),
    forest_fire = c("#391124", "#4C1A2D", "#602335", "#742E3A", "#883A3C",
                    "#9C463B", "#B05432", "#C36319", "#D57300", "#E78400",
                    "#F79600", "#FFAA00", "#FFBF00", "#FFD600", "#FDEC98"),
    sea = c("#1C153D", "#1B2254", "#0A3168", "#004279", "#005282", "#006086",
            "#1B6F8B", "#347D92", "#488C9B", "#5A9BA4", "#6AAAAE", "#7BB9B9",
            "#8BC9C4", "#9CD9CF", "#ADE9DA"),
    mountains_sound = c("#192A1A", "#174729", "#006741", "#338367", "#6C9C8D",
                        "#9CB6B0", "#C9D2D1", "#F1F1F1", "#CAD2D3", "#A1B4BB",
                        "#7A97A8", "#577898", "#415988", "#3C3A61", "#2B213A"),
    sea_star = c("#560B3C", "#671E43", "#792E49", "#8B3E4D", "#9C4E4F",
                 "#AC5F50", "#BA714F", "#C7834C", "#D29649", "#DAA948",
                 "#E1BC49", "#E3CE55", "#E3DF66", "#C1D557", "#9FC954",
                 "#7BBD57", "#54B15B", "#1CA35F", "#009563", "#008765",
                 "#007864", "#006862", "#00585D", "#004755", "#003343"),
    volcano = c("#29272C", "#323335", "#3E3F3F", "#4A4B4B", "#555857",
                "#626561", "#71726B", "#837E77", "#8C8D87", "#989B98",
                "#A7A8A8", "#B5B7B7", "#C2C5C8", "#D3D3D9", "#E7E0E8"),
    baker = c("#8091B1", "#9495B8", "#A599BC", "#B59EBF", "#C2A3C0", "#CCAAC1",
              "#D4B2C1", "#DBBAC2", "#DFC3C4", "#E3CCC7", "#E5D5CD", "#E8DED4",
              "#EBE7DE", "#EFEFE9", "#F6F7F4"),
    mountains = c("#002240", "#002B4C", "#00355A", "#003F6A", "#13487A",
                  "#2C528B", "#415C9C", "#5566AE", "#6A71BB", "#7F7CC2",
                  "#9289CA", "#A495D2", "#B4A2DA", "#C4B0E2", "#D4BEEB"),
    foothills_winter = c("#161200", "#1E2100", "#233000", "#2A3E09", "#354D2C",
                         "#435B44", "#526959", "#63786D", "#758780", "#879692",
                         "#9AA6A4", "#ACB6B6", "#BEC7C8", "#D0D8DA", "#E3E9EC")
)

cont_pal = c("sound_sunset", "ferries", "forest_fire", "sea", "mountains_sound",
             "sea_star", "volcano", "baker", "mountains", "foothills_winter")


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
        out = colorRampPalette(pal)(n)

    if (reverse) out = rev(out)

    structure(out, class="palette", name=name)
}
