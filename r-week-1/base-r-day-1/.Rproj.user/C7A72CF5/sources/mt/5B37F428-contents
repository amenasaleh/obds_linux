100*56/4
letters
sd(1:2)
sd(1:2)^2
x<-100
print(x)
a <- (1:200)
print (a)
a*123
a [44]
b <- a*123
b[44]
b_sub<- b[1:15]
b_sub
b_sub <- (24108, 24231)
b_sub <- 24108, 24231
c(b_sub, 24108, 24231)
b_sub <- c(b_sub, 24108, 24231)
m <- c('actb','100','3.4')
#when adding numbers you add them without quotes, but for text ie non numbers we use quotes  
m
m[2]
(m[2])*4
c <- c("you","sally","tom","harry")
c
m
m]
m <- c(100, 200, 300) # the m[2]*4 command did not work on the previous m set because they were treated as alphanumeric, when i made a list of only numbers that workd
m[2]*4
#m <- matrix(data = 1:200, nrow = 10, ncol = 20, byrow = FALSE)
m1 <- matrix(data = 1:9, nrow = 3, ncol = 3, byrow = FALSE)
m1
m1[2,3]
m2 <- matrix(data = 1:12, nrow = 3, ncol = 4, byrow = TRUE)
m2
rownames(m2) <- paste0("ROW_", 1:nrow(m2))
colnames(m2) <- paste0 ("COL_", 1:ncol(m2))
m2

#a <- array(data = 1:12, dim = c(2, 3, 2))
a <-  array(data = 1:24, dim = c(4,2,3))
a
a[3,2,2]


last_matrix <- a[, , 3] 
last_matrix

#l <- list(1:10, "Hello, world!", c(TRUE, FALSE), c(0.05, 0.01))
l <- list(1L, "cat", 2, m1, a ) # MAKE LIST OF 5, C(1,2,3)
l
l[c(3,5)]
list[(l[3])]
la <- c(l[3], l[5]) 
la

#Assign data from the file coding_gene_region.bed to an object named gene_data
gene_data <- read.csv("/project/shared/r/1_r_data_science/1-base/coding_gene_region.bed", header=FALSE, sep = "\t")
gene_data

#Display the dimensions of the data frame and the type of data in each column.
dim(gene_data)
str(gene_data)


#Set column names to: chr, start, end, name, score, and strand.
colnames(gene_data)
colnames(gene_data) <- c("chr", "start", "end", "name", "score", "strand")                
colnames(gene_data)
head(gene_data)                 

# Display the value at row 30, column 3
gene_data[30,3]                 
                 
# Assign the column named start to a new object named start_position.
start_position <- gene_data$start
start_position



gene_data$end
gene_data$start

gene_data$length <- gene_data$end - gene_data$start
View(gene_data)
gene_data$length
gene_data

# Assign rows where the gene length is between 100kb and 200kb to a new object named
#filtered_gene_data
#eg command 
#subset(iris, Species %in% c("setosa", "versicolor") & Sepal.Length > 6.5)

filtered_gene_data <- subset(gene_data, length >=100 & length <=200) #no need to put gene_data$ before column name, wont work with it


View(filtered_gene_data)
filtered_gene_data

#Export filtered_gene_data to a file named filtered_gene_regions.tsv, using tabulation as a field
#delimiter. Include column names but not row names.
#write.table(x, file = "", append = FALSE, quote = TRUE, sep = " ", ...)
#write.table(x, file = "results.tsv", sep = "\t")

write.table(filtered_gene_data, "filtered_gene_regions.tsv", sep = "\t", quote = FALSE, row.names=FALSE)

#read.table(file, header = FALSE, sep = "", ...)
read.table(filtered_gene_regions.tsv, header=TRUE, sep = "\t") #did not work could not find .tsv file, view did not work either

#read.csv(file, header = TRUE, sep = ",", ...)
#raw_data <- read.csv("data.csv")

raw_data <- read.csv(filtered_gene_regions.tsv, header = TRUE, sep = "\t", quote = FALSE)

write.table(filtered_gene_data,
            "filtered_gene_regions.tsv",
            quote = FALSE,
            sep = "\t",
            row.names = FALSE,
            col.names = TRUE)

read.csv("filtered_gene_regions.tsv") #this works when quotes are used with file names for reading 
View("filtered_gene_regions.tsv") #opened one line in new tab, not table

#l <- list(1:10, "Hello, world!", c(TRUE, FALSE), c(0.05, 0.01))
l <- list(1L, "cat", 2, m1, a)
l

newlist <- l[c(3,5)]
newlist

newlist1 <-  c(l[3],l[5])
newlist1

newlist2 <- c(l[[3]],l[[5]]) #this is wrong , it is doing something entirely different
newlist2


newlist3 <- l[1:3] 
newlist3
##works for sequential, 
# but for non-sequential use l[c(3,5)] or c(l[3], l[5]) --note space does not matter

#a <- c('a', 'b', 'c')
profile <- c('amena', 'saleh')
profile

profile <- c('first', 'last')
profile <-  c('amena', 'saleh')
profile
names(profile) <- c('first', 'last') #adds names details as first and last to profile vector
profile
#it was this command that was supposed to be used to add column names to gene_data
#colnames(gene_data)<- c('chr', 'start','end','name','score','strand')m

read.delim("filtered_gene_regions.tsv", header = TRUE, sep ="\t" )

