library(tidyverse)

# 1
x <- list(2, 4, 5, 9, 1)
y <- list(8, 7, 2, 8, 3)
z <- list(1, 8, 5, 4, 2)

pmap_dbl(list(x,y,z), function(first, second, third) (first + second + third)^2)

tribble( ~Student,  ~Gender,    ~Salary,
         "John",   "Male",       65000,
         "Alice",  "Female",    73000,
         "Juan",   "Male",       66000,
         "Beth",  "Female",    71500,
         "Denise", "Female",  82000
) -> table

table



# 2
table %>% 
  pmap_chr(~ str_glue("{..1} is {..2}, has a salary that is {..3} dollars per year."))


# 3
myMatrix <- matrix(nrow = 5, ncol = 5)

for(i in 1:nrow(myMatrix)){
  for(j in 1:ncol(myMatrix)){
    myMatrix[i, j] = i + j
  }
}
myMatrix


# 4
for(i in 1:20){
  if(i == 5 | i == 10){
    next
  }
  print(i)
}
