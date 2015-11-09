library(rio)
library(dplyr)
library(lubridate)

service <- tbl_df(import("311_daily_contact_centre_trends.xlsx", sheet="all"))

service %>% filter(year(Date) %in% c(2011, 2012)) -> service11_12

t.test(`Average Talk Time (sec)` ~ year(Date), data=service11_12)
