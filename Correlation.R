corr <- function(directory, threshold = 0) {
        
        files <- list.files(directory, full.names = TRUE)
        my_data <- vector(mode = "numeric", length = 0)
        
        for (i in 1:length(files)) {
                
                monitor <- read.csv(files[i])
                complete_info <- sum(complete.cases(monitor))
                
                if (complete_info > threshold) {
                        
                        my_data <- c(my_data, cor(monitor$sulfate, monitor$nitrate,use="complete.obs"))
                }
        }
        
        my_data
}
