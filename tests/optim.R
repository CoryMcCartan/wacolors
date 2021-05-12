# Tests and optimizations
library(colorspace)
library(ggplot2)


#####
sea_star = sequential_hcl(15, h=c(-50, 48), l=c(15, 80),
                          c=c(35, 90), cmax=98, power=c(2.2, 1))
sea_star = divergingx_hcl(15, h1=-50, h2=25, h3=48, l1=15, l2 = 48, l3 = 81,
                          c1=35, cmax1=70, c2=35, cmax2=98, c3=90,
                          p1=0.8, p2=1, p3=0.6, p4=1)
specplot(sea_star, sound_sunset)
plot_hl(sea_star)
tvc(sea_star)


#####
vantage = divergingx_hcl(15, h1=290, h2=110, h3=30, l1=30, l2 = 98, l3 = 30,
                         c1=40, cmax1=10, c2=15, cmax2=70, c3=50,
                         p1=0.5, p2=1, p3=0.4, p4=1)
plot_hl(vantage)
specplot(vantage)
tvc(vantage)


#####
ss_old = c("#41527A", "#5C7293", "#7389A6", "#90929C",
           "#B09982", "#DDAD7A", "#F6E297")
sound_sunset = divergingx_hcl(15, h1=-112, h2=-14, h3=72, l1=11, l2 = 53, l3 = 95,
                              c1=18, cmax1=50, c2=28, cmax2=92, c3=80,
                              p1=1.9, p2=1, p3=0.4, p4=1)
specplot(sound_sunset, viridis::cividis(15))
specplot(sound_sunset, viridis::magma(15))
specplot(sound_sunset, viridis::inferno(15))
specplot(ss_old, sound_sunset[c(2,4,6,8,10,12,14)])
plot_hl(sound_sunset)
tvc(sound_sunset)

#####
ff_old = c("#3A2620", "#7A4424", "#CD5A0D", "#FE8B00", "#FFD874")
specplot(ff_old)
forest_fire = sequential_hcl(15, h=c(-15, 75), l=c(12, 93),
                            c=c(18, 60), cmax=190, power=c(0.4, 1))
specplot(forest_fire, viridis::inferno(15))
plot_hl(forest_fire)
#specplot(forest_fire, ff_old)
tvc(forest_fire)

#####
sea = sequential_hcl(15, h=c(270, 170), l=c(10, 88),
                     c=c(18, 22), cmax=50, power=c(3.0, 1))
specplot(sea)
plot_hl(sea)
tvc(sea)

#####
f_old = c(deck="#2C303B", water="#3A4A6B", trim="#2C745F",
          windows="#8AA297", sun="#F4E8C8")
specplot(f_old)
ferries = divergingx_hcl(15, h1=275, h2=160, h3=50, l1=13, l2 = 55, l3 = 97,
                         c1=12, cmax1=50, c2=38, cmax2=33, c3=85,
                         p1=3, p2=1, p3=1.5, p4=1)
specplot(ferries, viridis::viridis(15))
specplot(ferries, colorRampPalette(f_old)(15))
plot_hl(ferries)
plot_hl(viridis::viridis(15))
tvc(ferries)

#####
v_old = c(rock="#30353F", ash="#9F9B93", glacier="#D9E1EC")
specplot(v_old)
volcano = divergingx_hcl(15, h1=280, h2=60, h3=300, l1=16, l2 = 53, l3 = 90,
                         c1=3, cmax1=0, c2=7, cmax2=0, c3=6,
                         p1=0.8, p2=1, p3=0.8, p4=1)
specplot(volcano, colorRampPalette(v_old)(15))
plot_hl(volcano)
tvc(volcano)


#####
m_old = c("#161F47", "#134575", "#4A72B8", "#99C6F7", "#DCE8F8")
specplot(m_old)
mountains = sequential_hcl(15, h=c(235, 285), l=c(10, 80),
                           c=c(25, 35), cmax=65, power=c(1.1, 1))
specplot(mountains, colorRampPalette(m_old)(15))
plot_hl(mountains)
plot_hl(sea)
tvc(mountains)

#####
foothills_winter = sequential_hcl(15, h=c(80, 220), l=c(5, 92),
                                  c=c(15, 5), cmax=30, power=c(2.5, 1.0))
specplot(foothills_winter)
plot_hl(foothills_winter)

#####
wm = c("#4D6E9F", "#9CB3DC", "#D0C5D1", "#F3ECE2", "#F1F1F1")
specplot(wm)
baker = sequential_hcl(15, h=c(-110, 100), l=c(60, 97),
                       c=c(30, 2), cmax=0, power=c(0.6, 1))
specplot(baker, colorRampPalette(wm)(15))
plot_hl(baker)
tvc(baker)


#####
mountains_sound = divergingx_hcl(15, h1=130, h2=190, h3=280, l1=15, l2=95, l3=15,
                                 c1=10, cmax1=45, c2=0, cmax2=45, c3=15,
                                 p1=1.4, p2=1, p3=1.4, p4=1)
specplot(mountains_sound)
plot_hl(mountains_sound)


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
