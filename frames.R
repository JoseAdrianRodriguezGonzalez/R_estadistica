n<-8
df<-data.frame(a=1:n,b=letters[1:n])
print(df)
print(df[4,2]);#de esta manera puedo encontrar los caracteres
print(df[4,1]);#De esta manera puedo encontrar los numeros
print(df$a)#encuentra todo los valores de la columna de a
m<-12 
df2 <-data.frames(a=(n+1):m,)