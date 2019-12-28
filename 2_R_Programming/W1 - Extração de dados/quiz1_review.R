## Week 1 - Project 1 - Course

## Qual a classe da função x <- 4L  
x <- 4L
class(x)

## Qual é a classe do objeto abaixo?
x <- c(4, "a", TRUE)
class(x)

## O que produz a função cbind(x,y)
x <-c(1,3,5)
y <-c(3,2,10)
cbind(x,y)

## cbind transforma os vetores em colunas
## rbind transforma os vetores em linhas

##[ - objetos msm classe; [[ elementos de uma lista e $ pelo nome

x <- list(2, "a", "b", TRUE)
x[[2]]

## descobrir a classe da somatoria x <- 1:4 e y <- 2:3
x <- 1:4; y <- 2:3
class(x+y)

## Alterar para 0 valores inferiores a 6.
x <- c(3, 5, 1, 10, 12, 6)
x[x < 6] <- 0
x
x <- c(3, 5, 1, 10, 12, 6)
x[x%in%1:5] <-0
x
## Importar tabela de dados
data <- read.csv("hw1_data.csv")

## Ler Apenas os nomes das colunas
colnames(data)

## Extrair as duas primeiras linhas da tabela
data2 <- data[1:2,]
data2
head(data, 2)

## Quantas linhas tem nesse dataframe?
nrow(data)

##Qual é as duas ultimas linhas da tabela?
tail(data, 2)
data3 <- tail(data, 2)

## Qual o valor da linha 47 da coluna Ozone
data$Ozone[47]

## Quantos valores está faltando na coluna Ozone?
missoz <- is.na(data$Ozone)
as.numeric(missoz)
sum(missoz)

##Ou ainda
ozone_data <- data[,1]
length(ozone_data[is.na(ozone_data)])

## Qual a media da coluna Ozone retirando os valores com NA
Ozone <- na.omit(data$Ozone)
as.numeric(Ozone)
mean(Ozone)
## Forma alternativa
ozone <- data[,1]       
  ozone_clean <- ozone[!is.na(ozone)]
mean(ozone_clean)

## Ozone > 30 & Temp > 90  = Qual a média (mean) de Solar.R
data.sub <- data[data$Ozone > 30, , drop = FALSE]
  data.sub2 <- data.sub[data.sub$Temp > 90, , drop = FALSE]
    data.sub3 <- na.omit(data.sub2)
mean(data.sub3$Solar.R)

## Tentativa alternativa de fazer
data.sub <- data[data$Ozone > 30, ]
data.sub2 <- data.sub[data.sub$Temp > 90, ]
data.sub3 <- na.omit(data.sub2)
mean(data.sub3$Solar.R)

### Média(mean) de Temp quando o Month for igual a 6
data.6 <- data[data$Month == 6, , drop = FALSE]
mean(data.6$Temp)

## Tentativa alternativa
data.june <- data[data$Month == 6, ]
mean(data.june$Temp)

## Qual o valor maximo (max) de ozone no mes de May (5) ?
data.5 <- data[data$Month == 5, , drop = FALSE]
##Tem que tirar os NA por ser valores
dataMay <- na.omit(data.5)
max(dataMay$Ozone)