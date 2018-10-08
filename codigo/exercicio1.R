library(readxl)
exercicio1 <- read_excel("dados/exercicio1.xls")

mean(exercicio1$'Taxas de juros')
median(exercicio1$'Taxas de juros')
sd(exercicio1$'Taxas de juros')
var(exercicio1$'Taxas de juros')
max(exercicio1$'Taxas de juros')
min(exercicio1$'Taxas de juros')
quantile(exercicio1$'Taxas de juros')

plot(exercicio1$'Taxas de juros', xlab="Ano", ylab="Taxas de juros", main="Exercicio 1", las=1, type = "b")
abline(mean(exercicio1$'Taxas de juros'), 0, col="red")
abline(median(exercicio1$'Taxas de juros'), 0, col="blue")
abline(max(exercicio1$'Taxas de juros'), 0, col="purple")
abline(min(exercicio1$'Taxas de juros'), 0, col="purple2")
abline(sd(exercicio1$'Taxas de juros'), 0, col="yellow")
abline(var(exercicio1$'Taxas de juros'), 0, col="pink")
dev.copy(device = jpeg, file = "graficos/exercicio1_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()


plot(exercicio1$'Taxas de juros', xaxt = "n", yaxt="n", xlim= c(0,10), ylim=c(0,3), xlab="Ano", ylab="Taxas de juros", main="Exercicio 1 - Variancia, desvio e quartis", las=1, type = "b")
axis(side=1, xaxp = c(0, 10, 10))
axis(side=2, yaxp = c(0, 3, 15))

abline(sd(exercicio1$'Taxas de juros'), 0, col="yellow")
abline(var(exercicio1$'Taxas de juros'), 0, col="brown")
quartis <- quantile(exercicio1$'Taxas de juros')
abline(quartis[[1]], 0, col="green1")
abline(quartis[[3]], 0, col="green3")
dev.copy(device = jpeg, file = "graficos/exercicio1_grafico2.jpeg", width = 600, height = 500, res = 100)
dev.off()

boxplot(quantile(exercicio1$'Taxas de juros') , pch=15, main="Quartis" , col = "lightblue", pars = list(boxwex = 1))
dev.copy(device = jpeg, file = "graficos/exercicio1_grafico3.jpeg", width = 600, height = 500, res = 100)
dev.off()

