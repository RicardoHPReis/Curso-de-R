# Rotinas de Programação
#Funções

teste<-1:20
media<-function(dados)
{
  m<-sum(dados)/length(dados); m
}
media(teste)

media2<-function(dados)
{
  m<-sum(dados)/length(dados)
}
m<-media2(teste); m

media3<-function(dados)
{
  print(sum(dados)/length(dados))
}
media3(teste)
rm(teste, m, media, media2, media3)

#Dois parâmetros
menos<-function(a, b)
{
  r<-a-b
  return(r)
}
menos(15, 7)
menos(6:15, 2:11)
rm(menos)

#Condicionais
x = 10
y = 4

if(x < 10 & y > 5) "Verdadeiro" else "Falso"
#x<10 & y>5 ? TRUE : FALSE
if(x==10) "Sim"

#ifelse

ifelse(x==10, TRUE, FALSE)
ifelse(teste %% 2 == 1, TRUE, FALSE)
ifelse(teste %/% 2 == 3, "Sim", teste + 2)
rm(x, y)

#LOOPS

loop1<-function(objeto)
{
  for(i in 1:15)
    print(objeto)
}
loop1("Curso de R")

loop2<-function(obj)
{
  i<-0
  while(i<6)
  {
    print(obj)
    i<-i+1;
  }
}
loop2("Texto")

v<-10:20
for(i in 1:11)
{
  v[i] = v[i] + 1
}
v

loop3 = function(a, b)
{
  w = 11:20
  if(a == 1 | b > 2)
  {
    for(i in 1:10)
      w[i] = w[i]+a+b 
  }
  w
}
loop3(1,3)
rm(loop1, loop2, loop3, v, i)
