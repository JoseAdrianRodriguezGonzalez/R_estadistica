x=3:9;# Crea un vector, por sucesión
y=c(1,5,23);#Asignar manualmente los elementos del arreglo
c=c(2,4,6) #Crea otro arreglo
d=(2:9)*5; #Crea otro vector
z=2*(0:10)+1; #aquí le podemos variar la cantidad de valores del vector, en este caso impares
w=(0:10)*pi/10; #Crea otro vector, este con valores de pi
print(sin(w));# imprime los valores de seno, para cada valor del arreglo
n<-length(w);#La longitud del vector 
print(w); 
print(w[2*(1:5)+1]);

id=c(FALSE, TRUE)
print(w[id]);