## DIET PRATICE

dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir = "diet_data")

list.files("diet_data")

andy <- read.csv("diet_data/Andy.csv")
head(andy)

dat <- data.frame()
for(i in 1:5){
        dat <- rbind(dat, read.csv(files_full[i]))
}

weightmedian <- function(directory, day, id = 1:5){
        file_list <- list.files(directory, full.names = TRUE)
        dat <- data.frame()
        for(i in id){
                dat <- rbind(dat, read.csv(file_list[i]))
        }
        dat_subset <- dat[which(dat$Day == day), ]
        median(dat_subset[, "Weight"], na.rm = TRUE)
}

tmp <- vector(mode = "list", length = length(files_full))

for (i in seq_along(files_full)) {
        tmp[[i]] <- read.csv(files_full[[i]])
}
output <- do.call(rbind, tmp)
str(output)