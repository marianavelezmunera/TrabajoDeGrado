library(showtext)
showtext.auto()
font_add_google("Roboto")
install.packages("wordcloud2")
library(wordcloud2)
head(demoFreq)
taxon<-c("Proteobacteria","Actinobacteria","Firmicutes","Acidobacteria", "Bacteroidetes", "Cyanobacteria", "Fusobacteria")
freq<-c(2,1.5,1,0.75,0.5,0.25,0.1)
datos<-data.frame(taxon,freq)
wordcloud2(data=datos, size=1,fontFamily = "Roboto")
