--Cleaned Product Table
SELECT 
	p.[ProductKey],
    p.[ProductAlternateKey] as ProductItemCode,
    --p.[ProductSubcategoryKey],
    --,[WeightUnitMeasureCode]
    --,[SizeUnitMeasureCode]
    p.[EnglishProductName] as [Product Name],
	ps.EnglishProductSubcategoryName as [Sub Category],
	pc.EnglishProductCategoryName as [Category],
    --,[SpanishProductName]
    --,[FrenchProductName]
    --,[StandardCost]
    --,[FinishedGoodsFlag]
    p.[Color] AS [Product Color],
    --,[SafetyStockLevel]
    --,[ReorderPoint]
    --,[ListPrice]
    p.[Size] as [Product Size],
    --,[SizeRange]
    --,[Weight]
    --,[DaysToManufacture]
    p.[ProductLine] as [Product Line],
    --,[DealerPrice]
    --,[Class]
    --,[Style]
    p.[ModelName] as [Product Model Name],
    --,[LargePhoto]
    p.[EnglishDescription] as [Product Description],
    --,[FrenchDescription]
    --,[ChineseDescription]
    --,[ArabicDescription]
    --,[HebrewDescription]
    --,[ThaiDescription]
    --,[GermanDescription]
    --,[JapaneseDescription]
    --,[TurkishDescription]
    --,[StartDate]
    --,[EndDate]
    ISNULL (p.[Status], 'Outdated') AS [Product Status] --If the status is Null it is outdated
  FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps on ps.ProductSubcategoryKey=p.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc on ps.ProductCategoryKey=pc.ProductCategoryKey
  ORDER BY 
  p.ProductKey ASC
