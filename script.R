setwd("c:/Users/19846/Desktop/hotlibrary_data_mining/") # Coloque o caminho para o projeto.
#====================Importação=======================
#=====================================================
#=====================================================
require("ggplot2")

result = read.csv(file = "data.csv", header = T, sep = ",", dec = ".", encoding = "UTF-8")

info = result[result$UsaBiblioteca == 'Sim',]

# Frequencia de uso da biblioteca
ggplot(info, aes(x = info$frequencia)) + geom_bar() + labs(title = "Frequencia de uso da biblioteca") + xlab('Frequencia') + ylab('')

