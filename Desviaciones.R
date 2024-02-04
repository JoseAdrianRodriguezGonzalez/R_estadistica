n<-20;
x<-runif(n);#con este supone que el mas pequeño es el 0 y el maximo es 1
print(x);
min<-20;
max<-30;
y<-runif(n,min,max);#Tiene limites, ahora en este caso, va del 20 al 30
print(y);
z=trunc(y);#Aquí s etrunca los enteros de la misma variable y
print(z);
z1=ceiling(y);#redondea hacai arriba
print(z1);
z2=floor(y);#redonde hacia abajo
print(z2);