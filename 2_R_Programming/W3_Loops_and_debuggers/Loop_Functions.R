## APLICANDO 'LAPPLY'
x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
x
lapply(x, function(elt) elt[, 1])
## função anonima

## APLICANDO SAPPLY
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
sapply(x, mean)
## se aplicar mean(x), vai dar erro, pois mean não se aplica a listas.


##APLICANDO APPLY
## cria uma matriz i x j de 200 elementos (i = 20, j=10)
## i = row (linhas); j = col (colunas)
x <- matrix(rnorm(200), 20, 10)

## calcula a média na margem 2 (em j) 
apply(x, 2, mean) 

## calcula a soma na margem 1 (em i)
apply(x, 1, sum)

## divide os quantil em percentil de 0,25 e 0,75 em todas as linhas (i)
apply(x, 1,  quantile, probs = c(0.25, 0.75))

## Average matrix in an array
a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1, 2), mean)
## another way
rowMeans(a, dims = 2)

## APLICANDO MAPPLY
## Use maply isnted of typing
list(rep(1,4), rep(2, 3), rep(3, 2), rep(4, 1))

mapply(rep, 1:4, 4:1)

## Vetorizando uma função
noise <- function(n, mean, sd){
        rnorm(n, mean, sd)
}
## exemplos que não funcionariam
noise(5, 1, 2)
noise(1:5, 1:5, 2)

## exemplo que funciona
mapply(noise, 1:5, 1:5, 2)
 

## APLICANDO SPLIT

## Criando um vetor e atribuindo level para eles e depois divindo pelos levels
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
split(x, f)
##aplicando lapply depois do split
lapply(split(x, f), mean)
## USANDO EM DATA FRAMES
library(datasets)
head(airquality)

# Calcular média do ozonio, radiação solar, vento e temperatura de cada mes
# Primeiro quebra o dataset fazendo a variavel ser Mês, depois pela categoria.
s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")],
                               na.rm = TURE))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))

sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")],
                               na.rm = TRUE))

# Imagina que você tem uma lista de generos (masculino, feminino), 
# depois de raça (pardo, branco) e quer saber uma correlação destas
# neste caso precisara separar 'split" em mais de um level

x <- rnorm(10)
f1 <- gl(2, 5)
f2 <- gl(5, 2)
interaction(f1, f2)
# interact vai concatenar todos os niveis do primeiro com todos do  segundo
# pode usar a função 'list' no lugar pra ter esta interação
str(split(x, list(f1, f2)))
# porém ele te retorna alguns que seriam vazios pra evitar poluição 
# utiliza-se drop para retirar vazios
str(split(x, list(f1, f2), drop = TRUE))


# The only difference between previous examples and this one is that we are
# defining and using our own function right in the call to lapply(). Our
# function has no name and disappears as soon as lapply() is done using it.
# So-called 'anonymous functions' can be very useful when one of R's
# built-in functions isn't an option.

# CRIA UM VETOR, ARMAZENA, FAZ A MEDIA, ARMAZENA
# SE DIGITAR UM NOVO NUMERO, VALIDA SE ESTA ARMAZENADO, SE SIM RETORNA
# SE NAO FAZ A MEDIA

makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}
#
cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}