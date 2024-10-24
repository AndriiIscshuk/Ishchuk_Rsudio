create_symmetric_matrix <- function(n) {
  # Створюємо матрицю нулів розміром (2n - 1) x (2n - 1)
  size <- 2 * n - 1
  matrix_result <- matrix(0, nrow = size, ncol = size)
  
  # Заповнюємо матрицю
  for (i in 1:n) {
    matrix_result[i, i:(size - i + 1)] <- i
    matrix_result[i:(size - i + 1), i] <- i
    matrix_result[i:(size - i + 1), size - i + 1] <- i
    matrix_result[size - i + 1, i:(size - i + 1)] <- i
  }
  
  return(matrix_result)
}

# Приклад використання
n <- 5
result <- create_symmetric_matrix(n)
print(result)





