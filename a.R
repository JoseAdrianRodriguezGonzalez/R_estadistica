#data.frame, sirve para colocarle, valores de varias variables 
#write.csv permite generar un tipo de archivo en especifico
#read.csv, permite leeer un csv
#x=2:20;
#y=3*x+1;
#write.csv(y,"prueba.csv")
#
n=100;
x=2*pi*(0:n)/n;
y=sin(x);
write.csv(y,file="seno.csv");
datos=data.frame(x,y);
print(datos)
write.table(y,file="sin.csv",sep="\t")


##dd
y1=read.csv("seno.csv");
print(y1);
plot(x,y);
plot(x,y1$x);
dif=(y1$x-y)^2;
plot(x,dif)
print(sqrt(sum(dif)))
sx=y1$x;
indi= sx>=0
print(sum(sx[indi]));
print(sum(sx[!indi]))