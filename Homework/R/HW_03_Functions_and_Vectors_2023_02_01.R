library(tidyverse)

# 1
Vector1 <- (c( 10, 19, 121, 83, 63, 7, 77, 61, 51, 97, 123, 41))

Vector1[c(1, 12)]
Vector1[-c(2:11)]


# 2
Vector1[Vector1 > 60]


# 3
Vector1[!Vector1 %% 2 == 0 & !Vector1 %% 3 == 0]
Vector1[Vector1 %% 2 != 0 & Vector1 %% 3 != 0]


# 4
myList <-  list(TRUE, 12.35, "pear", 48, c = 3:8, list(23, "team"))
myList 
