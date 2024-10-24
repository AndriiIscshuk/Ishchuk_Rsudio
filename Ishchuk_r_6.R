mindiv <- function(a, b) {
  min_value <- min(a, b)  
  mindivres <- 1 
  
  for (i in 2:min_value) {
    if (a %% i == 0 && b %% i == 0) {
      mindivres <- i  
    }
  }
  
  return(mindivres)  
}

# Перша функція: Взаємно прості числа, менші або рівні n
func1 <- function(n) {
  if (!is.numeric(n) || n != as.integer(n) || n <= 0) {
    stop("Error: аргумент не є натуральним числом")
  }
  if (n <= 1 || n >= 100000) {
    stop("Error: натуральний аргумент виходить за межі діапазону визначення")
  }
  
  result <- c()
  for (i in 1:n) {
    if (mindiv(i, n) == 1) {  
      result <- c(result, i)
    }
  }
  
  return(result)
}

# Друга функція: Взаємно прості дільники числа n
func2 <- function(n) {
  if (!is.numeric(n) || n != as.integer(n) || n <= 0) {
    stop("Error: аргумент не є натуральним числом")
  }
  if (n <= 1 || n >= 100000) {
    stop("Error: натуральний аргумент виходить за межі діапазону визначення")
  }
  
  divisors <- c()
  for (i in 1:n) {
    if (n %% i == 0) {
      divisors <- c(divisors, i)  # дільники числа n
    }
  }
  
  result <- c()
  for (d in divisors) {
    if (mindiv(d, n) == 1) {  
      result <- c(result, d)
    }
  }
  
  return(result)
}

n <- 10
print(func1(n))  # Взаємно прості числа з n
print(func2(n))  # Взаємно прості дільники n
#замість n можна ставити будь-яке число з визначенного діапазону








