-- 12 datasets joined into temp table
with bike as (
select * from march_2021 union all select * from april_2021 union all
select * from [dbo].[may_2021] union all
select * from [dbo].[june_2021] union all
select * from [dbo].[july_2021] union all
select * from [dbo].[august_2021] union all
select * from [dbo].[sept_2021] union all
select * from [dbo].[oct_2021] union all
select * from [dbo].[nov_2021] union all
select * from [dbo].[dec_2021] union all
select * from [dbo].[jan_2022] union all
select * from [dbo].[feb_2022]
) 
select [ride_id], 
[rideable_type], 
cast([started_at] as date) as start_date, 
cast([ended_at] as date) as end_date, 
[start_station_name], 
[end_station_name], 
[start_station_id], 
[end_station_id],
[start_lat], 
[start_lng], 
[end_lat], 
[end_lng], 
[member_casual] as user_type, 
DATEPART(hour, started_at) as start_hour  ,    --adding four new metrics for analysis
DATEDIFF(minute, [started_at],[ended_at]) as duration_in_mins,	 --To calculate ride duration in minutes
DATENAME(weekday, [started_at]) as day_of_the_week,  	-- to create day of the week column
DATENAME(mm, [started_at]) as month	--add month column 
into bike_share_data    --created a new table from temp table
from bike


---clean data created below into view
CREATE VIEW bike_clean as
with zizi as(
select * from [dbo].[bike_share_data])
select [ride_id], 
[rideable_type], 
cast([started_at] as date) as start_date, 
cast([ended_at] as date) as end_date, 
[start_station_name], 
[end_station_name], 
[start_station_id], 
[end_station_id],
[start_lat], 
[start_lng], 
[end_lat], 
[end_lng], 
[member_casual] as user_type, 
DATEPART(hour, started_at) as start_hour , --new colums were also created to further analysis
DATEPART(hour, ended_at) as ended_hour,
DATEDIFF(minute, [started_at],[ended_at]) as duration_in_mins,
DATENAME(weekday, [started_at]) as day_of_the_week, 
DATENAME(mm, [started_at]) as month
from zizi 

--to get missing or null values from the table
select * 
from bike_clean 
where [start_station_name] is not null and [end_station_name] is not null
--null values removed



---to check for negative and zero values
select * from bike_clean where duration_in_mins <= 0
----35,390 rows found and removed to avoid skewing results


---final result was saved (about 4.60 million rows)and exported in .csv format