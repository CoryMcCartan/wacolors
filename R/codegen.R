#' Output a character vector containing code for a palette
#'
#' Call this function to get the code for a character vector containing a
#' palette.  If using RStudio, the code will be loaded at the console prompt;
#' otherwise, it will be printed at the terminal.
#'
#' @inheritParams wa_pal
#'
#' @return The generated code, invisibly, as a character vector.
#'
#' @examples
#' pal_vector("rainier", 4)
#'
#' @export
pal_vector = function(palette, n, which=NULL,
                      type=c("discrete", "continuous"), reverse=FALSE) {
    type = match.arg(type)
    pal = wa_pal(palette, n, which, type, reverse)
    varname = paste0("PAL_", toupper(attr(pal, "name")))
    code = paste0(varname, " = c(", paste0('"', pal, '"', collapse=", "), ")")
    code = paste0(strwrap(code, 76, indent=0, exdent=nchar(varname) + 5),
                  collapse="\n")
    code_output(code)
    invisible(code)
}

#' Output a character vector containing code for a `ggplot2` scale
#'
#' Call this function to get the code for the `scale_*` functions for a palette.
#' If using RStudio, the code will be loaded at the console prompt;
#' otherwise, it will be printed at the terminal. Assumes that `ggplot2` has
#' been loaded into the namespace, or will be by the time the scales are used.
#'
#' @param palette a `[wacolors]` palette or palette name.
#' @param which if not `NULL`, the indices or names of a subset of colors to use.
#' @param type Either `continuous`, `discrete`, or `binned`. Use `continuous` if
#'   you want to automatically interpolate between colors. Custom scale midpoints
#'   are not supported (see [scale_fill_wa_c()]).
#' @param reverse `TRUE` if the colors should be reversed.
#'
#' @return The generated code, invisibly, as a character vector.
#'
#' @examples
#' pal_functions("rainier")
#'
#' @export
pal_functions = function(palette, which=NULL, type=c("discrete", "continuous"),
                         reverse=FALSE) {
    pal = match_pal(palette)
    if (!is.null(which)) pal$pal = pal$pal[which]
    if (reverse) pal$pal = rev(pal$pal)
    names(pal$pal) = NULL

    make_discr = function(aesthetic) {
        pal_col_code = paste0("  pal_cols = c(", paste0('"', pal$pal, '"', collapse=", "), ")")
        pal_col_code = paste0(strwrap(pal_col_code, 76, indent=2, exdent=15), collapse="\n")
        pal_col_code = paste0(pal_col_code, "\n", "  n_col = length(pal_cols)\n")
        pal_fun_code = "  ramp = grDevices::colorRampPalette(pal_cols)\n"
        if (!(pal$name %in% cont_pal)) {
            pal_fun_code = paste0(pal_fun_code, "  pal_fun = function(n) ",
                                  "if (n <= n_col) pal_cols[1:n] else ramp(n)\n")
        } else {
            pal_fun_code = paste0(pal_fun_code, "  pal_fun = ramp\n")
        }
        pal_gen_code = paste0('  discrete_scale("', aesthetic, '", "',
                              pal$name, '", palette=pal_fun, ...)\n')

        fname = paste0("scale_", aesthetic, "_", pal$name, "_d")
        paste0(fname, " = function(...) {\n", pal_col_code,
               pal_fun_code, pal_gen_code, "}\n")
    }

    make_cont = function(aesthetic) {
        pal_cols = paste0("c(", paste0('"', pal$pal, '"', collapse=", "), ")")
        pal_gen_code = paste0("scale_", aesthetic, "_gradientn(..., colours=",
                              pal_cols, ")")
        pal_gen_code = paste0(strwrap(pal_gen_code, 76, indent=2,
                                      exdent=23 + (aesthetic=="color")), collapse="\n")
        fname = paste0("scale_", aesthetic, "_", pal$name, "_c")
        paste0(fname, " = function(...) {\n", pal_gen_code, "\n}\n")
    }

    make_binned = function(aesthetic) {
        pal_col_code = paste0("  pal_cols = c(", paste0('"', pal$pal, '"', collapse=", "), ")")
        pal_col_code = paste0(strwrap(pal_col_code, 76, indent=2, exdent=15), collapse="\n")
        pal_col_code = paste0(pal_col_code, "\n", "  n_col = length(pal_cols)\n")

        pal_fun_code = "  ramp = grDevices::colorRampPalette(pal_cols)\n"
        if (!(pal$name %in% cont_pal)) {
            pal_fun_code = paste0(pal_fun_code, "  pal_fun = function(n) ",
                                  "if (n <= n_col) pal_cols[1:n] else ramp(n)\n")
        } else {
            pal_fun_code = paste0(pal_fun_code, "  pal_fun = ramp\n")
        }

        pal_gen_code = paste0('  binned_scale("', aesthetic, '", "',
                              pal$name, '", palette=pal_fun, ...)\n')
        pal_gen_code = paste0(strwrap(pal_gen_code, 76, indent=2,
                                      exdent=23 + (aesthetic=="color")), collapse="\n")
        fname = paste0("scale_", aesthetic, "_", pal$name, "_b")
        paste0(fname, " = function(...) {\n", pal_col_code,
               pal_fun_code, pal_gen_code, "\n}\n")
    }

    code = ""
    if ("discrete" %in% type) {
        code = paste0(code, make_discr("color"), make_discr("fill"), "\n")
    }
    if ("continuous" %in% type) {
        code = paste0(code, make_cont("color"), make_cont("fill"), "\n")
    }
    if ("binned" %in% type) {
        code = paste0(code, make_binned("color"), make_binned("fill"), "\n")
    }

    code_output(code)
    invisible(code)
}

