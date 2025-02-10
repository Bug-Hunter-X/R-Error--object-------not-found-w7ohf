```R
# Improved code with error handling
data <- data.frame(A = 1:5, B = 6:10)

#Check if the column exists before accessing it
if ("C" %in% colnames(data)) {
  result <- data$C
} else {
  result <- NA  # or handle it in a more appropriate way for your application
  print("Column 'C' not found.")
}

#Alternative solution: using tryCatch for more robust error handling
result <- tryCatch({
  data$C
}, error = function(e) {
  message("Error accessing column 'C':", e)
  NA  # Or return a default value or throw a custom error
})
```