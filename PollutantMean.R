pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        name_file <- list.files(directory, full.names = TRUE) 
        my_data <- data.frame()
        
        for (i in id) {
                my_data <- rbind(my_data, read.csv(name_file[i]))
        }
        
        mean(my_data[,pollutant], na.rm = TRUE)
        
}
