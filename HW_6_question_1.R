library(faraway)
data("worldcup")
head(worldcup,3)
library(dplyr)
worldcup<-worldcup %>%
mutate(top_four=Team %in% c("Spain", "Germany",  
                            "Uruguay", "Netherlands"))
summary(worldcup$ top_four)
ggplot(worldcup,aes(x=Time,y=Shots,color=top_four))+ 
  geom_point(size=1,position = "jitter",alpha=0.5) +
  xlab("Time played in World Cup (minutes)")
worldcup<-worldcup %>%
  mutate(top_four=factor(top_four,levels=c(TRUE, FALSE),
                         labels=c("Top4","others")))
summary(worldcup$ top_four)
ggplot(worldcup,aes(x=Time, y= Shots, color= top_four)) + 
  geom_point(size=1, position = "jitter", alpha= 0.5) +
  xlab("Time played in World Cup (minutes)")
# facet grid
ggplot(worldcup, aes(x = Time, y = Shots,
                     color = top_four)) +
  geom_point(size = 1.5, position = "jitter",
             alpha = 0.5)  + 
  xlab("Time played in World Cup (minutes)") + 
  scale_color_discrete("teams final") +
  facet_grid(.~Position)
# reordering
worldcup<-worldcup %>%
mutate(Position=factor(Position,levels=c ("Goalkeeper", "Defender",
                 "Midfielder", "Forward")))
levels=(worldcup$Position)
summary(worldcup$Position)

ggplot(worldcup, aes(x = Time, y = Shots,
                     color = top_four)) +
  geom_point(size = 1.5, position = "jitter",
             alpha = 0.5)  + 
  xlab("Time played in World Cup (minutes)") + 
  scale_color_discrete("teams final") +
  facet_grid(.~Position)
# Max shots
most_shots<- worldcup %>%
filter(Shots==max(Shots))
most_shots
 #
ggplot(worldcup, aes(x = Time, y = Shots,
                     color = top_four)) +
  geom_point(size = 1.5, position = "jitter",
             alpha = 0.5)  + 
  xlab("Time played in World Cup (minutes)") + 
  scale_color_discrete("teams final") +
  facet_grid(.~ Position) +
  geom_text(data=most_shots,
aes(label=paste(Player,"")),
colour="black,size=3,
hjust=1,vjust=0.4))

# Data Visulaization cheat sheets


shot_plot <- ggplot(worldcup, aes(x = Time, y = Shots,
                     color = top_four)) +
geom_point(size = 1.5, position = "jitter",
alpha = 0.5)  + 
 xlab("Time played in World Cup (minutes)") + 
scale_color_discrete(name = "Team's final\n ranking") + 
facet_grid (. ~ Position) + 
geom_text(data = most_shots,
aes(label = paste (Player, " ")),
colour = "black", size = 3,
hjust = 1, vjust = 0.4)
shot_plot + theme_tufte()
library(ggthemes) 

###
a <- ggplot(seals, aes(x = long, y = lat))
a + geom_curve(aes(yend = lat + delta_lat,
xend = long + delta_long, curvature = z)))

x, xend, y, yend, alpha, angle, color, curvature,linetype, size 


b <- ggplot(economics, aes(date, unemploy))
b + geom_path(lineend="butt",
linejoin="round’, linemitre=1)
x, y, alpha, color, group, linetype, size)))
##
b + geom_ribbon(aes(ymin = unemploy - 900, ymax = unemploy + 900))
c + geom_dotplot()
f + geom_violin(scale = "area")
h + geom_hex()
j + geom_pointrange()
k + geom_map(aes(map_id = state), map = map) + 
expand_limits(x = map$long, y = map$lat)
l + geom_contour(aes(z = z))
n <- d + geom_bar(aes(fill = fl))
n + scale_fill_brewer(palette = "Blues")
o <- c + geom_dotplot(aes(fill = ..x..))
o + scale_fill_gradient(low = "red", high = "yellow")
t + facet_grid(year ~ fl)
s + geom_bar(position = "fill")
##
a <- ggplot(seals, aes(x = long, y = lat))
b <- ggplot(economics, aes(date, unemploy))
c <- ggplot(mpg, aes(hwy))
d <- ggplot(mpg, aes(fl))
e <- ggplot(mpg, aes(cty, hwy))
f <- ggplot(mpg, aes(class, hwy))
g <- ggplot(diamonds, aes(cut, color))
h <- ggplot(diamonds, aes(carat, price))
i <- ggplot(economics, aes(date, unemploy))
df <- data.frame(grp = c("A", "B"), fit = 4.5, se = 1:2)
j <- ggplot(df, aes(grp, fit, ymin = fit - se, ymax = fit + se))
data <- data.frame(murder = USArrests$Murder,
state = tolower(rownames(USArrests)))
map <- map_data("state")
k <- ggplot(data, aes(fill = murder))
seals$z <- with(seals, sqrt(delta_long^2 + delta_lat^2))
l <- ggplot(seals, aes(long, lat))
s <- ggplot(mpg, aes(fl, fill = drv))
t <- ggplot(mpg, aes(cty, hwy)) + geom_point()

#3
#
b + geom_ribbon(aes(ymin = unemploy - 900, ymax = unemploy + 900))
c + geom_dotplot()
f + geom_violin(scale = "area")
h + geom_hex()
j + geom_pointrange()
k + geom_map(aes(map_id = state), map = map) + 
expand_limits(x = map$long, y = map$lat)
l + geom_contour(aes(z = z))
n <- d + geom_bar(aes(fill = fl))
n + scale_fill_brewer(palette = "Blues")
o <- c + geom_dotplot(aes(fill = ..x..))
o + scale_fill_gradient(low = "red", high = "yellow")
t + facet_grid(year ~ fl)
s + geom_bar(position = "fill")
