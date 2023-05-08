#2nd program

#2a
n<-as.integer(readline(prompt="enter #no of employees:"))
empid<-vector(mode="character",length=n)
empname<-vector(mode="character",length=n)
doj<-vector(mode="character",length=n)
empcode<-vector(mode="numeric",length=n)
dept<-vector(mode="character",length=n)
desig<-vector(mode="character",length=n)
print("enter employee details:")
for(i in 1:n){
  empid[i]<-as.character(readline())
  empname[i]<-as.character(readline())
  doj[i]<-as.character(readline())
  empcode[i]<-as.integer(readline())
  dept[i]<-as.character(readline())
  desig[i]<-as.character(readline())
}

#2b
employees<-data.frame(empid,empname,doj,empcode,dept,desig)
print(employees)

#2c
write.csv(employees,"/home/somu/nmit/6th sem/lab/bdt/r/1nt20cs180_sravya_R/employees.csv")

#2e
emp<-read.csv("/home/somu/nmit/6th sem/lab/bdt/r/1nt20cs180_sravya_R/employees.csv")
print(emp)

#2f
print("enter a new row")
a<-readline("empid")
b<-readline("empname")
c<-readline("doj")
d<-readline("empcode")
e<-readline("dept")
f<-readline("desig")
x<-data.frame(a,b,c,d,e,f)
print(x)
write.table(x,"/home/somu/nmit/6th sem/lab/bdt/r/1nt20cs180_sravya_R/employees.csv",col.names=FALSE,append=TRUE,row.names = TRUE,quote = FALSE,sep=",")
emp<-read.csv("/home/somu/nmit/6th sem/lab/bdt/r/1nt20cs180_sravya_R/employees.csv")
print(emp)

