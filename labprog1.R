#1st lab program

#1a
n<- as.integer(readline(prompt = "enter # of students:"))
usn<- vector(mode="character",length=n)
name<- vector(mode="character",length=n)
marks<- vector(mode="numeric",length=n)
print("enter usn,name,marks")
for (i in 1:n){
  usn[i]<-as.character(readline())
  name[i]<-as.character(readline())
  marks[i]<-as.integer(readline())
}
student<-data.frame(usn,name,marks)
print(student)

#1b
print("enter age")
age<-vector(mode="numeric",length=n)
for(i in 1:n){
  age[i]<-as.integer(readline())
}
student<-cbind(student,age)
print(student)

#1c
for(i in 1:n){
  if(student[i,][3]>25)
    if(student[i,][4]<20)
      print(student[i,])
}
