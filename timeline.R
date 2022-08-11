install.packages("timelineS")
timelineS(mj_life, main = "Life of Michael Jackson")
eventos<-c("Estudios sobre microorganismos patógenos en murciélagos","Human Genome Project","Lederberg y McCray acuñan el término microbiota","Human Microbiome Project","Ley et al.","Phillips et al.","Earth Microbiome Project","Estudios de microbiomas en 205 especies de murciélagos (Jones et al., 2022")
fechas<-c("1965-12-01","1990-04-06","2001-04-02","2007-10-18","2008-06-30","2012-02-17","2014-12-01","2022-07-01")
fechas_1<-c(1965,1990,2001,2007,2008,2012,2014,2022)
datos<-data.frame(eventos,fechas_1)
timelineS(datos,main="No sé")
class(fechas)
fechas
x<-as.Date(fechas)
intento<-data.frame(eventos,x)
library(showtext)
par(mar=c(2,2,2,2))
dev.new(width=20, height=10, unit="in")
timelineS(intento,main="Línea de tiempo de los estudios de microbiomas",labels = eventos,label.length = c(0.25,0.25,0.25,0.5,0.5,0.75,0.75,0.8),label.font = 1)
tl
devsize(fig1, width = ps$width, height = ps$height)

intento2<-intento[-1,]
intento2$x<-as.Date(x[2:8])
timelineS(intento2,main="nose",labels = eventos)
