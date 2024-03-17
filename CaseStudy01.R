# Read the trip data from 202301 to 202312 (12 months)
df1 <- read.csv("C:/Users/12091/Desktop/case_study_01/202301-divvy-tripdata.csv")
df2 <- read.csv("C:/Users/12091/Desktop/case_study_01/202302-divvy-tripdata.csv")
df3 <- read.csv("C:/Users/12091/Desktop/case_study_01/202303-divvy-tripdata.csv")
df4 <- read.csv("C:/Users/12091/Desktop/case_study_01/202304-divvy-tripdata.csv")
df5 <- read.csv("C:/Users/12091/Desktop/case_study_01/202305-divvy-tripdata.csv")
df6 <- read.csv("C:/Users/12091/Desktop/case_study_01/202306-divvy-tripdata.csv")
df7 <- read.csv("C:/Users/12091/Desktop/case_study_01/202307-divvy-tripdata.csv")
df8 <- read.csv("C:/Users/12091/Desktop/case_study_01/202308-divvy-tripdata.csv")
df9 <- read.csv("C:/Users/12091/Desktop/case_study_01/202309-divvy-tripdata.csv")
df10 <- read.csv("C:/Users/12091/Desktop/case_study_01/202310-divvy-tripdata.csv")
df11 <- read.csv("C:/Users/12091/Desktop/case_study_01/202311-divvy-tripdata.csv")
df12 <- read.csv("C:/Users/12091/Desktop/case_study_01/202312-divvy-tripdata.csv")

#Merging data into a single data fram
ALL_Trips <- rbind(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10,df11,df12)
dim(ALL_Trips)

#remove empty
ALL_Trips <- janitor::remove_empty(dat = ALL_Trips,which = c("cols"))
ALL_Trips <- janitor::remove_empty(dat = ALL_Trips,which = c("rows"))
dim(ALL_Trips)

#Converting started at and ended at columns to date data type from char
str(ALL_Trips$started_at)
str(ALL_Trips$ended_at)
ALL_Trips$started_at <- lubridate::as_datetime(ALL_Trips$started_at)
ALL_Trips$ended_at <- lubridate::as_datetime(ALL_Trips$ended_at)
View(ALL_Trips)

#Getting the week_of_days
ALL_Trips$week_of_days <- lubridate::date(ALL_Trips$started_at)

# Calculate ride_length
ALL_Trips <- ALL_Trips %>%
  mutate(ride_length = ended_at - started_at)
str(ALL_Trips$ride_length)
#remove row which have a trip duration equal or less than 0
ALL_Trips_v2 <- ALL_Trips[!(ALL_Trips$start_station_name == "HQ QR" | ALL_Trips$ride_length<= 0),]
ALL_Trips_v2 <- na.omit(ALL_Trips_v2)
dim(ALL_Trips_v2)
colSums(is.na(ALL_Trips_v2))

#assign days of the week to start and end date
ALL_Trips_v2$week_of_days<- wday(ALL_Trips_v2$started_at, label = TRUE, abbr = FALSE)
dim(ALL_Trips_v2)
View(ALL_Trips_v2)

#save the file
write.csv(ALL_Trips_v2,"CaseStudyONE.csv", row.names = FALSE)
