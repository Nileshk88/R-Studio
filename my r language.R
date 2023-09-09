"hello world"
'hello world'
hello world

#to output numbers

5
5,10,20 #will rAISE error
(10,20)
20

c(10,20)

#variable

name1="amit"
name1
name2="neha"
name="snehal1"
name
name2

age=25
age
x=21
x

Name #capital N hence raise error

num="20"

age=age+5
age

num=num+5
num

4*8


text="excellent" #concatenate/combine text u
paste("ExcelR is",text) # Concatenate /combine text using paste() function
paste("students are",text)

#assign same value to same variables in single time
var1=var2=var3="orange"

#legal variable names

myvar="snehal"
my_var="meenal"
myVAR="manish"
MYvar="nilesh"
myvar2="nilesh"
this.year=2022

#illegal variable names

2myvar ="s"
my-var ="s"
my var ="s"
_my_var="s"
my_v@var="s"
TRUE="s"


# data types in R
#numeric/float - decimal whole +ve -ve L

x=10.5
class(x)
class(name)

#integer-whole +ve -ve L
y = 1000L
class(y)

#character/string
x="R is exciting"
class(x)

# logical / boolean

x= TRUE
class(x)
x= F

3>5
5>3
5==5 #comparison operater 


1!=6 #not equal to 


#arithmatic operaters
x=20
y=3


x+y
x-y
x*y
x/y #float/decimal result
x^2
x %% y #modules
x%/%y #integer division

2*pi*6378
pi
2*pi
??constants

LETTERS
letters
month.name


# assignment operator
x=50
50 -> x


# built in match functions

max(29,78,10) #maximum
min(2,10,3) #minimum
sqrt(25) #square root
abs(-4.5) #abstract


#data structures: vectors,
#homogeneous vectors
#vector of strings
fruits=c("banana","apple","orange","strawberry")
class(fruits)

#vector of numerical
n1= c(3,6,9,2)
class(n1)
n2=c(T,F,TRUE,FALSE)
class(n2)


#Heterogeneous vector
mix=c(81,5.2,"banana",TRUE,5L,F)
class(mix)


x=c(2,5,8,4)
y=c(1,9,9,9)

x+y
x*5
(x+y)*1.5


#sequence
1:10

1:1000
40:45

seq(1,50,5) #start value,end value,step/increment value
seq(1,50,by=3)
seq(1,10) #default/increment is 1
seq(10,1,-2) 

# Repetition
rep(45,7)
rep("Mango",5)

# Random Sample

sample(1:50,8)
sample(1:10,200)#error default value for replace=FALSE
sample(1:10,200,replace=TRUE)
sample(c("HP","Apple","Lenovo"),50,replace=T)


##########################################

# Indexing / Accessing Vector elements

x=c(2,0,0,4)
x[1]
x[c(1)]
x[-1] # exclude 1st element
x[-2]
x
x[-4]
x[1]= 3
x

x[-1]= 5
x
x[3]=10
x[4]=7
x[c(1,3)]

y=c(1,9,9,9)

y<9

y[y<9]=7
y[y>7]=10
y

# Relational operators with vectors

marks=c(60,70,80,50,90)

marks>50

marks[marks>50]

marks==80

names=c("Snehal","Pooja","Vidya","Ganesh")

"Pooja" %in% names

"Meenal" %in% names

"Mona" %in% names


##### Slicing ####

marks

marks[3:7]
marks[4]

marks[3]=97

marks

marks[-3]=100
marks[6]=90

price=c(2999,449,29,650,2800,192,9384,373,474,4745)
price[2:7]

#select elements from a vector with conditions

price[price>1000]

sort(price)

sort(price,decreasing = T)
help(sort)
help(mean)


# Basic Functions on Vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
help(mode)
mode(price)


# Data Frames
# Slicing Data Frames

a=c(42,18,91,87,66)
b=c("p","q","r","s","t")
data.frame(a,b)
df=data.frame(a,b)

df1=data.frame(
  Training=c("Strength","Stamina","Other"),
  Pulse=c(100,150,120),
  Duration=c(60,30,45)
)

df1

df1[,1] #all rows, 1st col
df1[2,] #2nd row and all coloums
df1[,]

df1$Training


df2=data.frame(height=c(150,160),weight=c(65,72))



food=data.frame(name=c("Pav Bhaji","Paneer Masala","Kaju Katli",
                        "Butter Chicken","Gulabjamun","Mutton Biryani"),
                 type=c("Veg","Veg","Veg","Nonveg","Veg","Nonveg"),
                 taste=c("Spicy","Spicy","Sweet","Spicy","Sweet","Spicy"),
                 price=c(120,235,420,340,90,315))

food

# Rows with food type: Veg

food[food$type=="Veg",]

# Food names and prices of all nonveg items

food[food$type=='Nonveg',c(1,4)] 
#or 
food[food$type=='Nonveg',c("name","price")]

# all spicy food with price less than 300

food[food$taste=='Spicy' & food$price<300,]

# Orange, mtcars are built in data set. Learn with this dataset.
Orange
mtcars

dim(mtcars) # no of rows and no of columns
nrow(mtcars) #no of rows
ncol(mtcars) #no of columns
str(mtcars) # structure - col names data type and values
summary(mtcars)
help(mtcars) #info of dataset
mtcars$cyl # individual col cyl values
table(mtcars$cyl) # there are 11 cars having 4 cylinders, 7 cars - 6 cyl, 14 cars - 8 cyl
table(mtcars$gear)

#USArrests - another dataset
USArrests
help("USArrests")
View(USArrests) # dataset opens in new windows in table structure 

head(USArrests) #by default shows first 6 records
tail(USArrests)
head(USArrests,8)

# check all available datasets
data()
