complete <- function(directory, id = 1:332) {
        
        files <- list.files(directory, full.names = TRUE)
        my_data <- data.frame()
        
        for (i in id) {
                
                monitor <- read.csv(files[i])
                nobs <- sum(complete.cases(monitor))
                tmp <- data.frame(i, nobs)
                my_data <- rbind(my_data, tmp)
        }
        
        colnames(my_data) <- c("id", "nobs")
        my_data
}
