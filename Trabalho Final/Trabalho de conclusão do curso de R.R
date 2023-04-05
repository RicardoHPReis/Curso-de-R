# Trabalho de conclusão do curso de R
# Aluno: Ricardo Henrique Pires dos Reis
# Professor(a): Thais Marianne e Patricia Sánez P.

# Exercício 1
# a)
tabela1 <- read.csv("Tabela1 do Curso de R.csv"); tabela1;
tabela2 <- read.csv("Tabela2 do Curso de R.csv"); tabela2;

is.data.frame(tabela1)
is.data.frame(tabela2)

# b)
todosNomes <- c(tabela1$Nome, tabela2$Nome); todosNomes

# c)
rownames(tabela1) <- c("Aluno 1", "Aluno 2", "Aluno 3", "Aluno 4", "Aluno 5", "Aluno 6")
rownames(tabela2) <- c("Aluno 1", "Aluno 2", "Aluno 3", "Aluno 4", "Aluno 5", "Aluno 6")
colnames(tabela1) <- c("Nome", "Idade", "Sexo", "Nota")
colnames(tabela2) <- c("Nome", "Idade", "Sexo", "Nota")
tabela1
tabela2

# Exercício 2
install.packages("dplyr")
library(dplyr)

tabelaConjunta <- rbind(tabela1, tabela2)
rownames(tabelaConjunta) <- c("Aluno 1", "Aluno 2", "Aluno 3", "Aluno 4", "Aluno 5", "Aluno 6", "Aluno 7", "Aluno 8", "Aluno 9", "Aluno 10", "Aluno 11", "Aluno 12")
tabelaConjunta

# a)
alunos18Anos <- tabelaConjunta %>% filter(Idade > 18); alunos18Anos

# b)
alunosNota80 <- tabelaConjunta %>% filter(Nota > 80); alunosNota80

# c)
alunosMasculinos <- tabelaConjunta %>% filter(Sexo == 0); alunosMasculinos


# Exercício 3
library(MASS)
matrizTemperatura <- matrix(nottem, nrow = 20, byrow = TRUE)
rownames(matrizTemperatura) <- 1920:1939
colnames(matrizTemperatura) <- c("Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez")

# a)
menorTemperatura <- matrizTemperatura[1,1]
menorTempAno <- 1920
for(a in 1:20)
{
    for(b in 1:12)
    {
        if(menorTemperatura > matrizTemperatura[a,b])
        {
            menorTemperatura <- as.numeric(matrizTemperatura[a,b])
            menorTempAno <- rownames(matrizTemperatura)[a]
        }
    }
}

# b)
mediaTemperaturaPorAno <- rowMeans(matrizTemperatura)
  
# c)
mediaTemperaturaGeral <- mean(matrizTemperatura)
  
# d)
fahrenheitParaCelsius <- function(t)(
  t <- as.numeric(((t-32)*5)/9)
)

matrizConvertida <- apply(matrizTemperatura, c(1,2), fahrenheitParaCelsius)

# Exercício 4
# OBS: Fiz com a matriz convertida para C°
plot(matrizConvertida[1,], main = "Questão 4", type="l", xlab = "Meses do ano", ylab = "Temperatura", col = "red", ylim=c(0,20), xlim=c(1,13), lwd=3)
points(matrizConvertida[9,], type="l", col = "blue", lwd=3, lty = "longdash")
points(matrizConvertida[16,], type="l", col = "orange", lwd=3, lty = "dashed")
text(x=12.5, y=c(matrizConvertida[1,12], matrizConvertida[9,12] + 0.5, matrizConvertida[16,12]), labels=c("1920", "1928", "1935"), col=c("red", "blue", "orange"))
