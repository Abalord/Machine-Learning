# Machining Learning
# Aula 1
# Prof. Neylson Crepalde
# Lucas Cesar Fernandes Ferreira
# -------------------------------- #

# Vamos investigar a relação entre as variáveis
# Sepal.Length e Petal.Length do banco de dados iris

# Carregar o banco de dados
data(iris)

# Verifica os primeiros casos
head(iris)

# Tirando algumas estatísticas descritivas
summary(iris$Sepal.Length)
summary(iris$Petal.Length)

# Plotando o gráfico
plot(iris$Sepal.Length, iris$Petal.Length)

# Verificando a correlação das variáveis
cor(iris$Sepal.Length, iris$Petal.Length)

# y = B + BX + E
# B0 = Intercepto = origem => x = 0
# B1 = Efeito = coeficiente angular

# Montando um modelo de regressão linear
reg <- lm(Petal.Length ~ Sepal.Length,
          data = iris)
summary(reg)

# Plotando o model linear com o ggplot2
install.packages("ggplot2")
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) + 
geom_point() + stat_smooth(method = "lm")











