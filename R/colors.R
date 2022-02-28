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
#' **Available continuous palettes**:
#'
#' `r paste0('![](README-cont-palettes-', seq_along(cont_pal), '.png)\n', collapse="\n")`
#'
#' **Available discrete palettes**:
#'
#' `r paste0('![](README-disc-palettes-', seq_len(length(wacolors) - length(cont_pal)), '.png)\n', collapse="\n")`
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
    san_juan = c(trees="#21281D", grass="#CA884C", sea="#3A5775",
                 driftwood="#BAAF9F", clouds="#C9DCE2"),
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
    baker = c("#627F9A", "#7684A7", "#8B88B1", "#A08CB9", "#B490BF", "#C795C3",
              "#D69CC3", "#E1A5C0", "#E9AFBE", "#EEBABD", "#F2C6BE", "#F4D2C2",
              "#F4DEC9", "#F5E9D3", "#F6F4E5"),
    diablo = c("#172512", "#0E320C", "#003F0F", "#004C1A", "#005929",
               "#00663C", "#007051", "#007B63", "#008575", "#279085",
               "#3E9B96", "#51A6A6", "#63B2B7", "#75BDC7", "#87C8D8"),
    puget = c("#1D3024", "#123C2E", "#00483E", "#005352", "#005C67", "#01657D",
              "#386B91", "#5F6FA3", "#8272B1", "#A175B8", "#B87DB8", "#CB86B6",
              "#DA92B3", "#E69FAF", "#EFAEAB"),
    mountains = c("#002733", "#003141", "#003B50", "#004661", "#005172",
                  "#005C84", "#006797", "#0071AA", "#3A7BB5", "#5E85BE",
                  "#7990C7", "#8F9CCF", "#A4A8D8", "#B7B4E1", "#C8C2EA"),
    gorge = c("#00352A", "#00402F", "#004C33", "#005736", "#076338", "#236E38",
              "#387937", "#4D8434", "#658E3C", "#7C984D", "#91A15E", "#A5AB70",
              "#B7B583", "#C8C095", "#D9CBA7"),
    foothills = c("#001C28", "#00262D", "#003233", "#003E39", "#004B3E",
                  "#005841", "#006542", "#00723F", "#007F38", "#18893C",
                  "#529249", "#739C5B", "#8FA572", "#A6AF8C", "#B9BAAF"),
    footbridge = c("#32221C", "#42291C", "#50311D", "#5E391D", "#6B431C",
                   "#774C1E", "#7D5933", "#846545", "#8B7155", "#927C64",
                   "#9A8873", "#A39481", "#ACA08E", "#B6AC9B", "#C1B8A7"),
    olympic = c("#2A2A40", "#3E3E63", "#535285", "#6B6B98", "#8484A4",
                "#9E9EB4", "#B9B9C5", "#D4D4DA", "#B3BDB0", "#93A58E",
                "#738F6A", "#517942", "#396128", "#2D4823", "#232F1F"),
    lopez = c("#A3730F", "#B2833A", "#C19456", "#D0A570", "#DEB689", "#EBC8A3",
              "#F6DBBF", "#F1F1F1", "#DBDCFF", "#C9CAFA", "#B7B8F0", "#A5A7E5",
              "#9496DA", "#8385CE", "#7275C2"),
    vantage = c("#473065", "#5B497F", "#70629B", "#857EAB", "#949EB5",
                "#A4BDC6", "#C0DAD6", "#EFF2E5", "#DCD797", "#C5BB61",
                "#AD9F3C", "#9A8224", "#89641E", "#774718", "#632B14"),
    stuart = c("#4F3173", "#6F457F", "#8D5C8C", "#A87499", "#C18FA8",
               "#D8AAB8", "#EDC7CB", "#FFE2DE", "#F6C7AE", "#D8B07A",
               "#AF9C57", "#85884B", "#617344", "#425C3D", "#2C4534")
)

cont_pal = c("sound_sunset", "ferries", "forest_fire", "sea_star", "sea",
             "volcano", "baker", "diablo", "puget", "mountains", "gorge",
             "foothills", "footbridge", "olympic", "lopez", "vantage", "stuart")


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
#' @return A vector of colors of type `palette`. Use the `plot()` function to
#'   plot the palette. If the `cli` package is installed, printing the palette
#'   to the console will also show its colors.
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
