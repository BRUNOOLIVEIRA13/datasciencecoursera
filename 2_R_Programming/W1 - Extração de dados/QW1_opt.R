## Tentativa otimizada do QW1

## Importar tabela de dados
data <- read.csv("hw1_data.csv")

## Ler Apenas os nomes das colunas
colnames(data)

## Extrair as duas primeiras linhas da tabela
head(data, 2)

## Quantas linhas tem nesse dataframe?
nrow(data)

##Qual é as duas ultimas linhas da tabela?
tail(data, 2)

## Qual o valor da linha 47 da coluna Ozone
data$Ozone[47]

## Quantos valores está faltando na coluna Ozone?
sum(as.numeric(missoz <- is.na(data$Ozone)))

##Ou ainda
ozone_data <- data[,1]
length(ozone_data[is.na(ozone_data)])

## Qual a media da coluna Ozone retirando os valores com NA
mean(ozone_clean <- na.omit(data$Ozone))

## Ozone > 30 & Temp > 90  = Qual a média (mean) de Solar.R
data.OT <- na.omit(data[data$Ozone > 30 & data$Temp > 90,])
mean(data.OT$Solar.R)

### Média(mean) de Temp quando o Month for igual a 6
data.6 <- data[data$Month == 6, , drop = FALSE]
mean(data.6$Temp)

## Tentativa alternativa
data.june <- data[data$Month == 6, ]
mean(data.june$Temp)

##Tem que tirar os NA por ser valores
dataMay <- na.omit(data.5 <- data[data$Month == 5, , drop = FALSE])
max(dataMay$Ozone)