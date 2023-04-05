#Continuação de Gráficos
x<-seq(0,1,0.1)
y<-exp(x)
z<-x^2 #x**2 x^2
plot(x,y,main="Teste", xlab = "Eixo X", ylab = "Eixo Y", xlim = c(0,1), ylim = c(0,3))
points(x, z)
par(mfrow=c(1,3))
plot(x,y)
plot(x,z)
plot(y,z)
par(bg = "lightyellow", col.axis="blue", col = "red")
matplot(x, y)
dev.off()
temp1 = cbind(x,x,x)
temp2 = cbind(y,z,2*x)
matplot(temp1, temp2, col=c("green","red","blue"), type = "l", lty = c("dashed", "longdash", "twodash"), lwd = 2)
rm(x,y,z, temp1, temp2)

#Layout
mat = matrix(1:4, 2, 2)
layout(mat, widths = c(1,2), heights = c(1,3))
layout.show(4)
rm(mat)
