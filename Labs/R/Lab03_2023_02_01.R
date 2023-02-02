library(tidyverse)

# 1
# It is atomic because the vector contains only one type of data, that is, a character string. Atomic vectors are the ones that use the combine function.

# 2
V <- c("Bears", "Lions", "Dolphins", "Eagles", "Bengals")
V[3]
typeof(3)
# 3
V[c(1, 3, 5)]

# 4
V[-1]

V[c(2:5)]

# 5
# The vector is a list because it consists of different types of vectors. It consists of a character string but it also consist of a list, as well as integer.

# 6
K <- list( x = 3:7, "never", 43, y = list(10,20,30))
length(K)


# 7
K[4]


# 8
K[]


# 9a
tribble( ~x,    ~y,    ~w,    ~z,
         210,   300,   220,   180,
         102,   100,   119,   187,
         176,   175,   188,   173,
         87,    95,   91,     94,
         202,   210,  234,    218,
         110,   122,  131,    128,
) -> dt
dt

map_dbl(dt, mean)

# 9b
map_dbl(dt, sd)


# 9c
dt %>% 
  sqrt(.)


# 9d
dt %>% 
  summary()
