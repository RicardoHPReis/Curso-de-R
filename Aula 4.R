#Aula 4
# Gráfico
x<-rnorm(10,5,1); x
plot(x)
y<-rnorm(10,0,1); y
x<-sort(x)
y<-sort(y)
plot(x,y)
plot(x, main="Título", type="l", xlab = "Eixo X", ylab = "Eixo Y")
plot(x, main="Título", type="l", xlab = "Eixo X", ylab = "Eixo Y", xlim = c(1,7), ylim = c(3,5))
plot(x, main="Título", type="l", xlab = "Eixo X", ylab = "Eixo Y", axes = FALSE)
plot(x, y, main="Título", type="l", xlab = "Eixo X", ylab = "Eixo Y")

xx<-c(0.28, -0.4, 0.91, 1.37, 0.75, 1.09, -0.25, 0.28)
plot(xx, main = "Teste", xlab = "Eixo X", ylab = "Eixo Y", pch = 5, col = "Red")

z<-rnorm(10,2,1); z
plot(z)
points(z, pch = 5, col = "bLue")
rm(x, xx, y)
