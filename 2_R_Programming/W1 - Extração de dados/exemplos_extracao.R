# Exemplos de Extração

library(datasets)
data(mtcars)

# Here, we set up a column name in a variable to illustrate use
# of various forms of the extract operator with a column name stored in
# another R object
theCol <- "cyl"

# approach 1: use [[ form of extract operator to extract a column
#             from the data frame as a vector
#             this works because a data frame is also a list
mtcars[[theCol]]

# approach 2: use variable name in column dimension of data frame
mtcars[,theCol]

# approach 3: use the $ form of extract operator. Note that since this
#             form accesses named elements from the list, you can't use
#             variable substitution (e.g. theCol) with this version of
#             extract
mtcars$cyl

# this version fails because the `$` version of extract does not
# work with variable substitution (i.e. a computed index)
mtcars$theCol

mtcars
theCol

#
# subsetting columns
#

# approach 1: subset with column numbers
head(mtcars[,1:3])

# approach 2: subset with column names
theCols <- c("mpg","cyl","disp")
head(mtcars[,theCols])

#
# subsetting rows
#

# approach 1: use exact row references
mtcars[20:22,]

# approach 2: use logic in the row dimension of reference
#             select cars with 4 cylinders and manual transmissions
head(mtcars[mtcars$cyl == 4 & mtcars$am == 1,])
head(mtcars[mtcars[,"cyl"] == 4,])

# approach 3: use which() function
#             select cars with 4 cylinders
theSubsetRows <- which(mtcars$cyl == 4)
head(mtcars[theSubsetRows,])

# approach 4: use output from a function that returns a logical
#             array instead of row numbers as in the prior example
head(mtcars[!is.na(mtcars[,"cyl"]),])