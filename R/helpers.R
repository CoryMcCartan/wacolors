#' Takes name of palette or palette itself and returns palette + name
match_pal = function(name) {
    found_name = pmatch(name, names(wacolors))
    if (!any(is.na(found_name))) {
        pal = wacolors[[found_name]]
    } else if (all(is.na(found_name)) && all(startsWith(name, "#"))) {
        pal = name
        try_match = vapply(wacolors, FUN=function(x) isTRUE(all.equal(x, pal)),
                           FUN.VALUE=logical(1))
        name = names(wacolors)[try_match]
    } else {
        stop("Palette `", name, "` not found.")
    }

    list(pal=pal, name=name)
}

#' Create HTML code to view palette
#'
#' @export
palette_html = function(x, maxwidth="30em", height="1em", ...) {
    n <- length(x)

    cat('<div class="color-palette">',
        '<span style="text-weight: bold">', attr(x, "name"), '</span>',
        '<div style="display: flex; flex-direction: row; width: 100%; ',
            'height: ', height, '; max-width: ', maxwidth, ';">',
            paste0('<div style="flex-grow: 1; background: ', x,
                   ';"></div>', collapse=""),
        '</div>',
        '</div>', sep="")

    invisible(x)
}


# `print.palette` modified from that in `wesanderson` (c) 2016 Karthik Ram
#' @export
#' @importFrom graphics rect par image text
print.palette = function(x, ...) {
    n <- length(x)
    old <- par(mar=c(0.5, 0.5, 0.5, 0.5))
    on.exit(par(old))

    image(1:n, 1, as.matrix(1:n), col=x,
          ylab="", xaxt="n", yaxt="n", bty="n")

    rect(0, 0.9, n + 1, 1.1, col=grDevices::rgb(1, 1, 1, 0.8), border=NA)
    text((n + 1) / 2, 1, labels=attr(x, "name"), col="black", cex=1, font=2)

    print(unclass(x))
    invisible(x)
}

# `plot.palette` modified from that in `wesanderson` (c) 2016 Karthik Ram
#' @export
#' @importFrom graphics rect par image text
plot.palette = function(x, ...) {
    n <- length(x)
    old <- par(mar=c(0.5, 0.5, 0.5, 0.5))
    on.exit(par(old))

    image(1:n, 1, as.matrix(1:n), col=x,
          ylab="", xaxt="n", yaxt="n", bty="n")

    rect(0, 0.9, n + 1, 1.1, col=grDevices::rgb(1, 1, 1, 0.8), border=NA)
    text((n + 1) / 2, 1, labels=attr(x, "name"), col="black", cex=1, font=2)
}

#' Paste-to-hex
#' @keywords internal
pth = function(x) {
    rgb = as.list(as.integer(strsplit(x, "\\s")[[1]]) / 256)
    col = do.call(colorspace::sRGB, rgb)
    str = paste0('"', colorspace::hex(col), '"')
    rstudioapi::insertText(rstudioapi::getActiveDocumentContext()$selection[[1]]$range, str)
    rstudioapi::sendToConsole(str, execute=F)
}
