library(tidyverse)
library(dplyr)


## 1
calc_log <- function(number){
  if(number <= 0){
    print("Number must be positive!")
  }else{
    log(number) + log10(number) + log2(number) 
  }
}

for(i in 1:5){
  # The first five integers given i from 1 through 5 is same as i*2
  # Round up the decimal places to 6
  print(paste("Log Calculation for ", i*2, " = ", round(calc_log(i*2), 6)))
}


## 2
check_value <- function(val){
  if((val ** 2) >= 100){
    print("This is a big number")
  }
  else{
    print("This is not a big number")
  }
}
check_value(5)
check_value(20)


## 3
team_A <- 3
team_B <- 2

if (team_A > team_B){
  print ("Team A won")
} else if (team_A < team_B){
  print ("Team B won")
} else {
  print("Team A & B tied")
}


## 4
check_divisible <- function(val){
  if(val %% 3 == 0 & val %% 5 == 0){
    print("divisible by three and five")
  }
  else if(val %% 3 == 0 & val %% 4 == 0){
    print("divisible by three and four")
  }
  else{
    print("neither")
  }
}

# Check for 16, 45, and 24
# For 16
check_divisible(16)

# For 45
check_divisible(45)

# For 24
check_divisible(24)


## 5
mpg %>% 
  select(displ, cyl, cty, hwy) -> mpg.sel

output.var <- vector("double", ncol(mpg.sel))
for(i in seq_along(mpg.sel)){
  output.var[[i]] <- var(mpg.sel[[i]])
}
output.var


## 6
for(i in c(11, 13, 17, 19, 23, 29)){
  print(c(i, (i ** 3) - (i ** 2)))
}



