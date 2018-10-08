library(readxl)
exercicio5 <- read_excel("dados/exercicio5.xls")

barplot(exercicio5$'Pessoas', xlab="Marcas", ylab="Numero de pessoas", main="Exercicio 5 - Numero de pessoas", names.arg=c(exercicio5$'Marcas'))
dev.copy(device = jpeg, file = "graficos/exercicio5_grafico1.jpeg", width = 600, height = 700, res = 100)
dev.off()