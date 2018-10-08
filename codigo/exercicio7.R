library(readxl)
exercicio7 <- read_excel("dados/exercicio7.xls")

barplot(exercicio7$'Atendimento', ylab="Atendimento", main="Exercicio 7 - Atendimento", names.arg=c(exercicio7$'Áreas'), las=2)
dev.copy(device = jpeg, file = "graficos/exercicio7_grafico1.jpeg", width = 800, height = 900, res = 100)
dev.off()