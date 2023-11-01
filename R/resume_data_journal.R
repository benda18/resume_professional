library(dplyr)
library(lubridate)

rm(list=ls());cat('\f');gc()

setwd("~/R/play/resume")


# wd----


# funs----
gen_job.entry <- function(employer_name, 
                          job.city, job.state,
                          job.title, 
                          start.date, end.date, 
                          list.accomp){
  data.frame(emp = employer_name, 
             title = job.title, 
             city = job.city, 
             state = job.state, 
             from.date = start.date, 
             to.date   = end.date, 
             ra = list.accomp) %>% as_tibble()
}

gen_job.entry("McKenna Associates", "Lebanon", "OH", "Planner", ymd(20040601), ymd(20070401), 
              list(resp=c("Project Management", "Comprehensive Planning", "Mapping"), 
                   accomp = c(NA)))

# data----
