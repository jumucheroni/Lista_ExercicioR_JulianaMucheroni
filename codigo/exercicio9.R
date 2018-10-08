library(readxl)
exercicio9 <- read_excel("dados/exercicio9.xls")

summary(exercicio9$'Salários')

brk<-seq(4,24,2)

classes<-c("4-6", "6-8", "8-10", "10-12", "12-14", "14-16", "16-18", "18-20","20-22", "22-24")

hist(exercicio9$'Salários', breaks=brk, right=F, labels=classes, main="Exercicio 9 - Salários")
dev.copy(device = jpeg, file = "graficos/exercicio9_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()

