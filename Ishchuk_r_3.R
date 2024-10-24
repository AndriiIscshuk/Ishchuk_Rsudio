#Код наведений нижче треба вставити в саму консоль

Harry_Potter <- list(
  Title = "Harry Potter",
  Creator = "J.K. Rowling",
  Type = "Book",
  Parts = matrix(c("Harry Potter and the Philosopher's Stone",
                   "Harry Potter and the Chamber of Secrets",
                   "Harry Potter and the Prisoner of Azkaban",
                   "Harry Potter and the Goblet of Fire",
                   "Harry Potter and the Order of the Phoenix",
                   "Harry Potter and the Half-Blood Prince",
                   "Harry Potter and the Deathly Hallows"), ncol = 1),
  
  Characters = data.frame(
    Name = c("Harry Potter", "Hermione Granger", "Ron Weasley", "Albus Dumbledore", "Voldemort"),
    Faculty = c("Gryffindor", "Gryffindor", "Gryffindor", "Gryffindor", "None"),
    Age = c(17, 17, 17, 116, 70),
    Good_Person = c(TRUE, TRUE, TRUE, TRUE, FALSE)
  )
)

print(Harry_Potter)






