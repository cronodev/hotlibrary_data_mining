# Coloque o caminho para o projeto abaixo.
setwd("")
#====================Importação=======================
#=====================================================
#=====================================================
require("ggplot2")

result = read.csv(file = "data.csv", header = T, sep = ",", dec = ".", encoding = "UTF-8")

# Frequencia de uso da biblioteca
info <- result
ggplot(info, aes(x = info$frequencia)) + geom_bar() + labs(title = "Frequencia de uso da biblioteca") + xlab('Frequencia') + ylab('')

# Dificuldade de uso do sistema atual por pessoas que possui interesse no HotLibrary
graph <- ggplot(info, aes(x = info$dificuldade))
graph <- graph + geom_bar(aes(colour = dificuldade))
graph <- graph + labs(title = "Dificuldade de uso do sistema atual por pessoas que possui interesse no HotLibrary")
graph <- graph + xlab('') + ylab('')

# Frequencia do uso do sistema atual por pessoas que conhecem o sistema
info <- result[result$conheceSistemaAtual == 'Sim',]
graph <- ggplot(info, aes(x = info$frequenciaDoSistemaAtual))
graph <- graph + geom_bar()
graph <- graph + labs(title = "Frequencia do uso do sistema atual por pessoas que conhecem o sistema") + xlab('Frequencia') + ylab('')

# Nivel de dificuldade das pessoas que utilizam o sistema atual
info <- result[result$frequenciaDoSistemaAtual != 'Não utilizo',]
graph <- ggplot(info, aes(x = info$dificuldade))
graph <- graph + geom_bar(aes(colour = dificuldade))
graph <- graph + labs(title = 'Nivel de dificuldade das pessoas que utilizam o sistema atual')
graph <- graph + xlab('')
graph <- graph + ylab('')

# Interesse no sistema HotLibrary
info <- result
graph <- ggplot(info, aes(x = info$interesseHotLibrary))
graph <- graph + geom_bar()
graph <- graph + xlab('') + ylab('')
graph <- graph + labs(title = 'Interesse no sistema HotLibrary ')