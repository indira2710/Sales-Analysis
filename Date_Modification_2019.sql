--Cleaned DIM_Date table--

SELECT
	[DateKey],
    [FullDateAlternateKey] AS Date,
    --,[DayNumberOfWeek]
    [EnglishDayNameOfWeek] AS Day,
    --,[SpanishDayNameOfWeek]
    --,[FrenchDayNameOfWeek]
    --,[DayNumberOfMonth]
    --,[DayNumberOfYear]
    [WeekNumberOfYear]as WeekNr,
    [EnglishMonthName] as Month, 
	LEFT ([EnglishMonthName],3) as MonthShort,
    --[SpanishMonthName]
    --,[FrenchMonthName]
    [MonthNumberOfYear] as MonthNo,
    [CalendarQuarter] as Quarter,
    [CalendarYear] as Year
    --,[CalendarSemester]
    --,[FiscalQuarter]
    --,[FiscalYear]
    --,[FiscalSemester]
  FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
 WHERE CalendarYear>=2019

