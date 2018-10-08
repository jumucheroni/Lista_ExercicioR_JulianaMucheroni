library(readxl)
exercicio4 <- read_excel("dados/exercicio4.xls")

freq <- table(exercicio4$'Salários')
freq

hist(exercicio4$'Salários', xlab="Salários", ylab="Quantidade", main="Exercicio 4- Salários")
dev.copy(device = jpeg, file = "graficos/exercicio4_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()

