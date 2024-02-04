datos<-read.csv("basededatos.csv")
head(datos)

x<-datos$Fecha #extra las fechas
n<-500 #es el indice numero 500
print(x[n]) #imprime la fecha
x<-strptime(x,"%d/%m/%Y")
print(x[n])#imrpime en formato de fecha
ry<-1900
print(x[n]$year+ry)#imprime el año en formato de fecha 
print(x[n]$mon+1)#imprime el mes en formato de fecha
print(x[n]$mday)#imprime el dia del mes
print(x[n]$wday)#imprime el dia de la semana
print(x[n]$yday)#imprime los dias del año
y = datos$SF43784 #saca los elementos de la etiqueta SF43787
y1=datos$SF43786
print(y[1])#imprime un valor
print(y1[1])
lbl ="N/E"#Busca el caracter N/E
idNE = y==lbl #Pregunto si esta ese caracter
idNE1 = y==lbl
y[idNE] =-1 # Le asigna a aquelos que son n/e a -1
y1[idNE1]=-1
print(y[1])#imprime el 1
print(y1[1])
#Ahora se van a graficar los datos
xy=x$year+1900#Se suman los años
#plot(xy,y,main="Grafica de tipo de cambio",xlab ="Fecha",ylab="Tipo de cambio")#Checa en forma de grafica lo que se haya


xy=unique(x$year+ry)
nxy =length(xy)
print(xy)

sx=matrix(0,ncol = nxy,nrow=1)
auxx=matrix(0,ncol=nxy,nrow = 1)
idV = y!=-1
idV1= y1!=-1

#graficar un año
s_year = 2023

sy = s_year-ry
idY = x$year == sy
idY1= x$year ==sy

xs = x[idY&idV]
ys = y[idY&idV]
ys1=y1[idY1&idV1]
#print(ys1)
plot(xs$yday,ys,main=sprintf('Grafica de tipo de cambio (%d)', s_year), xlab='Dia del año', ylab='Tipo de cambio', col="dark red", pch='\u2764', cex=1)
#plot(xs$yday,ys1,main=sprintf('Grafica de tipo de cambio (%d)', s_year), xlab='Dia del año', ylab='Tipo de cambio', col="dark green", pch='\u2764', cex=1)
#vmax=max(ys)
#vmin=min(ys)
#vmax1=max(ys1)
#vmin1=min(ys1)
#print(vmax)
#print(vmax1)
index=(1:length(ys))
index1=(1:length(ys1))
a=as.double(ys[index])-as.double(ys1[index1])
#print(a)
AsinSigno=(sqrt(a^2))
indexDif=(1:length(AsinSigno))
vmaxDif=max(AsinSigno);
local=(indexDif[a[indexDif]==vmaxDif])
print(vmaxDif)
print(xs[local])
print(ys[local])
print(ys1[local])
##print(ys)
#print(index)
#local=(index[ys[index]==vmax])
#local1=(index1[ys1[index1]==vmax1])
#print(xs[local])
#print(xs[local1])
#dia donde tuvo el maximo