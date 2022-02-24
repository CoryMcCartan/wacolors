if (F) {
# Tests and optimizations
library(colorspace)
library(ggplot2)


# sound_sunset ####
ss_old = c("#41527A", "#5C7293", "#7389A6", "#90929C",
           "#B09982", "#DDAD7A", "#F6E297")
sound_sunset = divergingx_hcl(15, h1=-122, h2=-6, h3=100, l1=9, l2 = 52, l3 = 95,
                              c1=18, cmax1=40, c2=33, cmax2=45, c3=88,
                              p1=1.9, p2=1, p3=0.8, p4=1)
specplot(sound_sunset, viridis::cividis(15))
specplot(sound_sunset, viridis::magma(15))
specplot(sound_sunset, viridis::inferno(15))
specplot(viridis::magma(15), viridis::inferno(15))
specplot(ss_old, sound_sunset[c(2,4,6,8,10,12,14)])
testpal(sound_sunset)
plot_hl(sound_sunset)
tvc(sound_sunset)

# ferries ####
f_old = c(deck="#2C303B", water="#3A4A6B", trim="#2C745F",
          windows="#8AA297", sun="#F4E8C8")
specplot(f_old)
ferries = divergingx_hcl(15, h1=275, h2=160, h3=60, l1=13, l2 = 54, l3 = 94,
                         c1=12, cmax1=50, c2=40, cmax2=32, c3=90,
                         p1=3, p2=1, p3=3.2, p4=1)
specplot(ferries, viridis::viridis(15))
specplot(ferries, colorRampPalette(f_old)(15))
plot_hl(ferries)
plot_hl(viridis::viridis(15))
tvc(ferries)


# sea_star ####
#sea_star = sequential_hcl(15, h=c(-50, 48), l=c(15, 80),
#                          c=c(35, 90), cmax=98, power=c(2.2, 1))
sea_star = divergingx_hcl(15, h1=-50, h2=25, h3=48, l1=15, l2 = 48, l3 = 81,
                          c1=35, cmax1=70, c2=35, cmax2=98, c3=90,
                          p1=0.8, p2=1, p3=0.6, p4=1)
specplot(sea_star, sound_sunset)
specplot(sea_star, viridis::rocket(15))
plot_hl(sea_star)
tvc(sea_star)


# forest_fire ####
ff_old = c("#3A2620", "#7A4424", "#CD5A0D", "#FE8B00", "#FFD874")
specplot(ff_old)
forest_fire = sequential_hcl(15, h=c(-5, 75), l=c(7, 93),
                            c=c(12, 76), cmax=120, power=c(1.1, 1))
specplot(forest_fire, viridis::inferno(15))
specplot(forest_fire, wa_pal("sea_star", 15))
plot_hl(forest_fire)
#specplot(forest_fire, ff_old)
tvc(forest_fire)

# sea ####
sea = sequential_hcl(15, h=c(270, 172), l=c(10, 89),
                     c=c(4, 22), cmax=52, power=c(2.9, 1))
specplot(sea, viridis::mako(15))
plot_hl(sea)
testpal(sea)
tvc(sea)


# volcano ####
v_old = c(rock="#30353F", ash="#9F9B93", glacier="#D9E1EC")
specplot(v_old)
volcano = divergingx_hcl(15, h1=280, h2=60, h3=300, l1=16, l2 = 53, l3 = 90,
                         c1=3, cmax1=0, c2=7, cmax2=0, c3=6,
                         p1=0.8, p2=1, p3=0.8, p4=1)
specplot(volcano, colorRampPalette(v_old)(15))
plot_hl(volcano)
testpal(volcano)
tvc(volcano)


# mountains ####
m_old = c("#161F47", "#134575", "#4A72B8", "#99C6F7", "#DCE8F8")
specplot(m_old)
mountains = sequential_hcl(15, h=c(210, 272), l=c(10, 80),
                           c=c(25, 32), cmax=65, power=c(1.1, 1))
specplot(mountains, colorRampPalette(m_old)(15))
testpal(mountains)
plot_hl(mountains)
plot_hl(sea)
tvc(mountains)

# baker ####
wm = c("#4D6E9F", "#9CB3DC", "#D0C5D1", "#F3ECE2", "#F1F1F1")
specplot(wm)
baker = sequential_hcl(15, h=c(-120, 80), l=c(52, 96),
                       c=c(30, 12), cmax=40, power=c(0.6, 1))
specplot(baker)
specplot(baker, colorRampPalette(wm)(15))
testpal(baker)
plot_hl(baker)
tvc(baker)


# diablo ####
diablo = sequential_hcl(15, h=c(120, 212), l=c(13, 77),
                        c=c(10, 37), cmax=52, power=c(3.2, 1))
specplot(diablo)
testpal(diablo)
plot_hl(diablo)
plot_hl(sea)
tvc(diablo)

# puget ####
puget = sequential_hcl(15, h=c(140, 375), l=c(18, 77),
                       c=c(10, 44), cmax=52, power=c(1.9, 1))
specplot(puget)
plot_hl(puget)
testpal(puget)
tvc(puget)

# gorge ####
gorge = sequential_hcl(15, h=c(170, 70), l=c(18, 82),
                        c=c(20, 30), cmax=56, power=c(1.15, 1))
specplot(deutan(gorge))
specplot(gorge)
testpal(gorge)
plot_hl(gorge)
tvc(gorge)

# foothills####
foothills = sequential_hcl(15, h=c(212, 90), l=c(5, 75),
                                  c=c(16, 8), cmax=68, power=c(0.7, 1.0))
specplot(foothills, gorge)
plot_hl(foothills)
testpal(foothills)
tvc(foothills)

# footbridge ####
footbridge = sequential_hcl(15, h=c(30, 65), l=c(15, 75),
                           c=c(10, 15), cmax=45, power=c(1.8, 1.0))
specplot(footbridge)
plot_hl(footbridge)
testpal(footbridge)
tvc(footbridge)

# olympic ####
olympic = divergingx_hcl(15, h1=120, h2=NA, h3=266, l1=18, l2=85, l3=18,
                         c1=10, cmax1=45, c2=5, cmax2=45, c3=15,
                         p1=1.4, p2=1, p3=1.4, p4=1) %>%
    rev()
specplot(olympic)
plot_hl(olympic)
testpal(olympic)
tvc(olympic)


# vantage ####
vantage = c(divergingx_hcl(8, h1=280, h2=270, h3=144,
                            l1=25, l2=60, l3=95,
                            c1=36, cmax1=46, c2=24, c3=10, p1=0.5, p3=0.8)[-8],
            hcl(96, 10, 95),
            divergingx_hcl(8, h1=84, h2=76, h3=24,
                           l1=95, l2=60, l3=25,
                           c1=32, cmax1=68, c2=52, cmax2=60, c3=44, p1=0.9, p3=0.4)[-1])
specplot(vantage)
testpal(vantage)
plot_hl(vantage)
tvc(vantage)


# lopez ####
lopez = diverging_hcl(15, h1=52, h2=265, l1=52, l2=95,
                      c=65, p1=0.4, p2=1)
specplot(lopez)
plot_hl(lopez)
testpal(lopez)
tvc(lopez)


# stuart ####
stuart = divergingx_hcl(15, h1=-80, h2=20, h3=140,
                        l1=27, l2=93, l3=27,
                        c1=45, cmax1=20, c2=25, cmax2=55, c3=15,
                        p1=0.7, p2=1.0, p3=0.8)
specplot(stuart)
plot_hl(stuart)
testpal(stuart)
tvc(stuart)


# HELPER FUNCTIONS --------------------------------------------------------

plot_hl = function(pal) {
    coords = as(hex2RGB(pal), "polarLUV")@coords
    ggplot(NULL, aes(x=coords[,"H"], y=coords[,"L"], color=pal)) +
        geom_point(size=3) +
        scale_color_identity() +
        coord_polar() +
        xlim(0, 360) +
        ylim(0, 100)
}

plot_ab = function(pal) {
    coords = as(hex2RGB(pal), "LAB")@coords
    ggplot(NULL, aes(x=coords[,"A"], y=coords[,"B"], color=pal)) +
        geom_point(size=3) +
        scale_color_identity()
}

tvc = function(palette) {
    varname = deparse(substitute(palette))
    code = paste0(varname, " = c(", paste0('"', palette, '"', collapse=", "), ")")
    code = paste0(strwrap(code, 76, indent=0, exdent=nchar(varname) + 5),
                  collapse="\n")
    code_output(code)
}

testpal = function(pal) {
    par(mfrow=c(2, 2), mar=rep(1, 4))
    hclplot(pal)
    demoplot(pal, "map")
    demoplot(pal, "scatter")
    demoplot(pal, "spine")
}

test_all = function(type="map") {
    dim = ceiling(sqrt(length(wacolors)))
    par(mfrow=c(dim, dim), mar=rep(0.2, 4))
    for (pal in wacolors) {
        demoplot(pal, type)
    }
}

}
