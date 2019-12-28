### SUMARIO
##TIPOS DE DADOS
# Atomicos: Numerico, logico, character, integer, complexos
# Vetores e listas
# Factors
# Missing Values
# Data Frames
# Names


x <- c(0.5, 0.6) 			## numeric
x <- c(TRUE, FALSE, T, F)	## logical
x <- c("a", "b", "c")		## Character
x <- 9:29				## Integer
x <- c(1+0i, 2+4i)		## complex

x <- vector("numeric", length=10)
x

##combinatorio
y <- c(1.7, "a")			## character
y <- c(TRUE, 2)			## numeric
y <- c("a", true) 		## character

## converte as clases das funções utilizando 'as.' + função.

as.numeric(x) as.logical (x) ##exemplo

##listas
x <- list(1, "a", TRUE, 1 + 4i)

## Data Types - Matrizes (Vetores com dimensões atribuidas) (nrow, ncol)

m <- matrix(1:6, nrow = 2, ncol = 3) ## dimensão da matriz
dim(m) 				  ## dimensões -> neste exemplo o output seria 2 e 3, 2 linhas e 3 colunas			
attributes(m) 			  ## atributos 
m <- 1:10
m
dim(m) <- c(2,5)


## MATRIZES podem ser criadas agrupando colunas ou agrupando linhas com "cbind()" e "rbind()"

x <- 1:3
y <- 10:12
##cbind vai combinar x e y em formato de colunas
cbind(x,y)
##rbind combina x e y em formato de linhas
rbind(x,y) 

## FACTORS -> É UM TIPO ESPECIAL DE VETOR usado para dados categoricos (é tipo yes or no -> É usado para modelagem tipo "lm()" e "glm()" - usa comparação de etiquettas)
## Baseline 

x <- factor(c("yes", "yes", "no", "yes", "no"))
x
## Traz em tabela sumarizado quanto teve de cada level de fatores 
table(x) 
## Mostra quais são os levels (1,2,3) do que foi codificado
unclass(x)
## Os Levels da classificação são por padrão de ordem alfabetica, caso não seja a intenção em ordem alfabetica, tem que criar o argumento "levels" dentro de "factor()".
x <- factor(c("yes", "yes", "no", "yes", "no"),
		levels = c("yes", "no"))
x

## MISSING VALUES (NA or NaN)
#  "is.na()" is used to test objects if they are NA
#  "is.nan()" is used to tes for NaN
#  NA tbm tem classes, integer, character, etc <--> NaN (é um output geralmente de operações matematicas). 
#  NaN é tbm um NA, já o inverso  não.

x <- c(1, 2, NA, 10, 3)


## DATA FRAMES - Pode armazenar listas de diferentes classes de objetos, diferente de matrizes que precisa ser todos elementos da mesma classe
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
x

nrow(x)
ncol(x)

## NAMES ATRIBUTES 
Atribui nome a valores de matrizes e data frame
y
