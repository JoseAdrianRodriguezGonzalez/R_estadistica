datos<-read.csv("Metro_Interstate_Traffic_Volume.csv")
fh<-datos$date_time;
fh_d<-as.POSIXlt(fh,"%d-%m-%y %H:%m:%s")
fl<-datos$traffic_volume

idsd<-fh_d$wday==1
idsh<-fh_d$hour==7
idn<-(fh_d$hour<5)|(fh_d$hour>19)
idm<-(fh_d$hour>=5)&(fh_d$hour<12)
idt<-(fh_d$hour>=12)&(fh_d$hour<19)
print(mean(fl[idsd&idn]))
print(mean(fl[idsd&idm]))
print(mean(fl[idsd&idt]))
median(fl)