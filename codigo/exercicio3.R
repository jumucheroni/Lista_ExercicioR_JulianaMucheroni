library(readxl)
exercicio3 <- read_excel("dados/exercicio3.xls")

media <- mean(exercicio3$'N de filhos')
media

mediana <- median(exercicio3$'N de filhos')
mediana

moda = subset(table(exercicio3$'N de filhos'),table(exercicio3$'N de filhos')==max(table(exercicio3$'N de filhos')))
moda

plot(exercicio3$'N de filhos', main="Exercicio 3 - Moda e Mediana", ylab="Nº de filhos")
abline(moda, 0, col="blue")
abline(mediana, 0, col="purple")
dev.copy(device = jpeg, file = "graficos/exercicio3_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()




