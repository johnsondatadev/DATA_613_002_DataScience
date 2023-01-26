library(lubridate)

# Little script to set an alarm for an item on my ebay watchlist
# It was confusing to do without programming so I decided to write out a 
# little script for the purpose of accuracy and efficiency

day_of_alarm <- now(tzone = "EST") + days(1) + hours(10) + minutes(50)
time_at_tz(day_of_alarm, tz = "EST")

