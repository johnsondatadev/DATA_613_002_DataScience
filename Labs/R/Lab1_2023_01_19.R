library(lubridate)
library(tidyverse)

datetime2 <- ymd_hms("2021-11-13 10:05:31")
datetime2

month(datetime2)

wday(datetime2)

update(datetime2, month = 8, hour = 5)

datetime2

dhours(6)

ddays(4)

dyears(7) + ddays(30)

next_year <- today() + years(1)

(today() %--% next_year)/weeks(1)

jun_28_day <- ymd("2022-06-28")

(today() %--% jun_28_day)/days(1)
