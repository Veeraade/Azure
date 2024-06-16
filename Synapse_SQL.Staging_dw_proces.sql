

/****************************************************
*  dynamic table to process multiple tables
***************************************************/
create table dynamic(id int,job_name varchar(50),stg_table varchar(50),target_table varchar(50),proc_name varchar(50));

insert into dynamic values (1,'channels','stg_channels','dim_channels','proc_dim_channels_process');
insert into dynamic values (2,'countries','stg_countries','dim_countries','proc_dim_countries_process');
insert into dynamic values (3,'customers','stg_customers','dim_customers','proc_dim_customers_process');
insert into dynamic values (4,'product','stg_product','dim_product','proc_dim_product_process');
insert into dynamic values (5,'promotions','stg_promotions','dim_promotions','proc_dim_promotions_process');
insert into dynamic values (6,'times','stg_times','dim_times','proc_dim_times_process');
insert into dynamic values (7,'sales','stg_sales_transaction','fact_sales_transaction','proc_fact_sales_process');
insert into dynamic values (8,'costs','stg_costs_transaction','fact_costs_transaction','proc_fact_costs_process');


/****** Object:  Table [dbo].[stg_channels]    Script Date: 09-06-2021 11:18:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_channels]
(
	[CHANNEL_ID] [nvarchar](max) NULL,
	[CHANNEL_DESC] [nvarchar](max) NULL,
	[CHANNEL_CLASS] [nvarchar](max) NULL,
	[CHANNEL_CLASS_ID] [nvarchar](max) NULL,
	[CHANNEL_TOTAL] [nvarchar](max) NULL,
	[CHANNEL_TOTAL_ID] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO




/****** Object:  Table [dbo].[stg_costs_transaction]    Script Date: 09-06-2021 11:19:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_costs_transaction]
(
	[PROD_ID] [nvarchar](max) NULL,
	[TIME_ID] [nvarchar](max) NULL,
	[PROMO_ID] [nvarchar](max) NULL,
	[CHANNEL_ID] [nvarchar](max) NULL,
	[UNIT_COST] [nvarchar](max) NULL,
	[UNIT_PRICE] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO




/****** Object:  Table [dbo].[stg_countries]    Script Date: 09-06-2021 11:19:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_countries]
(
	[COUNTRY_ID] [nvarchar](max) NULL,
	[COUNTRY_ISO_CODE] [nvarchar](max) NULL,
	[COUNTRY_NAME] [nvarchar](max) NULL,
	[COUNTRY_SUBREGION] [nvarchar](max) NULL,
	[COUNTRY_SUBREGION_ID] [nvarchar](max) NULL,
	[COUNTRY_REGION] [nvarchar](max) NULL,
	[COUNTRY_REGION_ID] [nvarchar](max) NULL,
	[COUNTRY_TOTAL] [nvarchar](max) NULL,
	[COUNTRY_TOTAL_ID] [nvarchar](max) NULL,
	[COUNTRY_NAME_HIST] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO



/****** Object:  Table [dbo].[stg_customers]    Script Date: 09-06-2021 11:20:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_customers]
(
	[CUST_ID] [nvarchar](max) NULL,
	[CUST_FIRST_NAME] [nvarchar](max) NULL,
	[CUST_LAST_NAME] [nvarchar](max) NULL,
	[CUST_GENDER] [nvarchar](max) NULL,
	[CUST_YEAR_OF_BIRTH] [nvarchar](max) NULL,
	[CUST_MARITAL_STATUS] [nvarchar](max) NULL,
	[CUST_STREET_ADDRESS] [nvarchar](max) NULL,
	[CUST_POSTAL_CODE] [nvarchar](max) NULL,
	[CUST_CITY] [nvarchar](max) NULL,
	[CUST_CITY_ID] [nvarchar](max) NULL,
	[CUST_STATE_PROVINCE] [nvarchar](max) NULL,
	[CUST_STATE_PROVINCE_ID] [nvarchar](max) NULL,
	[COUNTRY_ID] [nvarchar](max) NULL,
	[CUST_MAIN_PHONE_NUMBER] [nvarchar](max) NULL,
	[CUST_INCOME_LEVEL] [nvarchar](max) NULL,
	[CUST_CREDIT_LIMIT] [nvarchar](max) NULL,
	[CUST_EMAIL] [nvarchar](max) NULL,
	[CUST_TOTAL] [nvarchar](max) NULL,
	[CUST_TOTAL_ID] [nvarchar](max) NULL,
	[CUST_SRC_ID] [nvarchar](max) NULL,
	[CUST_EFF_FROM] [nvarchar](max) NULL,
	[CUST_EFF_TO] [nvarchar](max) NULL,
	[CUST_VALID] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO



/****** Object:  Table [dbo].[stg_product]    Script Date: 09-06-2021 11:20:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_product]
(
	[PROD_ID] [nvarchar](max) NULL,
	[PROD_NAME] [nvarchar](max) NULL,
	[PROD_DESC] [nvarchar](max) NULL,
	[PROD_SUBCATEGORY] [nvarchar](max) NULL,
	[PROD_SUBCATEGORY_ID] [nvarchar](max) NULL,
	[PROD_SUBCATEGORY_DESC] [nvarchar](max) NULL,
	[PROD_CATEGORY] [nvarchar](max) NULL,
	[PROD_CATEGORY_ID] [nvarchar](max) NULL,
	[PROD_CATEGORY_DESC] [nvarchar](max) NULL,
	[PROD_WEIGHT_CLASS] [nvarchar](max) NULL,
	[PROD_UNIT_OF_MEASURE] [nvarchar](max) NULL,
	[PROD_PACK_SIZE] [nvarchar](max) NULL,
	[SUPPLIER_ID] [nvarchar](max) NULL,
	[PROD_STATUS] [nvarchar](max) NULL,
	[PROD_LIST_PRICE] [nvarchar](max) NULL,
	[PROD_MIN_PRICE] [nvarchar](max) NULL,
	[PROD_TOTAL] [nvarchar](max) NULL,
	[PROD_TOTAL_ID] [nvarchar](max) NULL,
	[PROD_SRC_ID] [nvarchar](max) NULL,
	[PROD_EFF_FROM] [nvarchar](max) NULL,
	[PROD_EFF_TO] [nvarchar](max) NULL,
	[PROD_VALID] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO




/****** Object:  Table [dbo].[stg_promotions]    Script Date: 09-06-2021 11:20:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_promotions]
(
	[PROMO_ID] [nvarchar](max) NULL,
	[PROMO_NAME] [nvarchar](max) NULL,
	[PROMO_SUBCATEGORY] [nvarchar](max) NULL,
	[PROMO_SUBCATEGORY_ID] [nvarchar](max) NULL,
	[PROMO_CATEGORY] [nvarchar](max) NULL,
	[PROMO_CATEGORY_ID] [nvarchar](max) NULL,
	[PROMO_COST] [nvarchar](max) NULL,
	[PROMO_BEGIN_DATE] [nvarchar](max) NULL,
	[PROMO_END_DATE] [nvarchar](max) NULL,
	[PROMO_TOTAL] [nvarchar](max) NULL,
	[PROMO_TOTAL_ID] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO




/****** Object:  Table [dbo].[stg_sales_transaction]    Script Date: 09-06-2021 11:21:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_sales_transaction]
(
	[PROD_ID] [nvarchar](max) NULL,
	[CUST_ID] [nvarchar](max) NULL,
	[TIME_ID] [nvarchar](max) NULL,
	[CHANNEL_ID] [nvarchar](max) NULL,
	[PROMO_ID] [nvarchar](max) NULL,
	[QUANTITY_SOLD] [nvarchar](max) NULL,
	[AMOUNT_SOLD] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO





/****** Object:  Table [dbo].[stg_times]    Script Date: 09-06-2021 11:21:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_times]
(
	[TIME_ID] [nvarchar](max) NULL,
	[DAY_NAME] [nvarchar](max) NULL,
	[DAY_NUMBER_IN_WEEK] [nvarchar](max) NULL,
	[DAY_NUMBER_IN_MONTH] [nvarchar](max) NULL,
	[CALENDAR_WEEK_NUMBER] [nvarchar](max) NULL,
	[FISCAL_WEEK_NUMBER] [nvarchar](max) NULL,
	[WEEK_ENDING_DAY] [nvarchar](max) NULL,
	[WEEK_ENDING_DAY_ID] [nvarchar](max) NULL,
	[CALENDAR_MONTH_NUMBER] [nvarchar](max) NULL,
	[FISCAL_MONTH_NUMBER] [nvarchar](max) NULL,
	[CALENDAR_MONTH_DESC] [nvarchar](max) NULL,
	[CALENDAR_MONTH_ID] [nvarchar](max) NULL,
	[FISCAL_MONTH_DESC] [nvarchar](max) NULL,
	[FISCAL_MONTH_ID] [nvarchar](max) NULL,
	[DAYS_IN_CAL_MONTH] [nvarchar](max) NULL,
	[DAYS_IN_FIS_MONTH] [nvarchar](max) NULL,
	[END_OF_CAL_MONTH] [nvarchar](max) NULL,
	[END_OF_FIS_MONTH] [nvarchar](max) NULL,
	[CALENDAR_MONTH_NAME] [nvarchar](max) NULL,
	[FISCAL_MONTH_NAME] [nvarchar](max) NULL,
	[CALENDAR_QUARTER_DESC] [nvarchar](max) NULL,
	[CALENDAR_QUARTER_ID] [nvarchar](max) NULL,
	[FISCAL_QUARTER_DESC] [nvarchar](max) NULL,
	[FISCAL_QUARTER_ID] [nvarchar](max) NULL,
	[DAYS_IN_CAL_QUARTER] [nvarchar](max) NULL,
	[DAYS_IN_FIS_QUARTER] [nvarchar](max) NULL,
	[END_OF_CAL_QUARTER] [nvarchar](max) NULL,
	[END_OF_FIS_QUARTER] [nvarchar](max) NULL,
	[CALENDAR_QUARTER_NUMBER] [nvarchar](max) NULL,
	[FISCAL_QUARTER_NUMBER] [nvarchar](max) NULL,
	[CALENDAR_YEAR] [nvarchar](max) NULL,
	[CALENDAR_YEAR_ID] [nvarchar](max) NULL,
	[FISCAL_YEAR] [nvarchar](max) NULL,
	[FISCAL_YEAR_ID] [nvarchar](max) NULL,
	[DAYS_IN_CAL_YEAR] [nvarchar](max) NULL,
	[DAYS_IN_FIS_YEAR] [nvarchar](max) NULL,
	[END_OF_CAL_YEAR] [nvarchar](max) NULL,
	[END_OF_FIS_YEAR] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO





/****** Object:  Table [dbo].[dim_channels]    Script Date: 09-06-2021 11:21:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_channels]
(
	[CHANNEL_KEY] [varbinary](8000) NULL,
	[CHANNEL_ID] [int] NULL,
	[CHANNEL_DESC] [nvarchar](max) NULL,
	[CHANNEL_CLASS] [nvarchar](max) NULL,
	[CHANNEL_CLASS_ID] [int] NULL,
	[CHANNEL_TOTAL] [nvarchar](max) NULL,
	[CHANNEL_TOTAL_ID] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](200) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED INDEX
	(
		[CHANNEL_KEY] ASC
	)
)
GO




/****** Object:  Table [dbo].[dim_countries]    Script Date: 09-06-2021 11:22:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_countries]
(
	[COUNTRY_KEY] [varbinary](8000) NULL,
	[COUNTRY_ID] [int] NULL,
	[COUNTRY_ISO_CODE] [nvarchar](max) NULL,
	[COUNTRY_NAME] [nvarchar](max) NULL,
	[COUNTRY_SUBREGION] [nvarchar](max) NULL,
	[COUNTRY_SUBREGION_ID] [int] NULL,
	[COUNTRY_REGION] [nvarchar](max) NULL,
	[COUNTRY_REGION_ID] [int] NULL,
	[COUNTRY_TOTAL] [nvarchar](max) NULL,
	[COUNTRY_TOTAL_ID] [int] NULL,
	[COUNTRY_NAME_HIST] [nvarchar](max) NULL,
	[CREATED_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](200) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED INDEX
	(
		[COUNTRY_KEY] ASC
	)
)
GO



/****** Object:  Table [dbo].[dim_customers]    Script Date: 09-06-2021 11:22:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_customers]
(
	[CUST_KEY] [varbinary](8000) NULL,
	[CUST_ID] [int] NULL,
	[CUST_FIRST_NAME] [nvarchar](max) NULL,
	[CUST_LAST_NAME] [nvarchar](max) NULL,
	[CUST_GENDER] [nvarchar](max) NULL,
	[CUST_YEAR_OF_BIRTH] [int] NULL,
	[CUST_MARITAL_STATUS] [nvarchar](max) NULL,
	[CUST_STREET_ADDRESS] [nvarchar](max) NULL,
	[CUST_POSTAL_CODE] [int] NULL,
	[CUST_CITY] [nvarchar](max) NULL,
	[CUST_CITY_ID] [nvarchar](max) NULL,
	[CUST_STATE_PROVINCE] [nvarchar](max) NULL,
	[CUST_STATE_PROVINCE_ID] [nvarchar](max) NULL,
	[COUNTRY_ID] [int] NULL,
	[CUST_MAIN_PHONE_NUMBER] [nvarchar](max) NULL,
	[CUST_INCOME_LEVEL] [nvarchar](max) NULL,
	[CUST_CREDIT_LIMIT] [nvarchar](max) NULL,
	[CUST_EMAIL] [nvarchar](max) NULL,
	[CUST_TOTAL] [nvarchar](max) NULL,
	[CUST_TOTAL_ID] [nvarchar](max) NULL,
	[CUST_SRC_ID] [nvarchar](max) NULL,
	[CUST_EFF_FROM] [nvarchar](max) NULL,
	[CUST_EFF_TO] [nvarchar](max) NULL,
	[CUST_VALID] [nvarchar](max) NULL,
	[CREATED_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](200) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED INDEX
	(
		[CUST_KEY] ASC
	)
)
GO



/****** Object:  Table [dbo].[dim_product]    Script Date: 09-06-2021 11:23:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_product]
(
	[PROD_KEY] [varbinary](8000) NULL,
	[PROD_ID] [int] NULL,
	[PROD_NAME] [nvarchar](max) NULL,
	[PROD_DESC] [nvarchar](max) NULL,
	[PROD_SUBCATEGORY] [nvarchar](max) NULL,
	[PROD_SUBCATEGORY_ID] [nvarchar](max) NULL,
	[PROD_SUBCATEGORY_DESC] [nvarchar](max) NULL,
	[PROD_CATEGORY] [nvarchar](max) NULL,
	[PROD_CATEGORY_ID] [nvarchar](max) NULL,
	[PROD_CATEGORY_DESC] [nvarchar](max) NULL,
	[PROD_WEIGHT_CLASS] [nvarchar](max) NULL,
	[PROD_UNIT_OF_MEASURE] [nvarchar](max) NULL,
	[PROD_PACK_SIZE] [nvarchar](max) NULL,
	[SUPPLIER_ID] [nvarchar](max) NULL,
	[PROD_STATUS] [nvarchar](max) NULL,
	[PROD_LIST_PRICE] [nvarchar](max) NULL,
	[PROD_MIN_PRICE] [nvarchar](max) NULL,
	[PROD_TOTAL] [nvarchar](max) NULL,
	[PROD_TOTAL_ID] [nvarchar](max) NULL,
	[PROD_SRC_ID] [nvarchar](max) NULL,
	[PROD_EFF_FROM] [nvarchar](max) NULL,
	[PROD_EFF_TO] [nvarchar](max) NULL,
	[PROD_VALID] [nvarchar](max) NULL,
	[CREATED_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](200) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED INDEX
	(
		[PROD_KEY] ASC
	)
)
GO



/****** Object:  Table [dbo].[dim_promotions]    Script Date: 09-06-2021 11:23:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_promotions]
(
	[PROMO_KEY] [varbinary](8000) NULL,
	[PROMO_ID] [int] NULL,
	[PROMO_NAME] [nvarchar](max) NULL,
	[PROMO_SUBCATEGORY] [nvarchar](max) NULL,
	[PROMO_SUBCATEGORY_ID] [int] NULL,
	[PROMO_CATEGORY] [nvarchar](max) NULL,
	[PROMO_CATEGORY_ID] [int] NULL,
	[PROMO_COST] [int] NULL,
	[PROMO_BEGIN_DATE] [nvarchar](max) NULL,
	[PROMO_END_DATE] [nvarchar](max) NULL,
	[PROMO_TOTAL] [nvarchar](max) NULL,
	[PROMO_TOTAL_ID] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](200) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED INDEX
	(
		[PROMO_KEY] ASC
	)
)
GO




/****** Object:  Table [dbo].[dim_times]    Script Date: 09-06-2021 11:23:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_times]
(
	[TIME_KEY] [varbinary](8000) NULL,
	[TIME_ID] [nvarchar](max) NULL,
	[DAY_NAME] [nvarchar](max) NULL,
	[DAY_NUMBER_IN_WEEK] [int] NULL,
	[DAY_NUMBER_IN_MONTH] [int] NULL,
	[CALENDAR_WEEK_NUMBER] [int] NULL,
	[FISCAL_WEEK_NUMBER] [int] NULL,
	[WEEK_ENDING_DAY] [nvarchar](max) NULL,
	[WEEK_ENDING_DAY_ID] [int] NULL,
	[CALENDAR_MONTH_NUMBER] [int] NULL,
	[FISCAL_MONTH_NUMBER] [int] NULL,
	[CALENDAR_MONTH_DESC] [nvarchar](max) NULL,
	[CALENDAR_MONTH_ID] [int] NULL,
	[FISCAL_MONTH_DESC] [nvarchar](max) NULL,
	[FISCAL_MONTH_ID] [int] NULL,
	[DAYS_IN_CAL_MONTH] [int] NULL,
	[DAYS_IN_FIS_MONTH] [int] NULL,
	[END_OF_CAL_MONTH] [nvarchar](max) NULL,
	[END_OF_FIS_MONTH] [nvarchar](max) NULL,
	[CALENDAR_MONTH_NAME] [nvarchar](max) NULL,
	[FISCAL_MONTH_NAME] [nvarchar](max) NULL,
	[CALENDAR_QUARTER_DESC] [nvarchar](max) NULL,
	[CALENDAR_QUARTER_ID] [int] NULL,
	[FISCAL_QUARTER_DESC] [nvarchar](max) NULL,
	[FISCAL_QUARTER_ID] [int] NULL,
	[DAYS_IN_CAL_QUARTER] [int] NULL,
	[DAYS_IN_FIS_QUARTER] [int] NULL,
	[END_OF_CAL_QUARTER] [nvarchar](max) NULL,
	[END_OF_FIS_QUARTER] [nvarchar](max) NULL,
	[CALENDAR_QUARTER_NUMBER] [int] NULL,
	[FISCAL_QUARTER_NUMBER] [int] NULL,
	[CALENDAR_YEAR] [int] NULL,
	[CALENDAR_YEAR_ID] [int] NULL,
	[FISCAL_YEAR] [int] NULL,
	[FISCAL_YEAR_ID] [int] NULL,
	[DAYS_IN_CAL_YEAR] [int] NULL,
	[DAYS_IN_FIS_YEAR] [int] NULL,
	[END_OF_CAL_YEAR] [nvarchar](max) NULL,
	[END_OF_FIS_YEAR] [nvarchar](max) NULL,
	[CREATED_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](200) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED INDEX
	(
		[TIME_KEY] ASC
	)
)
GO



/****** Object:  Table [dbo].[fact_costs_transaction]    Script Date: 09-06-2021 11:24:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fact_costs_transaction]
(
	[COST_FACT_KEY] [binary](64) NULL,
	[PROD_KEY] [varchar](200) NULL,
	[TIME_KEY] [varchar](200) NULL,
	[PROMO_KEY] [varchar](200) NULL,
	[CHANNEL_KEY] [varchar](200) NULL,
	[UNIT_COST] [decimal](15, 2) NULL,
	[UNIT_PRICE] [decimal](15, 2) NULL,
	[CREATED_DATE] [date] NULL,
	[CREATED_BY] [varchar](200) NULL,
	[UPDATED_DATE] [date] NULL,
	[UPDATED_BY] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = HASH ( [COST_FACT_KEY] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO




/****** Object:  Table [dbo].[fact_sales_transaction]    Script Date: 09-06-2021 11:25:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fact_sales_transaction]
(
	[SALES_FACT_KEY] [binary](64) NULL,
	[PROD_KEY] [varchar](200) NULL,
	[CUST_KEY] [varchar](200) NULL,
	[TIME_KEY] [varchar](200) NULL,
	[CHANNEL_KEY] [varchar](200) NULL,
	[PROMO_KEY] [varchar](200) NULL,
	[QUANTITY_SOLD] [decimal](15, 2) NULL,
	[AMOUNT_SOLD] [decimal](15, 2) NULL,
	[CREATED_DATE] [date] NULL,
	[CREATED_BY] [varchar](200) NULL,
	[UPDATED_DATE] [date] NULL,
	[UPDATED_BY] [varchar](200) NULL
)
WITH
(
	DISTRIBUTION = HASH ( [SALES_FACT_KEY] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO




/****** Object:  StoredProcedure [dbo].[proc_dim_channels_process]    Script Date: 09-06-2021 11:25:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[proc_dim_channels_process] AS 
BEGIN 
CREATE TABLE dbo.[dim_channels_upsert]
WITH
(   DISTRIBUTION = REPLICATE
,   CLUSTERED INDEX ([CHANNEL_KEY])
)
AS
-- New rows and new versions of rows
SELECT      HASHBYTES('SHA2_256', convert(varchar(50),CHANNEL_ID)) as CHANNEL_KEY,
[CHANNEL_ID] ,
[CHANNEL_DESC] ,
[CHANNEL_CLASS] ,
[CHANNEL_CLASS_ID] ,
[CHANNEL_TOTAL] ,
[CHANNEL_TOTAL_ID] ,
GETDATE() as CREATED_DATE,
'ETL' as CREATED_BY,
GETDATE() as UPDATED_DATE ,
'ETL'  as UPDATED_BY
FROM      dbo.[stg_channels] AS s
UNION ALL  
-- Keep rows that are not being touched
SELECT      [CHANNEL_KEY],
[CHANNEL_ID] ,
[CHANNEL_DESC] ,
[CHANNEL_CLASS] ,
[CHANNEL_CLASS_ID] ,
[CHANNEL_TOTAL] ,
[CHANNEL_TOTAL_ID] ,
[CREATED_DATE] ,
[CREATED_BY] ,
[UPDATED_DATE] ,
[UPDATED_BY] 
FROM      dbo.[dim_channels] AS p
WHERE NOT EXISTS
(   SELECT  *
    FROM    [dbo].[stg_channels] s
    WHERE   s.[CHANNEL_ID] = p.[CHANNEL_ID]
)
;

RENAME OBJECT dbo.[dim_channels]          TO [dim_channels_old];
RENAME OBJECT dbo.[dim_channels_upsert]  TO [dim_channels];
DROP TABLE dbo.[dim_channels_old];

END;
GO



/****** Object:  StoredProcedure [dbo].[proc_dim_countries_process]    Script Date: 09-06-2021 11:25:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[proc_dim_countries_process] AS
BEGIN
	CREATE TABLE dbo.[dim_countries_upsert]
		WITH (
				DISTRIBUTION = REPLICATE
				,CLUSTERED INDEX ([COUNTRY_KEY])
				) AS

	-- New rows and new versions of rows
	SELECT HASHBYTES('SHA2_256', convert(VARCHAR(50), COUNTRY_ID)) AS [COUNTRY_KEY]
		,[COUNTRY_ID]
      ,[COUNTRY_ISO_CODE]
      ,[COUNTRY_NAME]
      ,[COUNTRY_SUBREGION]
      ,[COUNTRY_SUBREGION_ID]
      ,[COUNTRY_REGION]
      ,[COUNTRY_REGION_ID]
      ,[COUNTRY_TOTAL]
      ,[COUNTRY_TOTAL_ID]
      ,[COUNTRY_NAME_HIST]
		,GETDATE() AS CREATED_DATE
		,'ETL' AS CREATED_BY
		,GETDATE() AS UPDATED_DATE
		,'ETL' AS UPDATED_BY
	FROM dbo.[stg_countries] AS s
	
	UNION ALL
	
	-- Keep rows that are not being touched
	SELECT [COUNTRY_KEY]
      ,[COUNTRY_ID]
      ,[COUNTRY_ISO_CODE]
      ,[COUNTRY_NAME]
      ,[COUNTRY_SUBREGION]
      ,[COUNTRY_SUBREGION_ID]
      ,[COUNTRY_REGION]
      ,[COUNTRY_REGION_ID]
      ,[COUNTRY_TOTAL]
      ,[COUNTRY_TOTAL_ID]
      ,[COUNTRY_NAME_HIST]
      ,[CREATED_DATE]
      ,[CREATED_BY]
      ,[UPDATED_DATE]
      ,[UPDATED_BY]
	FROM dbo.[dim_countries] AS p
	WHERE NOT EXISTS (
			SELECT *
			FROM [dbo].[stg_countries] s
			WHERE s.[COUNTRY_ID] = p.[COUNTRY_ID]
			);

	RENAME OBJECT dbo.[dim_countries] TO [dim_countries_old];

	RENAME OBJECT dbo.[dim_countries_upsert] TO [dim_countries];

	DROP TABLE dbo.[dim_countries_old];
END;
GO







/****** Object:  StoredProcedure [dbo].[proc_dim_customers_process]    Script Date: 09-06-2021 11:26:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[proc_dim_customers_process] AS
BEGIN
	CREATE TABLE dbo.[dim_customers_upsert]
		WITH (
				DISTRIBUTION = REPLICATE
				,CLUSTERED INDEX ([CUST_KEY])
				) AS

	-- New rows and new versions of rows
	SELECT HASHBYTES('SHA2_256', convert(VARCHAR(50), CUST_ID)) AS [CUST_KEY]
		,[CUST_ID]
      ,[CUST_FIRST_NAME]
      ,[CUST_LAST_NAME]
      ,[CUST_GENDER]
      ,[CUST_YEAR_OF_BIRTH]
      ,[CUST_MARITAL_STATUS]
      ,[CUST_STREET_ADDRESS]
      ,[CUST_POSTAL_CODE]
      ,[CUST_CITY]
      ,[CUST_CITY_ID]
      ,[CUST_STATE_PROVINCE]
      ,[CUST_STATE_PROVINCE_ID]
      ,[COUNTRY_ID]
      ,[CUST_MAIN_PHONE_NUMBER]
      ,[CUST_INCOME_LEVEL]
      ,[CUST_CREDIT_LIMIT]
      ,[CUST_EMAIL]
      ,[CUST_TOTAL]
      ,[CUST_TOTAL_ID]
      ,[CUST_SRC_ID]
      ,[CUST_EFF_FROM]
      ,[CUST_EFF_TO]
      ,[CUST_VALID]
		,GETDATE() AS CREATED_DATE
		,'ETL' AS CREATED_BY
		,GETDATE() AS UPDATED_DATE
		,'ETL' AS UPDATED_BY
	FROM dbo.[stg_customers] AS s
	
	UNION ALL
	
	-- Keep rows that are not being touched
	SELECT [CUST_KEY]
      ,[CUST_ID]
      ,[CUST_FIRST_NAME]
      ,[CUST_LAST_NAME]
      ,[CUST_GENDER]
      ,[CUST_YEAR_OF_BIRTH]
      ,[CUST_MARITAL_STATUS]
      ,[CUST_STREET_ADDRESS]
      ,[CUST_POSTAL_CODE]
      ,[CUST_CITY]
      ,[CUST_CITY_ID]
      ,[CUST_STATE_PROVINCE]
      ,[CUST_STATE_PROVINCE_ID]
      ,[COUNTRY_ID]
      ,[CUST_MAIN_PHONE_NUMBER]
      ,[CUST_INCOME_LEVEL]
      ,[CUST_CREDIT_LIMIT]
      ,[CUST_EMAIL]
      ,[CUST_TOTAL]
      ,[CUST_TOTAL_ID]
      ,[CUST_SRC_ID]
      ,[CUST_EFF_FROM]
      ,[CUST_EFF_TO]
      ,[CUST_VALID]
      ,[CREATED_DATE]
      ,[CREATED_BY]
      ,[UPDATED_DATE]
      ,[UPDATED_BY]
	FROM dbo.[dim_customers] AS p
	WHERE NOT EXISTS (
			SELECT *
			FROM [dbo].[stg_customers] s
			WHERE s.[CUST_ID] = p.[CUST_ID]
			);

	RENAME OBJECT dbo.[dim_customers] TO [dim_customers_old];

	RENAME OBJECT dbo.[dim_customers_upsert] TO [dim_customers];

	DROP TABLE dbo.[dim_customers_old];
END;
GO






/****** Object:  StoredProcedure [dbo].[proc_dim_product_process]    Script Date: 09-06-2021 11:26:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[proc_dim_product_process] AS
BEGIN
	CREATE TABLE dbo.[dim_product_upsert]
		WITH (
				DISTRIBUTION = REPLICATE
				,CLUSTERED INDEX ([PROD_KEY])
				) AS

	-- New rows and new versions of rows
	SELECT HASHBYTES('SHA2_256', convert(VARCHAR(50), PROD_ID)) AS [PROD_KEY]
		,[PROD_ID]
      ,[PROD_NAME]
      ,[PROD_DESC]
      ,[PROD_SUBCATEGORY]
      ,[PROD_SUBCATEGORY_ID]
      ,[PROD_SUBCATEGORY_DESC]
      ,[PROD_CATEGORY]
      ,[PROD_CATEGORY_ID]
      ,[PROD_CATEGORY_DESC]
      ,[PROD_WEIGHT_CLASS]
      ,[PROD_UNIT_OF_MEASURE]
      ,[PROD_PACK_SIZE]
      ,[SUPPLIER_ID]
      ,[PROD_STATUS]
      ,[PROD_LIST_PRICE]
      ,[PROD_MIN_PRICE]
      ,[PROD_TOTAL]
      ,[PROD_TOTAL_ID]
      ,[PROD_SRC_ID]
      ,[PROD_EFF_FROM]
      ,[PROD_EFF_TO]
      ,[PROD_VALID]
		,GETDATE() AS CREATED_DATE
		,'ETL' AS CREATED_BY
		,GETDATE() AS UPDATED_DATE
		,'ETL' AS UPDATED_BY
	FROM dbo.[stg_product] AS s
	
	UNION ALL
	
	-- Keep rows that are not being touched
	SELECT [PROD_KEY]
      ,[PROD_ID]
      ,[PROD_NAME]
      ,[PROD_DESC]
      ,[PROD_SUBCATEGORY]
      ,[PROD_SUBCATEGORY_ID]
      ,[PROD_SUBCATEGORY_DESC]
      ,[PROD_CATEGORY]
      ,[PROD_CATEGORY_ID]
      ,[PROD_CATEGORY_DESC]
      ,[PROD_WEIGHT_CLASS]
      ,[PROD_UNIT_OF_MEASURE]
      ,[PROD_PACK_SIZE]
      ,[SUPPLIER_ID]
      ,[PROD_STATUS]
      ,[PROD_LIST_PRICE]
      ,[PROD_MIN_PRICE]
      ,[PROD_TOTAL]
      ,[PROD_TOTAL_ID]
      ,[PROD_SRC_ID]
      ,[PROD_EFF_FROM]
      ,[PROD_EFF_TO]
      ,[PROD_VALID]
      ,[CREATED_DATE]
      ,[CREATED_BY]
      ,[UPDATED_DATE]
      ,[UPDATED_BY]
	FROM dbo.[dim_product] AS p
	WHERE NOT EXISTS (
			SELECT *
			FROM [dbo].[stg_product] s
			WHERE s.[PROD_ID] = p.[PROD_ID]
			);

	RENAME OBJECT dbo.[dim_product] TO [dim_product_old];

	RENAME OBJECT dbo.[dim_product_upsert] TO [dim_product];

	DROP TABLE dbo.[dim_product_old];
END;
GO



/****** Object:  StoredProcedure [dbo].[proc_dim_promotions_process]    Script Date: 09-06-2021 11:26:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[proc_dim_promotions_process] AS
BEGIN
	CREATE TABLE dbo.[dim_promotions_upsert]
		WITH (
				DISTRIBUTION = REPLICATE
				,CLUSTERED INDEX ([PROMO_KEY])
				) AS

	-- New rows and new versions of rows
	SELECT HASHBYTES('SHA2_256', convert(VARCHAR(50), PROMO_ID)) AS [PROMO_KEY]
      ,[PROMO_ID]
      ,[PROMO_NAME]
      ,[PROMO_SUBCATEGORY]
      ,[PROMO_SUBCATEGORY_ID]
      ,[PROMO_CATEGORY]
      ,[PROMO_CATEGORY_ID]
      ,[PROMO_COST]
      ,[PROMO_BEGIN_DATE]
      ,[PROMO_END_DATE]
      ,[PROMO_TOTAL]
      ,[PROMO_TOTAL_ID]
		,GETDATE() AS CREATED_DATE
		,'ETL' AS CREATED_BY
		,GETDATE() AS UPDATED_DATE
		,'ETL' AS UPDATED_BY
	FROM dbo.[stg_promotions] AS s
	
	UNION ALL
	
	-- Keep rows that are not being touched
	SELECT [PROMO_KEY]
      ,[PROMO_ID]
      ,[PROMO_NAME]
      ,[PROMO_SUBCATEGORY]
      ,[PROMO_SUBCATEGORY_ID]
      ,[PROMO_CATEGORY]
      ,[PROMO_CATEGORY_ID]
      ,[PROMO_COST]
      ,[PROMO_BEGIN_DATE]
      ,[PROMO_END_DATE]
      ,[PROMO_TOTAL]
      ,[PROMO_TOTAL_ID]
      ,[CREATED_DATE]
      ,[CREATED_BY]
      ,[UPDATED_DATE]
      ,[UPDATED_BY]
	FROM dbo.[dim_promotions] AS p
	WHERE NOT EXISTS (
			SELECT *
			FROM [dbo].[stg_promotions] s
			WHERE s.[PROMO_ID] = p.[PROMO_ID]
			);

	RENAME OBJECT dbo.[dim_promotions] TO [dim_promotions_old];

	RENAME OBJECT dbo.[dim_promotions_upsert] TO [dim_promotions];

	DROP TABLE dbo.[dim_promotions_old];
END;
GO




/****** Object:  StoredProcedure [dbo].[proc_dim_times_process]    Script Date: 09-06-2021 11:27:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[proc_dim_times_process] AS
BEGIN
	CREATE TABLE dbo.[dim_times_upsert]
		WITH (
				DISTRIBUTION = REPLICATE
				,CLUSTERED INDEX ([TIME_KEY])
				) AS

	-- New rows and new versions of rows
	SELECT HASHBYTES('SHA2_256', convert(VARCHAR(50), TIME_ID)) AS [TIME_KEY]
      ,[TIME_ID]
      ,[DAY_NAME]
      ,[DAY_NUMBER_IN_WEEK]
      ,[DAY_NUMBER_IN_MONTH]
      ,[CALENDAR_WEEK_NUMBER]
      ,[FISCAL_WEEK_NUMBER]
      ,[WEEK_ENDING_DAY]
      ,[WEEK_ENDING_DAY_ID]
      ,[CALENDAR_MONTH_NUMBER]
      ,[FISCAL_MONTH_NUMBER]
      ,[CALENDAR_MONTH_DESC]
      ,[CALENDAR_MONTH_ID]
      ,[FISCAL_MONTH_DESC]
      ,[FISCAL_MONTH_ID]
      ,[DAYS_IN_CAL_MONTH]
      ,[DAYS_IN_FIS_MONTH]
      ,[END_OF_CAL_MONTH]
      ,[END_OF_FIS_MONTH]
      ,[CALENDAR_MONTH_NAME]
      ,[FISCAL_MONTH_NAME]
      ,[CALENDAR_QUARTER_DESC]
      ,[CALENDAR_QUARTER_ID]
      ,[FISCAL_QUARTER_DESC]
      ,[FISCAL_QUARTER_ID]
      ,[DAYS_IN_CAL_QUARTER]
      ,[DAYS_IN_FIS_QUARTER]
      ,[END_OF_CAL_QUARTER]
      ,[END_OF_FIS_QUARTER]
      ,[CALENDAR_QUARTER_NUMBER]
      ,[FISCAL_QUARTER_NUMBER]
      ,[CALENDAR_YEAR]
      ,[CALENDAR_YEAR_ID]
      ,[FISCAL_YEAR]
      ,[FISCAL_YEAR_ID]
      ,[DAYS_IN_CAL_YEAR]
      ,[DAYS_IN_FIS_YEAR]
      ,[END_OF_CAL_YEAR]
      ,[END_OF_FIS_YEAR]
		,GETDATE() AS CREATED_DATE
		,'ETL' AS CREATED_BY
		,GETDATE() AS UPDATED_DATE
		,'ETL' AS UPDATED_BY
	FROM dbo.[stg_times] AS s
	
	UNION ALL
	
	-- Keep rows that are not being touched
	SELECT [TIME_KEY]
      ,[TIME_ID]
      ,[DAY_NAME]
      ,[DAY_NUMBER_IN_WEEK]
      ,[DAY_NUMBER_IN_MONTH]
      ,[CALENDAR_WEEK_NUMBER]
      ,[FISCAL_WEEK_NUMBER]
      ,[WEEK_ENDING_DAY]
      ,[WEEK_ENDING_DAY_ID]
      ,[CALENDAR_MONTH_NUMBER]
      ,[FISCAL_MONTH_NUMBER]
      ,[CALENDAR_MONTH_DESC]
      ,[CALENDAR_MONTH_ID]
      ,[FISCAL_MONTH_DESC]
      ,[FISCAL_MONTH_ID]
      ,[DAYS_IN_CAL_MONTH]
      ,[DAYS_IN_FIS_MONTH]
      ,[END_OF_CAL_MONTH]
      ,[END_OF_FIS_MONTH]
      ,[CALENDAR_MONTH_NAME]
      ,[FISCAL_MONTH_NAME]
      ,[CALENDAR_QUARTER_DESC]
      ,[CALENDAR_QUARTER_ID]
      ,[FISCAL_QUARTER_DESC]
      ,[FISCAL_QUARTER_ID]
      ,[DAYS_IN_CAL_QUARTER]
      ,[DAYS_IN_FIS_QUARTER]
      ,[END_OF_CAL_QUARTER]
      ,[END_OF_FIS_QUARTER]
      ,[CALENDAR_QUARTER_NUMBER]
      ,[FISCAL_QUARTER_NUMBER]
      ,[CALENDAR_YEAR]
      ,[CALENDAR_YEAR_ID]
      ,[FISCAL_YEAR]
      ,[FISCAL_YEAR_ID]
      ,[DAYS_IN_CAL_YEAR]
      ,[DAYS_IN_FIS_YEAR]
      ,[END_OF_CAL_YEAR]
      ,[END_OF_FIS_YEAR]
      ,[CREATED_DATE]
      ,[CREATED_BY]
      ,[UPDATED_DATE]
      ,[UPDATED_BY]
	FROM dbo.[dim_times] AS p
	WHERE NOT EXISTS (
			SELECT *
			FROM [dbo].[stg_times] s
			WHERE s.[TIME_ID] = p.[TIME_ID]
			);

	RENAME OBJECT dbo.[dim_times] TO [dim_times_old];

	RENAME OBJECT dbo.[dim_times_upsert] TO [dim_times];

	DROP TABLE dbo.[dim_times_old];
END;
GO




/****** Object:  StoredProcedure [dbo].[Proc_fact_costs_process]    Script Date: 09-06-2021 11:27:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Proc_fact_costs_process] AS
  BEGIN
    MERGE
    INTO         [dbo].[fact_costs_transaction] AS t
    using        (
                        SELECT CONVERT(BINARY(64),Hashbytes('SHA2_256', CONVERT(VARCHAR(500), Concat(prod_id,time_id, promo_id, channel_id)))) AS COST_FACT_KEY ,
                            prod_id as   [prod_key] ,
                            time_id as   [time_key] ,
                            promo_id as   [promo_key] ,
                            channel_id as   [channel_key] ,
                               [unit_cost] ,
                               [unit_price] ,
                               Getdate() AS CREATED_DATE ,
                               'ETL'     AS CREATED_BY ,
                               Getdate() AS UPDATED_DATE ,
                               'ETL'     AS UPDATED_BY
                        FROM   [dbo].[stg_costs_transaction]) s
    ON t.cost_fact_key = s.cost_fact_key
    WHEN matched THEN
    UPDATE
    SET              [prod_key]=s.[prod_key] ,
                     [time_key]=s.[time_key] ,
                     [promo_key]=s.[promo_key] ,
                     [channel_key]=s.[channel_key] ,
                     [unit_cost]=s.[unit_cost] ,
                     [unit_price]=s.[unit_price] ,
                     [created_date]=Getdate() ,
                     [created_by]='ETL' ,
                     [updated_date]=Getdate() ,
                     [updated_by]='ETL'
    WHEN NOT matched THEN
    INSERT
           (
                  [cost_fact_key],
                  [prod_key] ,
                  [time_key] ,
                  [promo_key] ,
                  [channel_key] ,
                  [unit_cost] ,
                  [unit_price] ,
                  [created_date] ,
                  [created_by] ,
                  [updated_date] ,
                  [updated_by]
           )
           VALUES
           (
                  s.[cost_fact_key],
                  s.[prod_key] ,
                  s.[time_key] ,
                  s.[promo_key] ,
                  s.[channel_key] ,
                  s.[unit_cost] ,
                  s.[unit_price] ,
                  s.[created_date] ,
                  s.[created_by] ,
                  s.[updated_date] ,
                  s.[updated_by]
           );
  
  END
GO




/****** Object:  StoredProcedure [dbo].[Proc_fact_sales_process]    Script Date: 09-06-2021 11:28:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Proc_fact_sales_process] AS
  BEGIN
      MERGE INTO [dbo].[fact_sales_transaction] AS t
      using (SELECT CONVERT(BINARY(64),Hashbytes('SHA2_256', CONVERT(VARCHAR(500),
                    Concat(time_id, cust_id,prod_id
                    ,
                            promo_id, channel_id)
                                          ))) AS SALES_FACT_KEY,
                    prod_id as [prod_key],
                    cust_id as [cust_key],
                    time_id as [time_key],
                    promo_id as [promo_key],
                    channel_id as [channel_key],
                    [quantity_sold],
                    [amount_sold],
                    Getdate()                AS CREATED_DATE,
                    'ETL'                    AS CREATED_BY,
                    Getdate()                AS UPDATED_DATE,
                    'ETL'                    AS UPDATED_BY
             FROM   [dbo].[stg_sales_transaction]) s
      ON t.sales_fact_key = s.sales_fact_key
      WHEN matched THEN
        UPDATE SET [cust_key] = s.[cust_key],
                   [prod_key] = s.[prod_key],
                   [time_key] = s.[time_key],
                   [promo_key] = s.[promo_key],
                   [channel_key] = s.[channel_key],
                   [quantity_sold] = s.[quantity_sold],
                   [amount_sold] = s.[amount_sold],
                   [created_date] = Getdate(),
                   [created_by] = 'ETL',
                   [updated_date] = Getdate(),
                   [updated_by] = 'ETL'
      WHEN NOT matched THEN
        INSERT ( SALES_FACT_KEY,
                 [prod_key],
                 [cust_key],
                 [time_key],
                 [promo_key],
                 [channel_key],
                 [quantity_sold],
                 [amount_sold],
                 [created_date],
                 [created_by],
                 [updated_date],
                 [updated_by])
        VALUES (s.SALES_FACT_KEY,
                s.[prod_key],
                s.[cust_key],
                s.[time_key],
                s.[promo_key],
                s.[channel_key],
                s.[quantity_sold],
                s.[amount_sold],
                s.[created_date],
                s.[created_by],
                s.[updated_date],
                s.[updated_by]);
  END

GO



	
	
/*******************************************************
managing security and creating users and granting
access 
********************************************************/
	
	
--run in master	
DROP MASTER KEY;
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Login@123456789';
 
	
	
--run in master
drop login manager;
CREATE LOGIN Manager WITH PASSWORD = 'Login@1234'
GO


--run in master

drop user Manager;
--run in master and your SQL pool database
CREATE USER Manager FOR LOGIN Manager;





CREATE TABLE dbo.orders  
    (  
    OrderID int,  
    SalesRep sysname,  
    Product varchar(10),  
    Qty int  
    );
INSERT INTO orders VALUES (1, 'orders1', 'Valve', 5);
INSERT INTO orders VALUES (2, 'orders1', 'Wheel', 2);
INSERT INTO orders VALUES (3, 'orders1', 'Valve', 4);
INSERT INTO orders VALUES (4, 'orders2', 'Bracket', 2);
INSERT INTO orders VALUES (5, 'orders2', 'Wheel', 5);
INSERT INTO orders VALUES (6, 'orders2', 'Seat', 5);
-- View the 6 rows in the table  
SELECT * FROM dbo.orders;


-- grant access to manager user
GRANT SELECT ON dbo.orders TO Manager;   
-- grant selected fields to manager
GRANT SELECT ON dbo.orders(OrderId, SalesRep, Product) TO Manager;
-- verify the columns
select * from dbo.orders




/*****************************************
**Create an Azure Synapse external table 
from the Sales table you just created.
******************************************/
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<user_password>';


/**************************************************************
* Creating DATABASE Scoped credentials
***************************************************************/

DROP DATABASE  SCOPED CREDENTIAL ADLS_credential;
-- Use storage account name and account key

CREATE  DATABASE  SCOPED CREDENTIAL ADLS_credential
WITH IDENTITY = 'SHARED ACCESS SIGNATURE' ,  
SECRET =  'Wp8W8aKccEfvXOHquWpexHlXikGRdRpxkQewupPsDLu7M2h/UWq/q8kxu3DePh3GMM7hzK95yw=='
GO

/**************************************************************
* Creating DATA SOURCE for DATALAKE
***************************************************************/
drop  EXTERNAL DATA SOURCE AzureDataLakeStore;

CREATE EXTERNAL DATA SOURCE AzureDataLakeStore
WITH
  (LOCATION =  'abfss://sales@adlsgen2.dfs.core.windows.net/',
    CREDENTIAL = ADLS_credential,
    TYPE = HADOOP
  );

/**************************************************************
* Creating FILE FORMAT And options
***************************************************************/

drop EXTERNAL FILE FORMAT csv_file_format;

CREATE EXTERNAL FILE FORMAT csv_file_format  
WITH (  
    FORMAT_TYPE = DELIMITEDTEXT,
	FORMAT_OPTIONS (
        FIELD_TERMINATOR = ',',
		FIRST_ROW = 2,
        STRING_DELIMITER = '',
        DATE_FORMAT = '',
        USE_TYPE_DEFAULT = False
    )
    );  

/**************************************************************
* Creating External table
***************************************************************/

drop EXTERNAL TABLE channels_external;

CREATE EXTERNAL TABLE channels_external
(
    CHANNEL_ID varchar(50),
	CHANNEL_DESC varchar(50),
	CHANNEL_CLASS varchar(50),
	CHANNEL_CLASS_ID varchar(50),
	CHANNEL_TOTAL varchar(50),
	CHANNEL_TOTAL_ID varchar(50)
)  
WITH (
    LOCATION =  '/channels/channels06-12-2020-10-20-50.csv' ,
    DATA_SOURCE = AzureDataLakeStore,  
    FILE_FORMAT = csv_file_format
)
GO

/**************************************************************
* Verifying table data
***************************************************************/

select * from channels_external






















CREATE VIEW dbo.vTableSizes
AS
WITH base
AS
(
SELECT
 GETDATE()                                                             AS  [execution_time]
, DB_NAME()                                                            AS  [database_name]
, s.name                                                               AS  [schema_name]
, t.name                                                               AS  [table_name]
, QUOTENAME(s.name)+'.'+QUOTENAME(t.name)                              AS  [two_part_name]
, nt.[name]                                                            AS  [node_table_name]
, ROW_NUMBER() OVER(PARTITION BY nt.[name] ORDER BY (SELECT NULL))     AS  [node_table_name_seq]
, tp.[distribution_policy_desc]                                        AS  [distribution_policy_name]
, c.[name]                                                             AS  [distribution_column]
, nt.[distribution_id]                                                 AS  [distribution_id]
, i.[type]                                                             AS  [index_type]
, i.[type_desc]                                                        AS  [index_type_desc]
, nt.[pdw_node_id]                                                     AS  [pdw_node_id]
, pn.[type]                                                            AS  [pdw_node_type]
, pn.[name]                                                            AS  [pdw_node_name]
, di.name                                                              AS  [dist_name]
, di.position                                                          AS  [dist_position]
, nps.[partition_number]                                               AS  [partition_nmbr]
, nps.[reserved_page_count]                                            AS  [reserved_space_page_count]
, nps.[reserved_page_count] - nps.[used_page_count]                    AS  [unused_space_page_count]
, nps.[in_row_data_page_count]
    + nps.[row_overflow_used_page_count]
    + nps.[lob_used_page_count]                                        AS  [data_space_page_count]
, nps.[reserved_page_count]
 - (nps.[reserved_page_count] - nps.[used_page_count])
 - ([in_row_data_page_count]
         + [row_overflow_used_page_count]+[lob_used_page_count])       AS  [index_space_page_count]
, nps.[row_count]                                                      AS  [row_count]
from
    sys.schemas s
INNER JOIN sys.tables t
    ON s.[schema_id] = t.[schema_id]
INNER JOIN sys.indexes i
    ON  t.[object_id] = i.[object_id]
    AND i.[index_id] <= 1
INNER JOIN sys.pdw_table_distribution_properties tp
    ON t.[object_id] = tp.[object_id]
INNER JOIN sys.pdw_table_mappings tm
    ON t.[object_id] = tm.[object_id]
INNER JOIN sys.pdw_nodes_tables nt
    ON tm.[physical_name] = nt.[name]
INNER JOIN sys.dm_pdw_nodes pn
    ON  nt.[pdw_node_id] = pn.[pdw_node_id]
INNER JOIN sys.pdw_distributions di
    ON  nt.[distribution_id] = di.[distribution_id]
INNER JOIN sys.dm_pdw_nodes_db_partition_stats nps
    ON nt.[object_id] = nps.[object_id]
    AND nt.[pdw_node_id] = nps.[pdw_node_id]
    AND nt.[distribution_id] = nps.[distribution_id]
LEFT OUTER JOIN (select * from sys.pdw_column_distribution_properties where distribution_ordinal = 1) cdp
    ON t.[object_id] = cdp.[object_id]
LEFT OUTER JOIN sys.columns c
    ON cdp.[object_id] = c.[object_id]
    AND cdp.[column_id] = c.[column_id]
WHERE pn.[type] = 'COMPUTE'
)
, size
AS
(
SELECT
   [execution_time]
,  [database_name]
,  [schema_name]
,  [table_name]
,  [two_part_name]
,  [node_table_name]
,  [node_table_name_seq]
,  [distribution_policy_name]
,  [distribution_column]
,  [distribution_id]
,  [index_type]
,  [index_type_desc]
,  [pdw_node_id]
,  [pdw_node_type]
,  [pdw_node_name]
,  [dist_name]
,  [dist_position]
,  [partition_nmbr]
,  [reserved_space_page_count]
,  [unused_space_page_count]
,  [data_space_page_count]
,  [index_space_page_count]
,  [row_count]
,  ([reserved_space_page_count] * 8.0)                                 AS [reserved_space_KB]
,  ([reserved_space_page_count] * 8.0)/1000                            AS [reserved_space_MB]
,  ([reserved_space_page_count] * 8.0)/1000000                         AS [reserved_space_GB]
,  ([reserved_space_page_count] * 8.0)/1000000000                      AS [reserved_space_TB]
,  ([unused_space_page_count]   * 8.0)                                 AS [unused_space_KB]
,  ([unused_space_page_count]   * 8.0)/1000                            AS [unused_space_MB]
,  ([unused_space_page_count]   * 8.0)/1000000                         AS [unused_space_GB]
,  ([unused_space_page_count]   * 8.0)/1000000000                      AS [unused_space_TB]
,  ([data_space_page_count]     * 8.0)                                 AS [data_space_KB]
,  ([data_space_page_count]     * 8.0)/1000                            AS [data_space_MB]
,  ([data_space_page_count]     * 8.0)/1000000                         AS [data_space_GB]
,  ([data_space_page_count]     * 8.0)/1000000000                      AS [data_space_TB]
,  ([index_space_page_count]  * 8.0)                                   AS [index_space_KB]
,  ([index_space_page_count]  * 8.0)/1000                              AS [index_space_MB]
,  ([index_space_page_count]  * 8.0)/1000000                           AS [index_space_GB]
,  ([index_space_page_count]  * 8.0)/1000000000                        AS [index_space_TB]
FROM base
)
SELECT *
FROM size
;

/*****************************************************
To identify which tables have more than 10% data skew
******************************************************/


 select *
from dbo.vTableSizes
where two_part_name in
    (
    select two_part_name
    from dbo.vTableSizes
    where row_count > 0
    group by two_part_name
    having (max(row_count * 1.000) - min(row_count * 1.000))/max(row_count * 1.000) >= .10
    )
order by two_part_name, row_count
;

/**********************************************************
Distribution space summary
***********************************************************/
SELECT
    distribution_id
,    SUM(row_count)                as total_node_distribution_row_count
,    SUM(reserved_space_MB)        as total_node_distribution_reserved_space_MB
,    SUM(data_space_MB)            as total_node_distribution_data_space_MB
,    SUM(index_space_MB)           as total_node_distribution_index_space_MB
,    SUM(unused_space_MB)          as total_node_distribution_unused_space_MB
FROM dbo.vTableSizes
GROUP BY     distribution_id
ORDER BY    distribution_id
;

/*****************************************************************
Table space by distribution type
******************************************************************/
SELECT
     distribution_policy_name
,    SUM(row_count)                as table_type_row_count
,    SUM(reserved_space_GB)        as table_type_reserved_space_GB
,    SUM(data_space_GB)            as table_type_data_space_GB
,    SUM(index_space_GB)           as table_type_index_space_GB
,    SUM(unused_space_GB)          as table_type_unused_space_GB
FROM dbo.vTableSizes
GROUP BY distribution_policy_name
;


/*****************************************************************************
Table space by index type
******************************************************************************/

SELECT
     index_type_desc
,    SUM(row_count)                as table_type_row_count
,    SUM(reserved_space_GB)        as table_type_reserved_space_GB
,    SUM(data_space_GB)            as table_type_data_space_GB
,    SUM(index_space_GB)           as table_type_index_space_GB
,    SUM(unused_space_GB)          as table_type_unused_space_GB
FROM dbo.vTableSizes
GROUP BY index_type_desc
;

/**********************************************************************
Table space summary This query returns the rows and space by table. 
It allows you to see which tables are your largest tables and whether they're round-robin, 
replicated, or hash -distributed. For hash-distributed tables, the query shows the 
distribution column.
*************************************************************************/

SELECT
     database_name
,    schema_name
,    table_name
,    distribution_policy_name
,      distribution_column
,    index_type_desc
,    COUNT(distinct partition_nmbr) as nbr_partitions
,    SUM(row_count)                 as table_row_count
,    SUM(reserved_space_GB)         as table_reserved_space_GB
,    SUM(data_space_GB)             as table_data_space_GB
,    SUM(index_space_GB)            as table_index_space_GB
,    SUM(unused_space_GB)           as table_unused_space_GB
FROM
    dbo.vTableSizes
GROUP BY
     database_name
,    schema_name
,    table_name
,    distribution_policy_name
,      distribution_column
,    index_type_desc
ORDER BY
    table_reserved_space_GB desc
;



/*******************************************************************************
Verify data skew in all distribution tables using 
below query.
********************************************************************************/


SELECT
    [Fully Entity Name]                 = t.full_entity_name,
    [Schema Name]                       = t.schema_name,
    [Entity Name]                       = t.entity_name,
    [Current Distribution Method]       = t.distribution_method,
    [Current Distribution Column]       = ISNULL(t.distribution_column, '-'),
    [Current Rows]                      = SUM(t.rows_count),
    [Distribution Count]                = COUNT(t.rows_count),
    [Current Data Size on Disk MB]      = SUM(t.data_size_MB),
    [Current Index Size on Disk MB]     = SUM(t.index_size_MB),
    [Skew Coefficient]                  = CASE
                                            WHEN SUM(t.rows_count) / COUNT(rows_count) <> 0
                                            THEN ROUND((t.standard_deviation / (SUM(t.rows_count) / COUNT(t.rows_count))) * 1.0, 2)
                                            ELSE 0
                                          END,
    [Skew Percentage]                   = CASE
                                            WHEN MAX(t.rows_count) <> 0
                                            THEN CAST((100.0 - (AVG(CAST(t.rows_count as float)) / MAX(t.rows_count) * 100)) AS DECIMAL(4, 2))
                                            ELSE 0
                                          END
FROM
(
    SELECT
        full_entity_name        = QUOTENAME(s.name) + '.' + QUOTENAME(t.name),
        schema_name             = s.name,
        entity_name             = t.name,
        distribution_method     = tp.distribution_policy_desc,
        distribution_column     = c.name,
        rows_count              = nps.row_count,
        data_size_MB            = (
                                    (
                                        nps.in_row_data_page_count +
                                        nps.row_overflow_used_page_count +
                                        nps.lob_used_page_count
                                    ) * 8.0
                                  ) / 1000,
        index_size_MB           = (
                                    (
                                        nps.reserved_page_count - (nps.reserved_page_count - nps.used_page_count) -
                                        (nps.in_row_data_page_count + nps.row_overflow_used_page_count + nps.lob_used_page_count)
                                    ) * 8.0
                                  ) / 1000,
        standard_deviation      = STDEV(nps.row_count) OVER (PARTITION BY t.object_id)
    FROM
        sys.schemas AS s
        INNER JOIN sys.tables AS t
            ON s.schema_id = t.schema_id
        INNER JOIN sys.indexes AS i
            ON t.object_id = i.object_id
            AND i.index_id <= 1
        INNER JOIN sys.pdw_table_distribution_properties AS tp
            ON t.object_id = tp.object_id
        INNER JOIN sys.pdw_table_mappings AS tm
            ON t.object_id = tm.object_id
        INNER JOIN sys.pdw_nodes_tables AS nt
            ON tm.physical_name = nt.name
        INNER JOIN sys.dm_pdw_nodes AS pn
            ON nt.pdw_node_id = pn.pdw_node_id
        INNER JOIN sys.pdw_distributions AS di
            ON nt.distribution_id = di.distribution_id
        INNER JOIN
        (
            SELECT
                object_id                       = object_id,
                pdw_node_id                     = pdw_node_id,
                distribution_id                 = distribution_id,
                row_count                       = SUM(row_count),
                in_row_data_page_count          = SUM(in_row_data_page_count),
                row_overflow_used_page_count    = SUM(row_overflow_used_page_count),
                lob_used_page_count             = SUM(lob_used_page_count),
                reserved_page_count             = SUM(reserved_page_count),
                used_page_count                 = SUM(used_page_count)
            FROM
                sys.dm_pdw_nodes_db_partition_stats
            GROUP BY
                object_id,
                pdw_node_id,
                distribution_id
        ) AS nps
            ON nt.object_id = nps.object_id
            AND nt.pdw_node_id = nps.pdw_node_id
            AND nt.distribution_id = nps.distribution_id
        LEFT JOIN
        (
            SELECT
                object_id,
                column_id
            FROM
                sys.pdw_column_distribution_properties
            WHERE
                distribution_ordinal = 1
        ) AS cdp
            ON t.object_id = cdp.object_id
        LEFT JOIN sys.columns AS c
            ON cdp.object_id = c.object_id
            AND cdp.column_id = c.column_id
    WHERE
        pn.type = 'COMPUTE'
) AS t
GROUP BY
    t.full_entity_name,
    t.schema_name,
    t.entity_name,
    t.distribution_method,
    t.distribution_column,
    t.standard_deviation;
	
/*
 get distribution (1, 2, 3, …) wise row count and
 as well as the name of the table 
 and current distribution method.
*/ 
SELECT
    [Entity Name]                   = QUOTENAME(s.name) + '.' + QUOTENAME(t.name),
    [Current Distribution Method]   = tp.distribution_policy_desc,
    [Current Distribution Column]   = c.name,
    [Distribution Name]             = di.name,
    [Row Count]                     = nps.row_count
from
    sys.schemas AS s
    INNER JOIN sys.tables AS t
        ON s.schema_id = t.schema_id
    INNER JOIN sys.indexes AS i
        ON t.object_id = i.object_id
        AND i.index_id <= 1
    INNER JOIN sys.pdw_table_distribution_properties AS tp
        ON  t.object_id = tp.object_id
    INNER JOIN sys.pdw_table_mappings AS tm
        ON t.object_id = tm.object_id
    INNER JOIN sys.pdw_nodes_tables AS nt
        ON tm.physical_name = nt.name
    INNER JOIN sys.dm_pdw_nodes AS pn
        ON nt.pdw_node_id = pn.pdw_node_id
    INNER JOIN sys.pdw_distributions AS di
        ON nt.distribution_id = di.distribution_id
    INNER JOIN
    (
        SELECT
            object_id                       = object_id,
            pdw_node_id                     = pdw_node_id,
            distribution_id                 = distribution_id,
            row_count                       = SUM(row_count),
            in_row_data_page_count          = SUM(in_row_data_page_count),
            row_overflow_used_page_count    = SUM(row_overflow_used_page_count),
            lob_used_page_count             = SUM(lob_used_page_count),
            reserved_page_count             = SUM(reserved_page_count),
            used_page_count                 = SUM(used_page_count)
        FROM
            sys.dm_pdw_nodes_db_partition_stats
        GROUP BY
            object_id,
            pdw_node_id,
            distribution_id
    ) AS nps
        ON nt.object_id = nps.object_id
        AND nt.pdw_node_id = nps.pdw_node_id
        AND nt.distribution_id = nps.distribution_id
    LEFT JOIN
    (
        SELECT
            object_id,
            column_id
        FROM
            sys.pdw_column_distribution_properties
        WHERE
            distribution_ordinal = 1
    ) AS cdp
        ON t.object_id = cdp.object_id
    LEFT JOIN sys.columns as c with(nolock)
        ON cdp.object_id = c.object_id
        AND cdp.column_id = c.column_id
WHERE
    pn.type = 'COMPUTE';
	
/*******************************************************
One simple way to identify space and rows consumed by a 
table in each of the 60 distributions
********************************************************/

DBCC PDW_SHOWSPACEUSED('dbo.fact_costs_transaction');


/***************************************************************************
SCD Type 2 implementation
*****************************************************************************/




drop table cust_dim;

create table cust_dim(id int,name varchar(50),loc varchar(50),status varchar(10),start_date date,end_date date);


insert into cust_dim select 1,'Ravi','Bangalore','1','2020-01-01','9999-12-31';
insert into cust_dim select 2,'Raj','Hyderabad','1','2020-01-01','9999-12-31';
insert into cust_dim select 3,'Mahesh','Chennai','1','2020-01-01','9999-12-31';
insert into cust_dim select 4,'Prasad','Pune','1','2020-01-01','9999-12-31';


select * from cust_dim order by id 

drop table cust_source

create table cust_source(id int,name varchar(50),loc varchar(50));

insert into cust_source values(4,'Prasad','Chennai');
insert into cust_source values(5,'Vikranth','Bangalore');
insert into cust_source values(6,'Reshwanth','Bangalore');
insert into cust_source values(7,'Sekhar','Bangalore');

select * from cust_dim order by id;






@concat(string(div(div(activity('GetFileDetails').output.size,1024),1024)),' MB')





