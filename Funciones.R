#Para poder crear una funcion en r, se utilzia la nomenclatura
#nombre_de_la_funcion<-function(argumento1,argumento2,..,argumenton){
#Instrucciones
#return(valor)}
cuadrado<-function(x) #Funcion en la que eleva el cuadrado y suma con 4, a su vez que retorna
{
  x^2#Lo eleva al cuadrado
  z=x^2+4#suma el x^2 más un cuatro
  return(z)#Retorna el valor de resultado
}
print(cuadrado(3));#Imprime el cuadrado de 3
cuadradoDoble<-function(x,n)#Crea la funcion x^n
  x**n
print(cuadradoDoble(3,4));#imprime 3^4
print(cuadradoDoble(c(2,3,5),c(10,5,1)))#Crea un vector de 2^10,3^5,5^1
