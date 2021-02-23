#' Washington State Color Palettes
#'
#' A collection of colorblind-friendly color palettes for various settings in
#' the state of Washington.
#'
#' Available palettes (use [wa_pal()] to visualize):
#' `r paste0('* ``', names(wacolors), '``', collapse="\n")`
#'
#' @format A list of character vectors containing the color palettes. Some
#' vectors may contain names for each color.
#'
#' @examples
#' wacolors$rainier
#'
#' @export
wacolors = list(
    rainier = c(ground="#6D9537", lake="#364B6F", rock="#A1A2B7", trees="#2A4E45",
                lodge="#7F4E28", fall_bush="#E59A20", glacier="#DEE5F0"),
    rainier_meadow = c(ground="#6D9337", ragwort="#EECE12", paintbrush="#DE327D",
                       penstemon="#7754ED", western_anemone="#DCD5A8",
                       trees="#2A4B41", bog_orchid="#C1B062"),
    larch = c(larch="#DEA141", shrub="#313D23", rock="#8698A4",
              moss="#7F6A3D", dirt="#C9AB85", forest="#718C7D"),
    understory = c(shadows="#183314", trees="#425426", moss="#60652B",
                   tips="#719133", stream="#0D2633", dirt="#553727"),
    seattle_night = c(columbia="#1A243C", dock_lights="#CA893D", ferry="#7393C1",
                      seafirst="#0B0912", pike_clock="#F1383C", sky="#0C3E84",
                      smith="#C3B497", puddle="#372937"),
    seattle_fall = c("#756211", "#C7AA1F", "#C0664A", "#69798B", "#709FC3"),
    pike_place = c(neon="#F85051", lemons="#F3B866",
                   broccoli="#698423", seafood_sign="#2480F0", floor="#725334"),
    fort_worden = c(sea="#617493", shrub="#313E18", lighthouse="#A7B5C9",
                    rust="#8D5F12", gravel="#5E635F"),
    chambers_bay = c("#314008", "#7E92A6", "#7C5E31", "#11425C", "#E2EBF4"),
    stuart = c(rock="#435864", shore="#B9AA81", lupin="#564086",
               grass="#9F9F36", forest="#63664F", sky="#5688F8"),
    sound_sunset = c("#41527A", "#5C7293", "#7389A6", "#90929C",
                     "#B09982", "#DDAD7A", "#F3E8A0"),
    washington_pass = c(trees="#2C5843", stone="#416194", tips="#9FAA2A",
                        road="#729AB4", sunbreak="#D9D1AE", stump="#515467"),
    winthrop = c("#765E36", "#67747C", "#BF9A6E", "#3D4B27"),
    ross_lake = c(water="#3992C7", forest="#496E36", rock="#BFA580",
                  reflection="#183D26", mountain="#20476F", canoe="#A63634"),
    winter_mountain = c("#4D6E9F", "#9CB3DC", "#D0C5D1", "#F3ECE2", "#F1F1F1"),
    library = c(diamonds="#727E8A", fourthfloor="#F12D32",
                carpet="#CF967D", shadows="#3B3128"),
    ferries = c(deck="#2C303E", water="#3A4A6B", trim="#2A765D",
                windows="#80948D", sunset="#F3E5A9"),
    volcano = c(rock="#30353F", ash="#9F9B93", glacier="#D9E1EC"),
    locks = c(salmon1="#384230",  water="#6FB866", salmon2="#93C298"),
    deception_pass = c(water="#43667A", rock="#D7BF97",
                       trees="#687238", depths="#0E1C25"),
    scrubland = c(scrub="#827E4F", rock="#645F54", fire="#BAA036", sky="#66A3E4"),
    palouse = c("#B8990F", "#856A82", "#A59271", "#6994F7"),
    grand_coulee = c(columbia="#0B3D60", hills="#DCBA8D", dam="#5F7B86",
                     resevoir="#53A0CF", brush="#F0AE3F"),
    chihuly = c("#1E1A66", "#99150B", "#EAB926", "#77B6F3"),
    plane_view = c("#161F47", "#134575", "#4A72B8", "#99C6F7", "#DCE8F8"),
    UW = c(purple="#4B2E83", suzallo="#C3A46D", cherry="#E1B2B8",
           brick="#664333", suzallo_light="#D6B844", stone="#92847A"),
    flag = c(green="#007D50", yellow="#F7DB03", blue="#5EBFDE", tan="#FBDBC9"),
    tartan = c(green="#004500", gold="#B2B202", darkblue="#191959",
               red="#800000", medblue="#014098")
)

#' Washington State Color Palette Generator
#'
#' Generate `palette` objects from the `wacolors` list
#'
#' @param name The name of the palette (partial matching supported), or an
#'   actual palette from `[wacolors]`.
#' @param n The number of colors in the palette. If this exceeds the actual
#'   number and `type` is not provided, it will be set to `continuous`.
#' @param type Either `continuous` or `discrete`. Use `continuous` if you want
#'   to automatically interpolate between colors.
#' @param rev `TRUE` if palette should be reversed.
#'
#' @return A vector of colors of type `palette`
#'
#' @examples
#' wa_pal("rainier")
#' wa_pal(wacolors$rainier)
#'
#' @export
wa_pal = function(name, n, type=c("discrete", "continuous"), rev=FALSE) {
    obj = match_pal(name)
    pal = obj$pal
    name = obj$name

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

    if (rev) out = base::rev(out)

    structure(out, class="palette", name=name)
}
