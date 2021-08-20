#Task 1 Answer:
emp_names<- c("Ahmed","Mohamed","Ibrahim")

names(emp_names)<- c("emp1","emp2","emp3")

salary <- c(1000,1500,1250)

company <- rbind(emp_names,salary)

class(company)

#lec2
#assume you have market and the sales is represented as loss and profit:

sales_cost <- c(20:1)

sales_retail<- c(21:40)

profit<- sales_retail - sales_cost

d<-sales_cost[5]

sales_cost[c(2,6)]

sum(sales_cost[c(2,3)])



total_profit <- sum(profit)

sum(sales_cost[c(4,5)])

remove(sales_cost)


#Matrix:


matrix_name <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow = TRUE)

matrix_name 

View(matrix_name)

ss<-c("a","b","c")

colnames(matrix_name)<- ss




#Renaming the Matrix rows and column:


colnames(matrix_name)<- c("A","B","c") 

row.names(matrix_name)<- c("E","f")

#Slicing from matrix by row and col name and col number:

matrix_name["f","B"]

matrix_name[2,2]

#Runnig logic operators on Matrix:

matrix_name == 3
matrix_name <= 3
matrix_name >= 3

sum(matrix_name)

#to invert the col instead the row and vice versa use t() to transpose :

n_matrix<- t(matrix_name)

#sclicing by number of row and name of col:

matrix_name[1,c("A","B")]

#to give name for rows and col use dimnames :

dimnames(matrix_name)<- list(c("r1","r2"),c("col1","col2","col3"))

dimnames(matrix_name) <- list(c("r1","r2"),c("c1","c2","c3"))


Row <- c("R1","R2")
Col<-c("COL1","COL2","COL3")
dimnames(matrix_name) <- list(Row,Col)

colnames(matrix_name) <- c("A","B","c")  
row.names(matrix_name)<- c("E","f")  

bb <- c("R1","R2")
aa<-c("COL1","COL2","COL3")
colnames(matrix_name)<-aa
row.names(matrix_name)<-bb

#Creating value as column and row in Matrix:

matrix_name

# 1) creat column and row values:
col4<-c(7,8)
r3<-c(7,8,9)

#2)to bind col use:   

cc<-cbind(matrix_name, col4)
cc

#3) to bind row use:

zz<-rbind(matrix_name, r3)
zz
class(zz)
#---------------------------------------------------------------------------------------------

#Calculations on rows and columns of matrix:
#matrix[R,C]
sum(matrix_name)
sum(matrix_name[,2])
sum(matrix_name[1,1],matrix_name[2,2])
rowSums(matrix_name[1:2,])

colSums(matrix_name)
rowMeans(matrix_name)
colMeans(matrix_name)

#returning working directory
getwd()

setwd("D:/clinical data managment course acc/lec2 acc")


ls()
names(matrix_name)

dir()
#Home Work:

#make matrix called daily_calories by Kcal burned for the last 3 days where col names is 
#the day serial and row name is the type of excersie running, swimming and fitness by
#the following data: 
#day1 200 kcal running 300 kcal swimming and 250kcal fitness.
#day2 195 kcal running 265 kcal swimming and 300kcal fitness.
#day3 240 kcal running 310 kcal swimming and 225kcal fitness.

daily_calories <- matrix(c(200,300,250,195,265,300,240,310,225),nrow=3,ncol=3,byrow =F,
            dimnames = list(c("Running","Swimming","Fitness"),c("Day1","Day2","Day3")))








