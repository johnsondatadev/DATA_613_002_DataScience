library(tidyverse)

# 1
Vector1 <- (c( 10, 19, 121, 83, 63, 7, 77, 61, 51, 97, 123, 41))

Vector1[c(1, 12)]
Vector1[-c(2:11)]


# 2
Vector1[Vector1 < 60]
Vector1[!Vector1 >= 60]

# 3
Vector1[!Vector1 %% 2 == 0 & !Vector1 %% 3 == 0]
Vector1[Vector1 %% 2 != 0 & Vector1 %% 3 != 0]


# 4
Vector1[is.na(Vector1)]
is.na(Vector1)



myList <-  list(TRUE, 12.35, "pear", 48, c = 3:8, list(23, "team"))
myList 

## 5
is.character(myList[[3]])

## 6
myList[1:3]


## 7
myListNew <-  list(TRUE, 12.35, p = "pear", 48, c = 3:8, list(23, "team"))
myListNew$p


## 8
solve_quadratic <- function(a, b, c){
  x1 = (-b + sqrt(b^2 - (4*a*c))) / (2*a)
  x2 = (-b - sqrt(b^2 - (4*a*c))) / (2*a)
  
  print(paste("The solution of the quadratic equation when a = ", a, ", b = ", b, ", and c = ", c, " are ", x1, " and ", x2))
}

### Solution for x^2 - 3x - 28 = 0
solve_quadratic(1, -3, -28)

### Solution for x^2 + x  - 30 = 0                                      
solve_quadratic(1, 1, -30)

### Solution for 3x^2+ 14x + 8 = 0
solve_quadratic(3, 14, 8)

### Solution 2x^2 + 11x = 6
solve_quadratic(2, 11, -6)

## 9
tib_augvector <- tibble::tibble(x = 1:10, y = 10:1, z = seq(from = 5, to = 0.5, by = -0.5))
tib_augvector

## 10
round(map_dbl(tib_augvector, IQR), digits = 2)
