USE [coursera_casestudy]
GO

SELECT [column1]
      ,[ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
      ,[start_lat]
      ,[start_lng]
      ,[end_lat]
      ,[end_lng]
      ,[member_casual]
      ,[ride_length]
      ,[week_day]
  FROM [dbo].[cleaned_data]


  SELECT 
  CAST(CAST(AVG(CAST(CAST(ride_length as datetime) as float)) as datetime) as time)
  FROM [dbo].[cleaned_data]
  WHERE 
  member_casual= 'member'

  SELECT 
  COUNT(member_casual)
  FROM [dbo].[cleaned_data]
  WHERE
  member_casual= 'member'




SELECT end_station_name, count(*) AS times 
FROM [dbo].[cleaned_data] 
GROUP BY end_station_name
ORDER BY COUNT(*) DESC

SELECT¡@COUNT(rideable_type), rideable_type
FROM [dbo].[cleaned_data]
WHERE member_casual= 'casual'
GROUP BY rideable_type
ORDER BY COUNT(rideable_type) DESC
GO


