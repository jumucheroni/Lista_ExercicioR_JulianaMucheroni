library(readxl)
exercicio2 <- read_excel("dados/exercicio2.xls")

freq <- table(exercicio2$'Casas');
freq

quartis <- quantile(exercicio2$'Casas');
quartis

media = mean(exercicio2$'Casas')
mediana = median(exercicio2$'Casas')
moda = subset(table(exercicio2$'Casas') ,table(exercicio2$'Casas')==max(table(exercicio2$'Casas')))

amplitude_total = amplitude <- max(exercicio2$'Casas') - min(exercicio2$'Casas') 
variancia = var(exercicio2$'Casas')
desvio_padrão = sd(exercicio2$'Casas')
coeficiente_de_variação = 100*sd(exercicio2$'Casas')/mean(exercicio2$'Casas')

boxplot(quartis, main="Exercicio 2 - Quartis", ylab="Nº de casas", xlab="")
dev.copy(device = jpeg, file = "graficos/exercicio2_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()

plot(exercicio2$'Casas',  ylab="Nº de casas", main="Exercicio 2 - Medidas de posição e dispersão", las=1, type = "b")
abline(media, 0, col="red")
abline(moda, 0, col="blue")
abline(mediana, 0, col="purple")
abline(amplitude_total, 0, col="purple2")
abline(variancia, 0, col="yellow")
abline(desvio_padrão, 0, col="pink")
dev.copy(device = jpeg, file = "graficos/exercicio2_grafico2.jpeg", width = 600, height = 500, res = 100)
dev.off()
