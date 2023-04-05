#Aula 2
# 4.3 Data frames

#Lendo arquivos de texto read.table()

musicas = read.table("musicas.txt", sep = ","); musicas
class(musicas)
coluna = musicas[, 4]; coluna
coluna = musicas$V5; coluna #Usar $ para extrair variáveis em data.frames
mode(coluna)
names(musicas) <- c("Código","Banda","Música","Faixa","Distribuição")
musicas$Música
musicas<-cbind(musicas, Nota = c(4,6,7,7,8,3,9.5)) #Para acrescentar uma coluna, utiliza-se o cbind()
rm(musicas, coluna)

#Operacoes de Matrizes
col1 = c(2,1,0)
col2 = c(1,3,1)
col3 = c(1,1,2)
col1*col2 #MUltiplicacao simples
col1%*%col2 #Multiplicacao matricial
rm(col1, col2, col3)

A<-cbind(col1, col2, col3); A
inversa = solve(A); inversa # Inversão de matriz
round(inversa %*% A) #Matriz identidade
t(A) #MAtriz transposta

x<-1:10
sum(x) #Soma todos os elementos do vetor
sum(x[x<5])
sum(A[1,])
rm(x, inversa, A)
