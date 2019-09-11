#To find out arithmetic mean of given number
mean(1:5) # To find mean

# Case sensitive#
Mean(1:5)

#Assignment operator
a=5
a
a1 <-5 #get operator
a1
5 -> a2
a2

# Data Structure of R - Vector
1:10
x <- 1:10
x
class(x)

x2 <- c(1,3,2,8,11)
x2
class(x2)

x3 <- c(2,4.5,7,9)
x3
class(x3)

seq(from=0, to=100, by= 2)
seq(0,100,2)

x4 = c(3+4i,5+6i,4-3i)
x4
class(x4)

x5 <- c(TRUE,FALSE,T,F)
x5
class(x5)

x6 = c("Budha","Amit","Surojit","Swarnava")
x6
class(x6)

class(x6[1])

x7 = c(1,3,5,7,"Tanoy")
x7
class(x7)

x8 = c(TRUE,FALSE,T,F,1,3,4)
x8
class(x8)


x9 = c(TRUE,FALSE,T,F,"Tanoy")
x9
class(x9)

x10 = c(3+4i,5+6i,4-3i,TRUE,FALSE)
x10
class(x10)

#Operation of Vector

1:5
6:10

1:5 + 6:10 #Vectorize operaton
c(1,2,3,4,5) + c(6,7,8,9,10)
1:5 + 6:13 #Vectorize operaton
c(1,2,3,4,5,1,2,3) + c(6,7,8,9,10,11,12,13) #Vectorize operation

#Comparision
c(3,4-1,2+1,17-9,5) == 3
c(3,4-1,2+1,17-9,5) > 3
c(3,4-1,2+1,17-9,5) >= 3
c(3,4-1,2+1,17-9,5) <= 3
c(3,4-1,2+1,17-9,5) != 3

y1 = 1:5
y2 = 6:10
(y1+1)*(y2+1)

#Matrix

m = 1:8
m

dim(m) = c(2,4)
m

m1 = matrix(1:8,2,4)
m1

m2 = matrix(1:8,2,4,byrow = TRUE)
m2

m3 = matrix(1:16,4,4)
m3
m3[3,4]
m3[3,]
m3[,2]
class(m3)
class(m3[,2])

# Array
my_array = array(1:70,c(2,4,3))
my_array

my_array[2,,]
class(my_array[2,,])
class(my_array)
class(my_array[2,,2])

#DataFrame
df <- read.csv("C:/Personal/1000-Startups.csv")
class(df)
class(df$Year.Founded)

#List
list1 = list(x3,x4,x5)
list1
list1[2]

list1 = list(x4,m3,my_array)
list1
names(list1) <- c("my_vector","my_matrix","my_array")
list1
list1$my_vector
list1$my_matrix
list1$my_array

list1 = list(x4,m3,my_array,df)

fileloc = "C:/Personal/Training-20181215T015344Z-001/MegaMerchandise.csv"
order = read.csv("C:/Personal/Training-20181215T015344Z-001/MegaMerchandise.csv")
View(order)
ncol(order)
colnames(order)
head(order)
tail(order)
nrow(order)
class(order)

#Factor 
gender = c("male","female","male","female","abc")
gender
class(gender)
gender_fac = factor(gender)
gender_fac
as.integer(gender_fac)

response <- c("Okay","Not Okay","Okay","Not Okay","Absoultly Ok")
response
response_fact <- factor(response)
response_fact
res_order_fact <- ordered(response,levels=c("Not Okay","Okay","Absoultly Ok")) 
res_order_fact
as.integer(res_order_fact)

#Data Frame
View(order)
class(order)
dim(order)
colnames(order)
names(order)
rownames(order)
str(order)

order1 = read.csv(fileloc,stringsAsFactors = FALSE)
str(order1)
View(order1)
order1$Customer.Name <- factor(order1$Customer.Name)
length(order)
length(order1$Order.Date)
head(order,10)
tail(order1,8)
View(order1)
order[1:5,2:5]
order2 <- order1[1:5,2:5]
order9 <- order1[1:5,1]
View(order2)
order3 <- order1[7:12,2:5]
View(order3)
order4 = order[24:50,c(1,3,5)]
View(order4)
View(order1)
order5 <- subset(order1,order1$Region == "West")
View(order5)
order6 <- subset(order1,(order1$Region == "West" & order1$State == "Wyoming"))
View(order6)
str(order6)
min(order6$Postal.Code)
max(order6$Postal.Code)
paste("Tanoy","Bhattacharya",sep = "**")
order6$City_Segment <- paste(order6$City,order6$Segment,sep = "**")
View(order6)
order8 <- rbind(order2,order3)
View(order8)
order10 <- cbind(order2,order9)
View(order10)
??smartbind


??smartbind


smartbind(order10,)

install.packages("gtools")

name_vec = c("America","Americas","The United State of America","USA","Japan")
name_vec
pattern = "America|USA"
grep(name_vec,pattern = pattern)
grepl(name_vec,pattern = pattern)
name_vec[grep(name_vec,pattern = pattern)] = "USA"
name_vec

course = c("R Tutorial R Tutorial","PHP Tutorial R Tutorial","HTML Tutorial","R Tutorial PHP Tutorial")
course
sub("Tutorial","Example",course)
gsub("Tutorial","Example",course)
course <- gsub("Tutorial","Example",course)

order6$NewState <- gsub("Wyoming","Middlesex",order6$State,ignore.case = TRUE)

order6$OrderCode = substr(order6$ï..Order.ID,0,2)

x1 <- "Windows users had a problem because Stata was unable to find"
x1 <- strsplit(x1," ")
x1
class(x1)
x1 <- unlist(x1)

x1<-toupper(x1)
x1 <- tolower(x1)

sort_vec = c(10,432,1,3,32,32,43)
sort_vec = sort(sort_vec,decreasing = TRUE)
sort_vec
sort_vec[order(sort_vec)]
str(order6)
order_sorted = order6[order(-order6$Postal.Code),]
View(order_sorted)

order1_sorted = order1[order(order1$Region, -order1$Postal.Code),]
View(order1_sorted)

data()
data(USArrests)
class(USArrests)
head(USArrests,7)
View(USArrests)

data(package = .packages(TRUE))
data(heart,package = "survival")
View(heart)
a= 12
b= 34
c= 23
x = c(a,b,c)
avg = mean(x)
avg

data()
USPersonalExpenditure
View(USPersonalExpenditure)
str(USPersonalExpenditure)
View(state.x77)
states = state.x77
