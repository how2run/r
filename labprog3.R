#lab program 3

#a
data() #lists out all data sets in the rstudio

#b
mtcars #data in the particular dataset name

head(mtcars) #displays only few rows and columns in the data set

d<- data.frame(mtcars)
print(d)

nrow(mtcars) #no of rows
ncol(mtcars) #no fo cols

#c
manual<-0
automatic<-0
x<-nrow(mtcars)
print(x)
for (i in 1:x)
  ifelse(d[i,9]==1,manual<-manual+1,automatic<-automatic+1)
ifelse(automatic>manual,print("more automatic"),print("more manual"))
print(manual)
print(automatic)

#d
hp<-d[,4]
weight<-d[,6]
scatter.smooth(hp,weight)

mp<-d[,1]
hist(mp,breaks=12,col="lightblue",border="pink")

#e
am<-as.integer(d[,2])
cyl<-as.integer(d[,9])
vs<-as.integer(d[,8])
newmtc<-data.frame(am,cyl,vs)
print(newmtc)

#f
subset(mtcars,cyl<5)
