## number of complete cases in specific ID

complete <- function(directory, id = 1:332) {
        files <- list.files(path = directory, full.names = TRUE)
        nobs <- as.numeric()
        for(i in id){
                data <- read.csv(files[i])
                nobs <- c(nobs, sum(complete.cases(data)))
        }
        data.frame(id, nobs)
}