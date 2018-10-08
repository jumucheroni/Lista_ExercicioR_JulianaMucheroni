library(readxl)
exercicio8 <- read_excel("dados/exercicio8.xls")

freq <- table(exercicio8$'Altura dos pacientes');
freq

hist(exercicio8$'Altura dos pacientes',  xlab = "Altura", ylab = "Frequência", main="Exercicio 8 - Altura dos pacientes")
dev.copy(device = jpeg, file = "graficos/exercicio8_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()

