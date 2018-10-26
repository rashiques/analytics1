# import and export
# check for files and folders
dir('./data2')
list.files('./data2')
list.files('./data')
file.exists("./data/mtcars.csv")
# reading from   a flat file into a vector
list.files('./data2')
data= scan("./data2/HHE", what = "character")
head(data)
class(data)

#csv read from csv
# first create as csv file from iris data set
head(iris)
?iris
iris
#EXPORT IRIS TO IRIS.CSV
write.csv(iris,"./data/iris.csv",row.names=F)
# GO TO DATA FOLDERT AND CHECK IRIS.CSV
read1=read.csv(file="./data/iris.csv", header = TRUE, sep=",")#read from csv file
str(read1)
class(read1)
head(read1)
#csv file from web
read_web1 = read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)

#import from google sheet
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)
library(xlsx)
library(rJava)
Sys.setenv(JAVA_HOME='C:\\program Files\\java\\jre1.8.0_181')
df_excel1 = read.xlsx("./data2/my excel.xlsx", 1)
head(df_excel1)
