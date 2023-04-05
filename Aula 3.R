#Aula 3
# ENtrando com dados

teste<- scan()
teste

teste<-edit(teste)
rm(teste)

coord = read.table("coord.txt", header = TRUE); coord
coord$y
class(coord)
rm(teste, coord)

#Uso da função read.csv()
csv<-read.csv("alunosR.csv"); csv

#########################################################
#Instalando pacote
install.packages("dplyr")
