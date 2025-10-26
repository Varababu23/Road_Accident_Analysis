-- Q1 How many total accidents are recorded in the dataset?
SELECT count(*) FROM road_accident.accidents_cld;

-- Q2 How many accidents occurred for each Accident_Severity_Text?
select Accident_Severity_Text, count(Accident_Index) as Total_Accidents from accidents_cld
group by Accident_Severity_Text order by Total_Accidents desc;

-- Q3 Count accidents by Day_of_Week_Text
select Day_of_Week_Text, count(accident_index) as Total_Accidents from accidents_cld
group by Day_of_Week_Text order by Total_Accidents desc ;

-- Q4 Count accidents by Urban_or_Rural_Area_Text.
select Urban_or_Rural_Area , count(Accident_index) as Total_Accidents from accidents_cld
group by Urban_or_Rural_Area order by Total_Accidents desc;

-- Q5 Count accidents by Time_Category.
select Time_Category , count(Accident_index) as Total_Accidents from accidents_cld
group by Time_Category order by Total_Accidents desc;

-- Q6 Count accidents by Road_Type_Text.
select Road_Type_Text, count(Accident_index) as Total_Accidents from accidents_cld
group by Road_Type_Text order by Total_Accidents desc;

-- Q7 Count accidents by "1st_Road_Class_Text".
select 1st_Road_Class_Text, count(Accident_index) as Total_Accidents from accidents_cld
group by 1st_Road_Class_Text order by Total_Accidents desc;

-- Q8 Count accidents by Junction_Detail_Text.
select Junction_Detail_Text, count(Accident_index) as Total_Accidents from accidents_cld
group by Junction_Detail_Text order by Total_Accidents desc;

-- Q9 Count accidents that happened on Dual carriageway roads.
SELECT COUNT(*) AS Total_Accidents
FROM accidents_cld
WHERE Road_Type_Text = 'Dual carriageway'; 

-- Q10 Count accidents by combination of Road_Type_Text and Accident_Severity_Text.
select Road_Type_Text, Accident_Severity_Text, count(Accident_index) as Total_Accidents from accidents_cld
group by Road_Type_Text,Accident_Severity_Text order by Total_Accidents desc;

-- Q11 Count accidents by Weather_Conditions_Text.
select Weather_Conditions_Text, count(Accident_index) as Total_Accidents from accidents_cld
group by Weather_Conditions_Text order by Total_Accidents desc;


-- Q12 Count accidents by Light_Conditions_Text.
select Light_Conditions_Text, count(Accident_index) as Total_Accidents from accidents_cld
group by Light_Conditions_Text order by Total_Accidents desc;

-- Q13 Count accidents that occurred in Rainy weather.
SELECT COUNT(*) AS Total_Accidents
FROM accidents_cld WHERE Weather_Conditions_Text LIKE '%Rain%' ;

-- Q14 Count accidents that happened in Darkness - lights lit.
SELECT COUNT(*) AS Total_Accidents
FROM accidents_cld WHERE Light_Conditions_Text LIKE '%Darkness%' ;

-- Q15 Count accidents by combination of Light_Conditions_Text and Accident_Severity_Text.
select Light_Conditions_Text, Accident_Severity_Text, count(Accident_index) as Total_Accidents from accidents_cld
group by Light_Conditions_Text , Accident_Severity_Text order by Total_Accidents desc;

-- Q16 Count accidents by Pedestrian_Human_Control_Text
select Pedestrian_Human_Control_Text, count(Accident_index) as Total_Accidents from accidents_cld
group by Pedestrian_Human_Control_Text order by Total_Accidents desc;

-- Q17 How many accidents involved pedestrians crossing with control?.
SELECT COUNT(*) AS Total_Accidents
FROM accidents_cld WHERE Pedestrian_Human_Control_Text LIKE 'Controlled%' ;

-- Q18 How many accidents occurred at pedestrian crossings without control?
SELECT COUNT(*) AS Total_Accidents
FROM accidents_cld WHERE Pedestrian_Human_Control_Text LIKE 'No%' ;

-- Q19 Count accidents involving pedestrian facilities in urban areas.
SELECT COUNT(*) AS Total_Accidents FROM accidents_cld
WHERE Pedestrian_Human_Control_Text LIKE 'Controlled%'AND Urban_or_Rural_Area = 1; 

-- Q20 Top 5 Road_Type_Text with the highest number of fatal accidents.
select road_type_text ,count(accident_index) Total_accident from accidents_cld
where Accident_Severity_Text = 'fatal' group by Road_Type_Text order by Total_accident desc limit 5;

-- Q21 Top 5 Road_Type_Text with the highest number of fatal accidents.
select road_type_text ,count(accident_index) Total_accident from accidents_cld
where Accident_Severity_Text = 'fatal' group by Road_Type_Text order by Total_accident desc limit 5;

-- Q22 Count accidents by Urban_or_Rural_Area and Accident_Severity_Text.
select Urban_or_Rural_Area, Accident_Severity_Text ,count(accident_index) Total_accident from accidents_cld
group by Urban_or_Rural_Area, Accident_Severity_Text order by Total_accident desc ;

-- Q23 Count accidents by Day_of_Week_Text and Time_Category.
select Day_of_Week_Text,Time_Category ,count(accident_index) Total_accident from accidents_cld
group by Day_of_Week_Text,Time_Category order by Total_accident desc;

-- Q24 Find the most dangerous hour in urban areas.
SELECT Urban_or_Rural_Area, Hour, COUNT(Accident_Index) AS Total_Accidents FROM accidents_cld
WHERE Urban_or_Rural_Area = 1 GROUP BY Urban_or_Rural_Area, Hour
ORDER BY Total_Accidents DESC LIMIT 1;

-- Q25 Count accidents by Road_Type_Text and Weather_Conditions_Text.
SELECT Road_Type_Text, Weather_Conditions_Text , COUNT(Accident_Index) AS Total_Accidents FROM accidents_cld
group by Road_Type_Text,Weather_Conditions_Text ORDER BY Total_Accidents DESC  ;
----------------------------------------------------------------------------------------------------------------------------------------
-- Q26 Find which Urban_or_Rural_Area has a higher percentage of fatal accidents compared to total accidents.
SELECT 
    Urban_or_Rural_Area,
    COUNT(CASE WHEN Accident_Severity_Text = 'Fatal' THEN 1 END) AS Fatal_Accidents,
    COUNT(*) AS Total_Accidents,
    ROUND(COUNT(CASE WHEN Accident_Severity_Text = 'Fatal' THEN 1 END) * 100.0 / COUNT(*),2) AS Fatal_Percentage
FROM accidents_cld GROUP BY Urban_or_Rural_Area ORDER BY Fatal_Percentage DESC;

-- Q27 Identify the top 3 days with the most fatal accidents in rural areas.
SELECT 
    Day_of_Week_Text,
    COUNT(Accident_Index) AS Total_Fatal_Accidents FROM accidents_cld
WHERE Urban_or_Rural_Area = 2  -- 2 = Rural area (assuming 1=Urban, 2=Rural)
  AND Accident_Severity_Text = 'Fatal'
GROUP BY Day_of_Week_Text
ORDER BY Total_Fatal_Accidents DESC
LIMIT 3;

-- Q28 Find the most common Road_Type_Text for serious accidents in urban areas.
SELECT 
    Road_Type_Text,
    COUNT(Accident_Index) AS Total_Serious_Accidents
FROM accidents_cld
WHERE Urban_or_Rural_Area = 1   -- 1 = Urban
  AND Accident_Severity_Text = 'Serious'
GROUP BY Road_Type_Text
ORDER BY Total_Serious_Accidents DESC
LIMIT 1;

-- Q29 Calculate the fatality rate (%) for each Weather_Conditions_Text.
SELECT 
    Weather_Conditions_Text,
    COUNT(CASE WHEN Accident_Severity_Text = 'Fatal' THEN 1 END) * 100.0 / COUNT(*) AS Fatality_Rate_Percentage
FROM accidents_cld
GROUP BY Weather_Conditions_Text
ORDER BY Fatality_Rate_Percentage DESC;


-- Q30 Show the top 5 combinations of (Road_Type_Text, Light_Conditions_Text) that resulted in the most fatal accidents.
SELECT 
    Road_Type_Text,
    Light_Conditions_Text,
    COUNT(Accident_Index) AS Total_Fatal_Accidents
FROM accidents_cld
WHERE Accident_Severity_Text = 'Fatal'
GROUP BY Road_Type_Text, Light_Conditions_Text
ORDER BY Total_Fatal_Accidents DESC
LIMIT 5;
