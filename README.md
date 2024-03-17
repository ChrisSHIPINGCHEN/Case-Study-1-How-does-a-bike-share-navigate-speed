# Case-Study-1-How-does-a-bike-share-navigate-speed

Scenario

I are a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve my recommendations, so they must be backed up with compelling data insights and professional data visualizations.

About the company

Cyclistic, launched in 2016, is a thriving bike-share company in Chicago with a fleet of 5,824 geotracked bicycles across 692 stations, offering flexibility in transportation by allowing bikes to be picked up from and returned to any station in the network. The company has historically marketed to a broad audience with various pricing plans, including single-ride passes, full-day passes, and annual memberships, distinguishing customers as either casual riders or members. Financial analysis shows that annual members are significantly more profitable than casual riders. Recognizing this, the company aims to focus its marketing efforts on converting casual riders into annual members by leveraging their existing familiarity and preference for Cyclistic's services. The leadership, led by Moreno, plans to dive into historical data to understand the differences between casual riders and members, exploring motivations for membership purchase and how digital media could influence marketing strategies to drive this conversion.

Tools: R(Rstudio), Tableau

Step 1: Ask

The questions that need to be answered are:

1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Step 2: Prepare

I will be using the public dataset loacted [here](https://divvy-tripdata.s3.amazonaws.com/index.html).The data has been made available by Motivate International Inc. And I will downloaded data files from January 2023 to December 2023. 

Because we need to clean the data files with one years so the we need merge 12 data files together. 

Read the trip data from 202301 to 202312 (12 months)

![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/39528574-56f5-446b-8291-38b15ff4675e)

Merging data into a single data frame

![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/2bb1614e-0c8a-43f6-b6af-f1358ce620d1)

Step 3:  Process

All the code can be found [here](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/blob/main/CaseStudy01.R)

1. load the tidyverse, lubridate, dplyr and janitor packages and import the data files
2. remove empty
3. Converting started at and ended at columns to date data type from char
4. Getting the week_of_days

   ![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/5a5c6e11-35b7-4f04-8bb6-7bf332196464)
   
6. Getting the ride_length in mins
   
   ![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/b2c505bb-d14e-4d65-b63d-529e28610ed3)

8. assign days of the week to start and end date

   ![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/efb7d4ce-ce70-418c-934f-da6bc8df7e99)


Step 4: Step 4: Analyze and Share

To view the full dataset please go to [Tableau](https://public.tableau.com/app/profile/chris.chen4024/viz/CaseStudy01_17101097509180/Dashboard1)


![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/6be38281-52d2-475a-a0d6-c6bea460e7bc)

In the Pie Chart, we notice that member customers are our majority member type compared to casual customers. 

![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/ec86a3f1-3c2a-418e-8e96-ba3a31a2dac9)

Compared with the other two kinds of bikes, no members ride docked bikes, and casual customers ride more during the weekend; on the other hand, member clients do not significantly prefer it. 

![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/559aa0a1-b029-4222-a093-96d6cf557f14)

The bar chart "Average Ride Length For Member Type" shows that casual clients' average ride time is longer than member clients. 

![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/499d2333-2bfd-4055-9a8c-e471d8668d0f)

![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/23084947-b67d-492a-bf9d-8f199a26e0b2)



From the Line chart "Day Trip For Member Type" and the combined chart "Average ride time and number of rides daywise," we can conclude that casual clients use the service majorly over the weekends and the members use the service throughout the weekdays. 


![image](https://github.com/ChrisSHIPINGCHEN/Case-Study-1-How-does-a-bike-share-navigate-speed/assets/163215140/2a727b0e-ff8e-468d-b1ca-910ed44567d2)


Through Combine chart "Rides And Average Ride Length(Monthly)". The middle of the year(summer time) is the peak season for bike riding for both member types; compared with casual clients, the average ride time for member clients is steady and steadier.

Overall, to increase the number of member clients, we can offer a promotion to casual clients during the summer season. And because casual clients are more likely to ride on weekends, we can offer weekend packages. For example, you need to buy a weekend package for a month, while you can ride whatever you want during the weekend with no price charge.

Steps 5: Act

Conclusion

The data analysis of Cyclistic's bike-share usage over a year highlights distinct usage patterns between casual riders and annual members, providing a solid foundation for strategic marketing initiatives aimed at increasing annual memberships. Key insights include:

Membership Composition: A significant portion of Cyclistic's user base consists of annual members, indicating a strong foundation of committed users. However, there's a notable presence of casual riders, representing a potential growth area for conversion into annual memberships.
Bike Type Preferences: Casual riders show a preference for docked bikes, especially on weekends, while annual members consistently use bikes throughout the week with no significant preference for docked bikes, suggesting different usage motivations and patterns between the two groups.
Ride Times: Casual riders tend to have longer average ride times compared to members, indicating potentially different objectives (leisure vs. commute/utility).
Usage Patterns: Casual riders' usage spikes during weekends and summer months, while annual members exhibit a more consistent usage pattern throughout the week and year, highlighting different dependencies on the service.

Recommendations

Based on these findings, the following recommendations are proposed to convert casual riders into annual members:

Seasonal Promotions: Leverage the summer peak season by introducing targeted promotions to casual riders, such as discounted memberships if purchased during this period. This can capitalize on the increased likelihood of bike usage during warmer months.

Weekend Packages: Since casual riders heavily use the service on weekends, offer a special weekend package that allows unlimited rides during weekends for a month at a discounted rate. This package could serve as a transitional offering before committing to an annual membership.

Customized Marketing Messages: Utilize digital media to target casual riders with messages that highlight the benefits of transitioning to an annual membership, such as cost savings for frequent riders, convenience, and additional perks like faster bike access or rewards for consistent usage.

Enhance Bike Availability and Accessibility: Focus on improving the availability and convenience of docked bikes during peak casual rider usage times, such as weekends and summer months, to enhance the overall user experience and satisfaction.

Engage Through Digital Platforms: Implement a digital media strategy that showcases member stories, particularly emphasizing how annual memberships offer a better value for those who use the service for leisure activities on weekends and nice weather months. This can include user testimonials, data insights on cost savings, and the health and environmental benefits of biking.

By addressing the distinct needs and preferences of casual riders, Cyclistic can effectively encourage a shift towards more profitable annual memberships, ultimately supporting the company's growth and sustainability objectives.








