#lab program 4

#a
df<-airquality
df
head(airquality) #prints only sample values of the dataset
dim(df)
dim(airquality)

#b
sapply(df,class)
sapply(airquality,class)

#c
col<-colnames(df)
col
print("missing values areas follows")
x<- colSums(is.na(df))
x

#d
df2<- na.omit(df)
df2
which(is.na(df))
sum(is.na(df))
df1<-as.data.frame(df)
df1

#e
for(i in 1:6){
  df1[i]<-ifelse(is.na(df[i]),mean(df[,i],na.rm=TRUE),df[,i])
}
df1
