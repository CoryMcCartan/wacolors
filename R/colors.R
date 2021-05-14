#' Washington State Color Palettes
#'
#' A collection of colorblind-friendly color palettes for various settings in
#' the state of Washington. Colors were extracted from a set of photographs, and
#' then combined to form a set of continuous and discrete palettes.  Continuous
#' palettes were designed to be perceptually uniform, while discrete palettes
#' were chosen to maximize contrast at several different levels of overall
#' brightness and saturation. Each palette has been evaluated to ensure colors
#' are distinguishable by colorblind people.
#'
#' Discrete palettes contain at most seven colors.  Don't create graphics that
#' use more than seven discrete colors.  You can color a map with four.
#' Anything more risks confusion.  Consider differentiating through faceting or
#' labels, instead.
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
    washington_pass = c(trees="#31543B", stone="#48628A", tips="#94AA3D",
                        road="#7F9CB1", sunbreak="#D9D1BE", stump="#3E3C3A"),
    palouse = c(snake="#2D3F4A", wheat="#C0A43D", fallow="#8A6172",
                hills="#748A52", canyon="#CCBA98", sky="#69A2E4"),
    forest = c(trees="#254029", stream="#1E212F", fern="#516F25",
               bark="#3A270A", mountains="#40666F"),
    larch = c(larch="#D2A554", shrub="#626B5D", rock="#8C8F9E",
              moss="#858753", sky="#A4BADF", dirt="#D3BEAF"),
    coast = c(surf="#7BAEA0", sea="#386276", rocks="#3A4332", sand="#7A7D6F",
              sunset="#D9B96E", sky="#BED4F0"),
    uw = c(purple="#483778", gold="#D2C28B", brick="#7E4837", cherry="#D48792",
           stone="#6B7471"),
    fort_worden = c(sea="#4D5370", shrub="#263C19", lighthouse="#A6B7C6",
                    rust="#8F6D3F"),
    skagit = c(red="#B51829", yellow="#EFC519", violet="#831285",
               orange="#CC7810", purple="#C886E8", mountains="#3E6E94"),
    flag = c(green="#247F5B", yellow="#E2CD70", blue="#5DB3DB", tan="#FFDCCD"),
    # CONTINUOUS
    sound_sunset = c("#001E36", "#0F2649", "#352C5A", "#533369", "#6E3D71",
                     "#814C74", "#925C78", "#A26D7C", "#BC7A7D", "#D08B79",
                     "#DE9F71", "#E7B565", "#EBCC5C", "#E7E55C", "#DCFF6C"),
    ferries = c("#241E33", "#1E2C54", "#003F69", "#005373", "#006372",
                "#007273", "#008174", "#349075", "#579E78", "#77AB7E",
                "#97B788", "#B3C493", "#CFD28F", "#F2DE83", "#FFE66C"),
    forest_fire = c("#2C0915", "#40111D", "#551A23", "#6A2626", "#7E3225",
                    "#92401D", "#A64F00", "#B96000", "#CB7100", "#DB8300",
                    "#E69800", "#EDAD00", "#F3C307", "#FAD753", "#FFEC7A"),
    sea = c("#1C1B23", "#222541", "#1F325A", "#094270", "#005282", "#0B6184",
            "#2F6F89", "#457D90", "#598C99", "#6B9AA3", "#7CA9AE", "#8DB9B9",
            "#9DC8C5", "#ADD8D2", "#BEE8DF"),
    sea_star = c("#4B0049", "#5D014F", "#700853", "#821554", "#932252",
                 "#963D4E", "#985350", "#95675B", "#B16D51", "#C3774D",
                 "#D48349", "#E48F43", "#F29C3B", "#FFAA3B", "#FFBA54"),
    volcano = c("#29272C", "#323335", "#3E3F3F", "#4A4B4B", "#555857",
                "#626561", "#71726B", "#837E77", "#8C8D87", "#989B98",
                "#A7A8A8", "#B5B7B7", "#C2C5C8", "#D3D3D9", "#E7E0E8"),
    baker = c("#7487A9", "#888BAF", "#9A8FB4", "#A994B7", "#B69AB9", "#C1A0BA",
              "#CAA8BB", "#D0B0BC", "#D6B9BE", "#DAC2C2", "#DDCBC8", "#E0D5CF",
              "#E3DDD8", "#E7E6E4", "#EFEEE7"),
    diablo = c("#172512", "#0E320C", "#003F0F", "#004C1A", "#005929",
               "#00663C", "#007051", "#007B63", "#008575", "#279085",
               "#3E9B96", "#51A6A6", "#63B2B7", "#75BDC7", "#87C8D8"),
    mountains = c("#002733", "#003141", "#003B50", "#004661", "#005172",
                  "#005C84", "#006797", "#0071AA", "#3A7BB5", "#5E85BE",
                  "#7990C7", "#8F9CCF", "#A4A8D8", "#B7B4E1", "#C8C2EA"),
    gorge = c("#00352A", "#00402F", "#004C33", "#005736", "#076338", "#236E38",
              "#387937", "#4D8434", "#658E3C", "#7C984D", "#91A15E", "#A5AB70",
              "#B7B583", "#C8C095", "#D9CBA7"),
    foothills = c("#171200", "#1E2100", "#242F00", "#2C3E15", "#374C30",
                  "#445A46", "#53695A", "#63786D", "#758780", "#869792",
                  "#99A6A4", "#ABB6B6", "#BEC7C8", "#D0D8DA", "#E3E9EC"),
    olympic = c("#2B213A", "#3C3A61", "#415988", "#577898", "#7A97A8",
                "#A1B4BB", "#CAD2D3", "#F1F1F1", "#C9D2D1", "#9CB6B0",
                "#6C9C8D", "#338367", "#006741", "#174729", "#192A1A"),
    vantage = c("#502C62", "#524F79", "#566E8E", "#638D9F", "#7BAAB0",
                "#9DC7C1", "#C4E2D6", "#EAFFEE", "#BAE8AB", "#ACC975",
                "#A4A83B", "#9A8621", "#8B6714", "#784812", "#632B13")
)

cont_pal = c("sound_sunset", "ferries", "forest_fire", "sea_star", "sea",
             "volcano", "baker", "diablo", "mountains", "gorge",
             "foothills", "olympic", "vantage")


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
#' @return A vector of colors of type `palette`. If printed to the console, will
#' plot the palette as well.
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

    if (name %in% cont_pal || n > length(pal))
        type="continuous"
    type = match.arg(type)

    if (type == "discrete")
        out = pal[1:n]
    else
        out = colorRampPalette(pal, space="Lab", interpolate="spline")(n)

    if (reverse) out = rev(out)

    structure(out, class="palette", name=name)
}
