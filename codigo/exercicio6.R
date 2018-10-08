library(readxl)
library(qcc)
exercicio6 <- read_excel("dados/exercicio6.xls")

Tipo <- exercicio6$'Pessoas'
names(Tipo) <- exercicio6$'Qualidade'
Tipo

pareto.chart(Tipo)
dev.copy(device = jpeg, file = "graficos/exercicio6_grafico1.jpeg", width = 600, height = 700, res = 100)
dev.off()
