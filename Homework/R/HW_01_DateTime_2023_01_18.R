library(lubridate)
library(tidyverse)
library(nycflights13)
## Attempt 1.

first_date <- ymd("2020-06-06")
second_date <- ymd("2021-07-14")

# Number of days
(first_date %--% second_date) %/% days(1)

## Attempt 2.
# ifelse(((1988 %% 4) == 0), TRUE, FALSE)

leap_year(1988)


## Solution 3

leap_year(1989)


## Solution 4

# Month is not ambiguous, hence, there is no need for dmonths to keep track of the duration of months.
# There are consistently 12 months in a year with no variability to that value 12, within the range 1:12
# Unlike year, for instance, where we could have a leap year.

## Solution 5

john_bday <- ymd("1962-04-11")
(john_bday %--% today()) %/% years(1)


## Solution 6

make_datetime_100 <- function(year, month, day, time) {
  make_datetime(year, month, day, time %/% 100, time %% 100)
}

flights_dt <- flights %>% 
  filter(!is.na(dep_time), !is.na(arr_time)) %>% 
  mutate(
    dep_time = make_datetime_100(year, month, day, dep_time),
    arr_time = make_datetime_100(year, month, day, arr_time),
    sched_dep_time = make_datetime_100(year, month, day, sched_dep_time),
    sched_arr_time = make_datetime_100(year, month, day, sched_arr_time)
  ) %>% 
  select(origin, dest, carrier, arr_time, dep_time)
  
flights_dt 


## Solution 7
flights_dt %>% 
  filter(
    !is.na(dep_time),
    year(dep_time) == 2013, 
    month(dep_time) >= 4 & month(dep_time) <= 10) -> lights_dt_filt

lights_dt_filt %>% 
  ggplot(aes(dep_time)) +
  geom_freqpoly(bins = 94) +
  scale_y_continuous(breaks = seq(0, 2500, by = 500))


## Solution 8
flights_AA <- flights_dt %>% 
  filter(origin == "LGA",
         dest == "DFW",
         carrier == "AA") %>% 
  select(-dep_time) %>% 
  slice(115:125) %>% 
  arrange(arr_time)
flights_AA

flights_AA %>% 
  select(arr_time) %>% 
  head(2) %>% 
  mutate(arr_time = as_datetime(arr_time)) -> flights_AA_2

# flights_AA_2 %>% 
#   rename("arr_time_difference" = "arr_time") %>% 
#   mutate(arr_time_difference = flights_AA_2[2, 1] - flights_AA_2[1, 1]) %>% 
#   head(1)

dminutes(flights_AA_2[2, 1] - flights_AA_2[1, 1])

as_datetime(flights_AA$origin)

## Solution 9  
(flights_AA[1, 4] %--% flights_AA[2, 4]) %/% day(1)
first_flight <- asflights_AA[1, 4]
second_flight <- ymd_hms(flights_AA[2, 4])

as.POSIXct(flights_AA_2[1])
as.Date(as.numeric(flights_AA[2, 4]))
