a <- c("brain", 2, TRUE)
a

b <- c(1:5)
b

c <- 40
c


# Save all objects in your workspace to an .RData file
#save(a, b,file = "workspace.RData")

save("a","b","c",file ="testworkspace.RData")

#load("workspace.RData") this will not open file but just enlist objects in envt panel
load("testworkspace.RData")

#Write one object in your workspace to a file using saveRDS().
#a <- 1
#saveRDS(object = a, file = "a.rds")

d <- 100
d
saveRDS(d,"d.rds")

#Remove one object from your workspace.
rm(a,b)

load("testworkspace.RData")

## remove all objects from the workspace
#rm(list = ls())

ls()
rm(list = ls())

# to see if all deleted, character(0)displayed
ls()

# get working directory
#getwd()

getwd()

#Create a new directory and set the working directory in that new directory
# create a new directory
#dir.create("new_directory")

dir.create("new_directory")

setwd ("new_directory")
getwd()
load("../testworkspace.RData")

#a_restored <- readRDS(file = "a.rds")--need to do all steps again for flow of commands

d <- 100
d
saveRDS(d,"d.rds")
new_d <-  readRDS(file = "d.rds")
new_d

#Use readRDS() to load the file my_day2matrix.rds and assign the object to the name m.
#
a_restored <- readRDS(file = "a.rds")

m <- readRDS(file="/project/shared/r/1_r_data_science/2-base/my_day2matrix.rds")
m

colSums(m)

m1 <-  cbind(m, col_sum = colSums(m)) #did col sum not row sum, i made a new matrix
m1


data("ToothGrowth")
#help page file browse - ToothGrowth to enlist class types. ALso str gives class info
str(ToothGrowth)

mean(ToothGrowth$len)
max(ToothGrowth$len)
min(ToothGrowth$len)
colSums(ToothGrowth$len) #runs into error as expected
rowSums(ToothGrowth$len) #runs into error as expected

data(airquality)
help("airquality")
class(airquality)
colnames(airquality)

#Sort the data frame by increasing value in the Ozone column
Ozone_ordered <- order(airquality$Ozone)
airquality [Ozone_ordered, ]

View(airquality)


#Sort the data frame by Month in increasing order and Temp in decreasing order
#o <- order(df$batch, df$group) is it this?
airquality_Month_Temp <-  airquality[order(airquality$Month, -airquality$Temp), ]
airquality_Month_Temp

airquality_Month_Temp <-  airquality[order(airquality$Month, -airquality$Temp), ]
airquality_Month_Temp

write.table(airquality_Month_Temp, file = "airquality_sorted.txt", sep = "\t", row.names = FALSE, quote = FALSE)

read.table ("airquality_sorted.txt")

read.delim("airquality_sorted.txt")

read.csv("airquality_sorted.txt")

read.csv("airquality_sorted.txt", sep = ",")



head(airquality)


help(nchar)

hypothenuse <- function (a, b) {
  #srcvubinjk
  total <- sqrt(a^2 + b^2)
  return (total)
}
hypothenuse(3,4)

x <- 1:10
x
lapply(x, FUN = log2)
sapply(x, FUN = log2)
l <- list(c(TRUE, FALSE), 1:3, c(x,z), "R course")

lapply(l, FUN = sum)


for(i in 1:7){ print (i^3)}
# Write a for loop that iterates over the names of the columns in the builtin data set iris and prints each
#column name together with the number of characters in that column name.
#Example output: Sepal.Length: 12
#Hint: use the functions print(), paste0(), and nchar().
#Remember to read the help page of each function to learn more about them.

colnames(iris)

print(nchar(colnames(iris)))
nchar(colnames(iris))
paste0(print (colnames(iris)), nchar(colnames(iris)) )
paste0(print (colnames(iris)),":", nchar(colnames(iris)) )
paste0(print (,":", nchar(colnames(iris)) )
    
i <- paste0(colnames(iris), ":", nchar(colnames(iris))) #this worked to add info to i in the required format
i #visualised i
i <- paste0(colnames, ":", nchar(colnames)) 

#you can assign i in for to any word ie number, columnname, but for convenience, it is just i

for( n in colnames(iris)) {print (paste0(n, ":", nchar(n)))} #worked, 
#n is columnnames here, used instead of "i" ie what we are looking for in the database, print is what that "n in this case or i is required to do

for (n in colnames(iris)) {print(paste0(colnames(iris), ":", nchar(colnames(iris))))}#worked but gave output 5 times

for (n in colnames(iris)) {print(paste0(n, ":", nchar(n)))} 
# so you want column names in iris, assign that as n, you want that n printed, so it will print column names now, 
#along with characters of that n, ie those columns, so paste0 paste those info together, with semicolon delimitor


l <- list(c(TRUE, FALSE), 1:3, c(1,2,3), "R course")
l
lapply (l, sum, na.rm=TRUE)
sapply(l, sum, na.rm=TRUE)

#Use sapply() on the list that you created in part 2, to repeat each element of each vector three times.
i.e., 1, 2, 3 should become 1, 1, 1, 2, 2, 2, 3, 3, 3
l <- list(c(TRUE, FALSE), 1:3, c(1,2,3), "R course")
l
sapply(l, rep, each =3) #worked
l <- list(c(TRUE, FALSE), 1:3, c(1,2,3), "R course")
l
sapply(l, FUN = rep, each =3) #worked
sapply(l, FUN = rep, times =3) 



#Run the code below to create two data frames.
buildings <- data.frame(
  site = c(1, 2, 3),
  name = c("b1", "b2", "b3"))
survey_data <- data.frame(
  survey = c("A", "A", "A", "B", "B", "B"),
  location = c(1, 2, 3, 2, 3, 1),
  efficiency = c(51, 64, 70, 71, 80, 58))

#What is the shared information in these two data frames
#site and location

#Use the merge() function to combine the two data frames by the shared information into a new data frame
#called buildings_survey

buildings <- data.frame(
  site = c(1, 2, 3),
  name = c("b1", "b2", "b3"))
survey_data <- data.frame(
  survey = c("A", "A", "A", "B", "B", "B"),
  location = c(1, 2, 3, 2, 3, 1),
  efficiency = c(51, 64, 70, 71, 80, 58))
merge.data.frame(x=buildings, y=survey_data, by.x = "site", by.y ="location", all=FALSE)

buildings_survery <- merge(x=buildings, y=survey_data, by.x = "site", by.y ="location", all=TRUE)
buildings_survery


#Compute the mean of each numeric column each month in the airquality data frame using aggregate().
#Make sure NA values are removed
#aggregate(x = iris, by = list(species = iris$Species), FUN = mean, na.rm = TRUE)
head(airquality)
aggregate(x=airquality, by = list(month=airquality$Month), FUN = mean, na.rm = TRUE)

# Compute the mean of the Solar.R column each month.
#Make sure the grouping column is called Month in the return value.
#Make sure NA values are removed.

aggregate(x=airquality, by = list(Month = airquality$Solar.R), FUN = mean, na.rm = TRUE)
aggregate(x=airquality, by = list(solar_R_Month = airquality$Solar.R), FUN = mean, na.rm = TRUE)


#Use the ifelse() function to print the name of colours that are made up of four characters in the vector
#my_colours below.
#my_colours <- c("red", "orange", "purple", "yellow", "pink", "blue")
#ifelse(test = c(TRUE, TRUE, FALSE, FALSE), yes = "Pass", no = "Fail")

my_colours <- c("red", "orange", "purple", "yellow", "pink", "blue")
my_colours
nchar(my_colours)
ifelse(test= my_colours, nchar(my_colours)=4, yes="pass", no = "Fail") #wrong doesnt specify nchar 4
ifelse(test= nchar(my_colours)==4, yes="pass", no = "Fail") #worked with ==, not = 
ifelse(test= nchar(my_colours)=4, yes="pass", no = "Fail")
ifelse(test= nchar(my_colours)==4, my_colours, NA) #worked
#this way enlist them, but should not wirte pass fail, instead use NA, and enlist them from my_colours
