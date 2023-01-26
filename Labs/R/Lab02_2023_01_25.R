library(tidyverse)
## 1
# Functions provide a way to modularize our program thereby making the codes easier to read, understand 
# and maintain. It also makes it less prone to errors and much easier to debug your errors.
# Functions makes our code neater.

## 2
# (x - miu) / sd

z_score <- function(x, miu, sd){
  (x - miu) / sd
}

z_score(25.77, 23.54, 2.442)

## 3
calc_log_prime <- function(number, prime_num){
  log(number) * log10(number) / prime_num ** (1/3)
}

round(calc_log_prime(32, 11), 1)


## 4
sd_output <- vector("double", ncol(mtcars))
for(i in seq_along(mtcars)){
  sd_output[[i]] <- sd(mtcars[[i]])
}

sd_output



