source("complete.R")

corr <- function(directory, threshold = 0){
        dat <- complete(directory)
        dat <- subset(dat, dat$nobs > threshold)
        correlation <- vector()
       
        for (i in dat$id) {
                file <- list.files(path = directory, full.names = TRUE)
                file <- read.csv(file[i])
                correlation <- c(correlation, cor(file$nitrate, file$sulfate, use = "complete.obs"))    
        }
        correlation
}