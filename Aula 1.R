#Aula 1 - Pacotes e funções

library() #mostra todos os pacotes instalados
#Pacote Base

x<--10 #Atribui o valor -10 para a variavel x
x      #retorna o valor do objeto
abs(x) #retorna o valor absoluto

#################################
notas<-c(10,10,8.5,9.5) #Vetor
m = mean(notas) #Atribui a um objeto, a média de notas
ls() #Lista os onjetos criados
rm(x, notas, m) #Ou Remove()

#################################
#2.0 Operações aritméticas, podendo ser usado como calculadora
2+4*3
2**6
sin(pi) -> angulo #Atribui ao objeto o valor de sen(pi)
round(angulo, 2)
sin(pi/2)
factorial(5)
rm(angulo)

#################################
#3.0 Criando objetos/atributos
t<-sqrt(4)
t
mode(t)
a = -2; b<-8i; c<-"Texto"; d = c(10, 2); TRUE->e
mode(a); mode(b); mode(c); mode(d); mode(e);
is.complex(b)
is.array(d)
length(d) #retorna o comprimento do vetor
d[2]
rm(a,b,c,d,e,t)

################################
#4. Objetos especiais
v1<-c(1, 2, 3)
v2<-c(4, 5, 6)
v3<-c(7, 8, 9)
v4<-c(a, b, c, d, e)
v5<-c(v1,v2)
mode(v4)
attributes(v1)
rm(v1,v2,v3,v4,v5)

################################
#4.1 Vetores a partir de sequencias
1:10
100:10
seq(1,10,2)
seq(10,1,-3)

rep(5,4)
rep(1:10, 5)
r<-rep(c(1,5,3),3)
rep(c(0,1), c(10,5))
mode(r)
class(r)
x<-"100"
rep("Teste", x)
y<-69.99
rep("Arredondar", round(y))
rm(r, x, y)

##############################
#4.2 Matrizes - matrix(), cbind(), rbind()
x<-1:12
xmat<-matrix(x, ncol=3, byrow=TRUE)
xmat
A<-cbind(v1,v2,v3); A
B<-rbind(v1,v2,v3); B
X<-matrix(10:1, ncol=2); X
Y<-cbind(X, 1:5); Y
Z<-rbind(Y, seq(1, 101, 50)); Z
X[4,2] #Extrai elemento da 4º linha e da 2º coluna
X[2,]
X[,1]
X[c(1,3,5),1]
X[2:4,]
X[6]
class(X)
rm(X, x, xmat, A, B, Y, Z)

alunosR<-cbind(1:5, c(19,20,21,19,20), c(1,1,1,1,0)); alunosR
colnames(alunosR)<-c("Nº", "Idade", "Sexo"); alunosR
rownames(alunosR)<-C("Fernando", "William", "", "", "Bianca"); alunosR
fem = alunosR[,3] == 0; fem
fem = alunosR[alunosR[,3] == 0,]; fem
