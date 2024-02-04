#x=1:100;
n<-300;#n valdrá 100
x<-10*pi*(-n:n)/n;#Crear los valores del vector
y<-tanh(x);#Generar la función
print(y);#Escribirlo en pantalla
plot(x,y,type='S',col="red",lwd="1",cex=1, xlab="Tiempo",ylab="Altura");#Graficar
#z<-cos(x);
#plot(x,z,type="S",col="blue",lwd="2",cex=3, pch=".", main = "Grafica de coseno",t)
