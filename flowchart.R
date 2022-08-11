library(tidyverse)
library(showtext)
library(MetBrewer)
font_add_google("Roboto Slab")
showtext.auto()
data <- tibble(x= 1:100, y= 1:100)
head(data)
data %>% 
  ggplot(aes(x, y)) +
  scale_x_continuous(minor_breaks = seq(10, 100, 10)) +
  scale_y_continuous(minor_breaks = seq(10, 100, 10)) +
  theme_linedraw() ->
  p
font<-"Roboto Slab"
################### PLOT ###################
 
p+geom_rect(xmin = 32, xmax=68, ymin=80, ymax=100, color='black',fill=colores[4], size=0.25, size=0.25)+
  annotate('text', x= 50, y=90,label= 'Control de calidad de reads o amplicones', size=4.5,family=font)+
  geom_rect(xmin = 32, xmax=68, ymin=50, ymax=70, color='black',fill=colores[5], size=0.25) +
  annotate('text', x= 50, y=60,label= 'Anotación de las secuencias', size=5,family=font)+
  geom_segment(
    x=50, xend=50, y=80, yend=70, 
    size=0.15, linejoin = "mitre", lineend = "butt",
    arrow = arrow(length = unit(1, "mm"), type= "closed"))+
  geom_rect(xmin = 32, xmax=68, ymin=20, ymax=40, color='black',fill=colores[6], size=0.25)+
  annotate('text', x= 50, y=30,label= 'Predicción taxonómica y funcional', size=5,family=font)+
  geom_segment(x=50, xend=50, y=50, yend=40, 
               size=0.15, linejoin = "mitre", lineend = "butt",
               arrow = arrow(length = unit(1, "mm"), type= "closed"))+
  theme_void()+
  theme() 

colores<-met.brewer("Benedictus")
colores
