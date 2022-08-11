library(tidyverse)
library(MetBrewer)
library(showtext)
colnames(articulo)[1]<-"taxa"
datos<-separate(articulo, taxa,into = c("a","b"),sep = " ")
ordenes<-subset(datos,a=="Order")
ordenes$a<-NULL
sort(ordenes$Species)
intento<-ordenes[order(ordenes$Species,decreasing = TRUE),]
colores<-met.brewer("Austria")
colores

font_add_google("Roboto Slab","Roboto Slab")
font.families()
showtext_auto()
font1<-"Roboto Slab"
############## PLOT #############################
plot<-ggplot(data = intento,aes(reorder(b,-Species),y=Species,fill=b))+
  geom_bar(stat = "identity",position = "dodge",colour="black")+theme_classic()+
  theme(axis.text.x = element_text(angle = 90))+
  theme(legend.position = "none")+
  xlab("Orden")+
  ylab("Número de especies")+
  scale_fill_manual(values =c(colores[6],colores[6],colores[6],colores[7],rep(colores[6],23)))+
  theme(axis.title = element_text(family = font1,face="bold"))+
  theme(axis.text = element_text(family = font1))+
  labs(caption = "Burgin et al., 2018")+
  theme(plot.caption = element_text(family = font1))+
  labs(subtitle = "El orden Chiroptera constituye aproximadamente el 20% de todas las especies de mamíferos conocidos y son los únicos mamíferos que tienen la capacidad de volar.")+
  theme(plot.subtitle = element_text(family = font1))
ggsave("graph.png",plot = plot)
