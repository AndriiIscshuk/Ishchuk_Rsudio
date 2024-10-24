statistic <- function(x) {
  
  mean_x <- mean(x)                     # Вибіркове середнє
  gm <- exp(mean(log(x)))               # Середнє геометричне
  hm <- length(x) / sum(1 / x)          # Середнє гармонійне
  median_x <- median(x)                 # Вибіркова медіана
  sv <- var(x)                          # Вибіркова дисперсія
  sd_x <- sd(x)                         # Середньоквадратичне відхилення
  mad_x <- mean(abs(x - mean_x))        # Вибіркове середнє абсолютне відхилення
  madm <- median(abs(x - median_x))     # Середнє абсолютне відхилення від медіани
  iqr <- IQR(x)                         # Інтерквартильний розмах
  range_x <- diff(range(x))             # Розмах вибірки
  
  # Повернення результату у вигляді іменного вектора
  result <- c(Mean = mean_x,
              GM = gm,
              HM = hm,
              Median = median_x,
              SV = sv,
              SD = sd_x,
              MAD = mad_x,
              MADm = madm,
              IQR = iqr,
              Range = range_x)
  
  return(result)
}

# Задаємо будь-яку додатню вибірку
x <- c(6, 3.4, 0.8, 10, 1, 5, 0.9)
print(round(statistic(x), 2))
# Виведення результату з округленням до 2 знаків після коми

#щоб відбулося опрацювання, в консоль введіть: print(round(statistic(x), 2)),
# після цього будуть видані всі значення до 2 знаків після коми







