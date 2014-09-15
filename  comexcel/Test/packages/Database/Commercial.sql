USE [Commercial]
GO
/****** Object:  Table [dbo].[ExporterDetails]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExporterDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[ExporterNo] [nvarchar](20) NOT NULL,
	[ExporterName] [nvarchar](max) NOT NULL,
	[RegDetails] [nvarchar](max) NULL,
 CONSTRAINT [PK_ExporterDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExcelImport]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExcelImport](
	[ID] [uniqueidentifier] NOT NULL,
	[SContract] [nvarchar](max) NOT NULL,
	[UDNo] [nvarchar](max) NOT NULL,
	[AMDNo] [nvarchar](max) NOT NULL,
	[AMDDate] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[Invoice] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Item] [nvarchar](max) NOT NULL,
	[QTY] [nvarchar](max) NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
	[TotalValue] [nvarchar](max) NOT NULL,
	[BENo] [nvarchar](max) NOT NULL,
	[BEDate] [nvarchar](50) NOT NULL,
	[Passbook] [nvarchar](max) NOT NULL,
	[Pageno] [nvarchar](50) NOT NULL,
	[BLNo] [nvarchar](max) NOT NULL,
	[Mode] [nvarchar](50) NOT NULL,
	[ImportDate] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ExcelImport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesContract]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesContract](
	[ID] [uniqueidentifier] NOT NULL,
	[SalesContract] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SalesContract] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotifyDetails]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotifyDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[NotifyNo] [nvarchar](20) NOT NULL,
	[NotifyName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NotifyDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[ID] [uniqueidentifier] NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BEInfo]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BEInfo](
	[ID] [uniqueidentifier] NOT NULL,
	[BENo] [nvarchar](max) NOT NULL,
	[BEDate] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BEInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DestCountry]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DestCountry](
	[ID] [uniqueidentifier] NOT NULL,
	[CountryCode] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Port] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DestCountry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsigneeDetails]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsigneeDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[ConsigneeNo] [nvarchar](20) NOT NULL,
	[ConsigneeName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ConsigneeDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[ID] [uniqueidentifier] NOT NULL,
	[Invoice] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Importinfo]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Importinfo](
	[ID] [uniqueidentifier] NOT NULL,
	[SContract] [nvarchar](max) NOT NULL,
	[UDNo] [nvarchar](max) NOT NULL,
	[AMDNo] [nvarchar](max) NOT NULL,
	[AMDDate] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[Invoice] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Item] [nvarchar](max) NOT NULL,
	[QTY] [nvarchar](max) NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
	[TotalValue] [nvarchar](max) NOT NULL,
	[BENo] [nvarchar](max) NOT NULL,
	[BEDate] [nvarchar](50) NOT NULL,
	[Passbook] [nvarchar](max) NOT NULL,
	[Pageno] [nvarchar](50) NOT NULL,
	[BLNo] [nvarchar](max) NOT NULL,
	[Mode] [nvarchar](50) NOT NULL,
	[ImportDate] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Importinfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HSCodeDetails]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HSCodeDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[HSCode] [nvarchar](20) NOT NULL,
	[HSCodesecond] [nvarchar](20) NULL,
	[HSCodeName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_HSCodeDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unitinfo]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unitinfo](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Unitinfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UDInfo]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UDInfo](
	[ID] [uniqueidentifier] NOT NULL,
	[UDNo] [nvarchar](max) NOT NULL,
	[AMDNo] [nvarchar](max) NOT NULL,
	[AMDDate] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UDInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transport]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transport](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Port] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Transport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spSetPostdataRecord]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 05/06/2014,,>
-- Description:	<Post Data to another table,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSetPostdataRecord]
	-- Add the parameters for the stored procedure here	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[Importinfo] SELECT *FROM [Commercial].[dbo].[ExcelImport]
	--After Insertion to ExcelImport table delete all the Importtable Data.
	DELETE FROM [Commercial].[dbo].[ExcelImport]
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUDinfoRecord]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<From Excel File to Data Insertion,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetUDinfoRecord]
	-- Add the parameters for the stored procedure here
	  @pUDNo       AS nvarchar(MAX)	
	 ,@pAMDNo      AS nvarchar(MAX)
	 ,@pAMDDate    AS nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF (NOT EXISTS(SELECT UDNo from [Commercial].[dbo].[UDInfo] where UDNo=@pUDNo))
    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[UDInfo]
           ([UDNo]
           ,[AMDNo]
           ,[AMDDate])
     VALUES
           (@pUDNo
           ,@pAMDNo
           ,@pAMDDate)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSumqtytotalvalue]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<Using Invoice and Category Search,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetSumqtytotalvalue] 
	-- Add the parameters for the stored procedure here
	  @pInvoice  AS NVARCHAR(MAX)
	, @pCagegory AS NVARCHAR(MAX)
	, @startdate  AS NVARCHAR(12)
	, @enddate    AS NVARCHAR(12)
AS
IF((@pInvoice=' ' AND @pCagegory='Please Select') AND (@startdate=' ' AND @enddate=' '))
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    ----
    SELECT  sum(cast(CAST(QTY AS decimal(10,2)) AS decimal(10,2))) AS SumQTY
          , sum(cast(CAST(TotalValue AS decimal(10,2)) AS decimal(10,2))) AS SumTotalval
          FROM [Commercial].[dbo].[Importinfo] 
          GROUP BY Invoice, Category
          ORDER BY Invoice, Category  ASC
END
ELSE IF((@pInvoice!=' ' AND @pCagegory!='Please Select') AND (@startdate!=' ' AND @enddate!=' '))
BEGIN    
   SELECT   sum(cast(CAST(QTY AS decimal(10,2)) AS decimal(10,2))) AS SumQTY
          , sum(cast(CAST(TotalValue AS decimal(10,2)) AS decimal(10,2))) AS SumTotalval
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE (Invoice=@pInvoice AND Category=@pCagegory)
           AND
          (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          GROUP BY Invoice, Category
          ORDER BY Invoice, Category  ASC
END
ELSE IF((@pInvoice=' ' AND @pCagegory!='Please Select') AND (@startdate!=' ' AND @enddate!=' '))
BEGIN    
    SELECT  sum(cast(CAST(QTY AS decimal(10,2)) AS decimal(10,2))) AS SumQTY
          , sum(cast(CAST(TotalValue AS decimal(10,2)) AS decimal(10,2))) AS SumTotalval
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Category=@pCagegory
           AND
          (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          GROUP BY  Category          
END
ELSE 
BEGIN    
    SELECT  sum(cast(CAST(QTY AS decimal(10,2)) AS decimal(10,2))) AS SumQTY
          , sum(cast(CAST(TotalValue AS decimal(10,2)) AS decimal(10,2))) AS SumTotalval
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Invoice=@pInvoice AND Category=@pCagegory
          GROUP BY Invoice, Category
          ORDER BY Invoice, Category  ASC
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSalesContractRecord]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<From Excel File to Data Insertion,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetSalesContractRecord]
	-- Add the parameters for the stored procedure here
	  @pSalesContract       AS nvarchar(MAX)	
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF (NOT EXISTS(SELECT SalesContract from [Commercial].[dbo].[SalesContract] where SalesContract=@pSalesContract))
    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[SalesContract]
           ([SalesContract])
     VALUES
           (@pSalesContract)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetLocationRecord]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<From Excel File to Data Insertion,,>
-- =============================================
Create PROCEDURE [dbo].[spGetLocationRecord]
	-- Add the parameters for the stored procedure here
	  @pLocation       AS nvarchar(MAX)	
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF (NOT EXISTS(SELECT [Location] from [Commercial].[dbo].[Location] where Location=@pLocation))
    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[Location]
           ([Location])
     VALUES
           (@pLocation)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetInvoiceinfoRecord]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 01/06/2014,,>
-- Description:	<From Excel File to Data Insertion,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetInvoiceinfoRecord]
	-- Add the parameters for the stored procedure here
	 @pInvoice     AS nvarchar(MAX)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF (NOT EXISTS(SELECT Invoice from [Commercial].[dbo].[Invoice] where Invoice=@pInvoice))
    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[Invoice]
           ([Invoice])
     VALUES
           (@pInvoice)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetInvoiceBycatnameexcel]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<Using Invoice and Category Search,,>
-- =============================================
Create PROCEDURE [dbo].[spGetInvoiceBycatnameexcel] 
	-- Add the parameters for the stored procedure here
	  @pInvoice  AS NVARCHAR(MAX)
	, @pCagegory AS NVARCHAR(MAX)
	, @startdate  AS NVARCHAR(12)
	, @enddate    AS NVARCHAR(12)
AS
IF((@pInvoice=' ' AND @pCagegory='Please Select') AND (@startdate=' ' AND @enddate=' '))
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          ORDER BY Invoice, Category  ASC
END
ELSE IF((@pInvoice!=' ' AND @pCagegory='Please Select') AND (@startdate!=' ' AND @enddate!=' '))
BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue 
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Invoice=@pInvoice
           AND
          (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          ORDER BY Invoice, Category  ASC
END
ELSE IF((@pInvoice=' ' AND @pCagegory!='Please Select') AND (@startdate=' ' AND @enddate=' '))

BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Category=@pCagegory
          ORDER BY Invoice, Category  ASC
END
ELSE IF((@pInvoice!=' ' AND @pCagegory!='Please Select') AND (@startdate=' ' AND @enddate=' '))

BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Invoice=@pInvoice AND Category=@pCagegory
          ORDER BY Invoice, Category  ASC
END
ELSE  IF((@pInvoice=' ') AND (@pCagegory!='Please Select') AND (@startdate!=' ' AND @enddate!=' '))
BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Category=@pCagegory
          AND
          (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          ORDER BY Invoice, Category  ASC
END
ELSE  IF((@pInvoice =' ') AND (@pCagegory ='Please Select') AND (@startdate !=' ' AND @enddate !=' '))
BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          ORDER BY Invoice, Category  ASC
END
ELSE  
BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE (Invoice=@pInvoice AND Category=@pCagegory)
          AND
          (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          ORDER BY Invoice, Category  ASC
END
GO
/****** Object:  StoredProcedure [dbo].[spGetInvoiceBycatname]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<Using Invoice and Category Search,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetInvoiceBycatname] 
	-- Add the parameters for the stored procedure here
	  @pInvoice  AS NVARCHAR(MAX)
	, @pCagegory AS NVARCHAR(MAX)
	, @startdate  AS NVARCHAR(12)
	, @enddate    AS NVARCHAR(12)
AS
IF((@pInvoice=' ' AND @pCagegory='Please Select') AND (@startdate=' ' AND @enddate=' '))
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          ORDER BY Invoice, Category  ASC
END
ELSE IF((@pInvoice!=' ' AND @pCagegory='Please Select') AND (@startdate!=' ' AND @enddate!=' '))
BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue 
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Invoice=@pInvoice
           AND
          (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          ORDER BY Invoice, Category  ASC
END
ELSE IF((@pInvoice=' ' AND @pCagegory!='Please Select') AND (@startdate=' ' AND @enddate=' '))

BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Category=@pCagegory
          ORDER BY Invoice, Category  ASC
END
ELSE IF((@pInvoice!=' ' AND @pCagegory!='Please Select') AND (@startdate=' ' AND @enddate=' '))

BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Invoice=@pInvoice AND Category=@pCagegory
          ORDER BY Invoice, Category  ASC
END
ELSE  IF((@pInvoice=' ') AND (@pCagegory!='Please Select') AND (@startdate!=' ' AND @enddate!=' '))
BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE Category=@pCagegory
          AND
          (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          ORDER BY Invoice, Category  ASC
END
ELSE  IF((@pInvoice =' ') AND (@pCagegory ='Please Select') AND (@startdate !=' ' AND @enddate !=' '))
BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          ORDER BY Invoice, Category  ASC
END
ELSE  
BEGIN    
    SELECT ID
          , [Invoice]
          , [Category]
          , [Item]
          , [QTY]
          , [Unit]
          , CONVERT(decimal(10,2), [TotalValue]) AS TotalValue
          , [Mode] 
          , [BENo]
          --, CONVERT(DATE, [BEDate], 103)
          ,(LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate
          FROM [Commercial].[dbo].[Importinfo] 
          WHERE (Invoice=@pInvoice AND Category=@pCagegory)
          AND
          (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6))  
            BETWEEN   (LEFT(@StartDate, 2)+ SUBSTRING(@StartDate, 3,3)+ SUBSTRING(@StartDate,6,6))
            AND (LEFT(@EndDate, 2)+ SUBSTRING(@EndDate, 3,3)+ SUBSTRING(@EndDate,6,6))
          ORDER BY Invoice, Category  ASC
END
GO
/****** Object:  StoredProcedure [dbo].[spGetExcelinfoRecord]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 01/06/2014,,>
-- Description:	<From Excel File to Data Insertion,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetExcelinfoRecord]
	-- Add the parameters for the stored procedure here
	 @pSContract    AS nvarchar(MAX)
	,@pUDNo         AS nvarchar(MAX)
	,@pAMDNo        AS nvarchar(MAX)
	,@pAMDDate      AS nvarchar(12)
	,@pFactory      AS nvarchar(MAX)
	,@pInvoice      AS nvarchar(MAX)
	,@pCategory     AS nvarchar(MAX)
	,@pItem         AS nvarchar(MAX)
	,@pQTY          AS nvarchar(MAX)
	,@pUnit         AS nvarchar(MAX)
	,@pTotalValue   AS nvarchar(MAX)
	,@pBENo         AS nvarchar(MAX)
	,@pBEDate       AS nvarchar(12)
	,@pPassbook     AS nvarchar(MAX)
	,@pPageno       AS nvarchar(MAX)
	,@pBLNo         AS nvarchar(MAX)
	,@pMode         AS nvarchar(MAX)
	,@pImportDate   AS nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    --IF (NOT EXISTS(SELECT Invoice from [Commercial].[dbo].[Importinfo] where Invoice=@pInvoice))
    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[ExcelImport]
           ([SContract]
           ,[UDNo]
           ,[AMDNo]
           ,[AMDDate]
           ,[Location]
           ,[Invoice]
           ,[Category]
           ,[Item]
           ,[QTY]
           ,[Unit]
           ,[TotalValue]
           ,[BENo]
           ,[BEDate]
           ,[Passbook]
           ,[Pageno]
           ,[BLNo]
           ,[Mode]
           ,[ImportDate])
     VALUES
           (@pSContract
           ,@pUDNo
           ,@pAMDNo
           ,@pAMDDate
           ,@pFactory
           ,@pInvoice
           ,@pCategory
           ,@pItem
           ,@pQTY
           ,@pUnit
           ,@pTotalValue
           ,@pBENo
           ,@pBEDate
           ,@pPassbook
           ,@pPageno
           ,@pBLNo
           ,@pMode
           ,@pImportDate)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetCategoryRecord]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<From Excel File to Data Insertion,,>
-- =============================================
Create PROCEDURE [dbo].[spGetCategoryRecord]
	-- Add the parameters for the stored procedure here
	  @pCategory       AS nvarchar(MAX)	
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF (NOT EXISTS(SELECT [Name]  from [Commercial].[dbo].[Category] where Name=@pCategory))
    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[Category]
           ([Name])
     VALUES
           (@pCategory)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetBillofEntryRecord]    Script Date: 09/15/2014 16:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<From Excel File to Data Insertion,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetBillofEntryRecord]
	-- Add the parameters for the stored procedure here
	  @pBENo       AS nvarchar(MAX)		
	 ,@pBEDate    AS nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF (NOT EXISTS(SELECT BENo from [Commercial].[dbo].[BEInfo] where BENo=@pBENo))
    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[BEInfo]
           ([BENo]           
           ,[BEDate])
     VALUES
           (@pBENo          
           ,@pBEDate)
END
GO
/****** Object:  Table [dbo].[ExportformDetails]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExportformDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[ItemName] [nvarchar](100) NULL,
	[ContractNo] [nvarchar](20) NOT NULL,
	[ContractDate] [nvarchar](20) NOT NULL,
	[TTNo] [nvarchar](50) NOT NULL,
	[TTDate] [nvarchar](20) NOT NULL,
	[InvoiceNo] [nvarchar](max) NOT NULL,
	[InvoiceDate] [nvarchar](max) NOT NULL,
	[ExporterID] [uniqueidentifier] NOT NULL,
	[ConsigneeID] [uniqueidentifier] NOT NULL,
	[NotifyID] [uniqueidentifier] NOT NULL,
	[HSCode] [nvarchar](max) NOT NULL,
	[HSCodesecond] [nvarchar](max) NULL,
	[TransportID] [uniqueidentifier] NOT NULL,
	[DestinationID] [uniqueidentifier] NOT NULL,
	[Section] [nvarchar](5) NOT NULL,
	[Unit] [nvarchar](5) NOT NULL,
	[Quantity] [nvarchar](50) NOT NULL,
	[Currency] [nvarchar](5) NOT NULL,
	[Incoterm] [nvarchar](5) NOT NULL,
	[FOBValue] [nvarchar](100) NOT NULL,
	[CMValue] [nvarchar](100) NOT NULL,
	[ExpNo] [nvarchar](max) NULL,
	[ExpDate] [nvarchar](20) NULL,
	[BLNo] [nvarchar](max) NULL,
	[BLDate] [nvarchar](20) NULL,
	[ExFactoryDate] [nvarchar](20) NULL,
	[CurrentDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_ExportformDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoryitem]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoryitem](
	[ID] [uniqueidentifier] NOT NULL,
	[CategoryID] [uniqueidentifier] NOT NULL,
	[Item] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categoryitem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoiceinfo]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoiceinfo](
	[ID] [uniqueidentifier] NOT NULL,
	[Invoice] [nvarchar](max) NOT NULL,
	[IDate] [nvarchar](50) NOT NULL,
	[LocationID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Invoiceinfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Created] [nvarchar](50) NOT NULL,
	[GroupID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_USER_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Excel]    Script Date: 09/15/2014 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excel](
	[Invoice] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[Item] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Default [DF_BEInfo_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[BEInfo] ADD  CONSTRAINT [DF_BEInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Category_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Categoryitem_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Categoryitem] ADD  CONSTRAINT [DF_Categoryitem_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ConsigneeDetails_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[ConsigneeDetails] ADD  CONSTRAINT [DF_ConsigneeDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_DestCountry_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[DestCountry] ADD  CONSTRAINT [DF_DestCountry_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExcelImport_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[ExcelImport] ADD  CONSTRAINT [DF_ExcelImport_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExporterDetails_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[ExporterDetails] ADD  CONSTRAINT [DF_ExporterDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExportformDetails_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[ExportformDetails] ADD  CONSTRAINT [DF_ExportformDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Group_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_HSCodeDetails_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[HSCodeDetails] ADD  CONSTRAINT [DF_HSCodeDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Importinfo_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Importinfo] ADD  CONSTRAINT [DF_Importinfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Invoice_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Invoice] ADD  CONSTRAINT [DF_Invoice_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Invoiceinfo_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Invoiceinfo] ADD  CONSTRAINT [DF_Invoiceinfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Location_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_NotifyDetails_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[NotifyDetails] ADD  CONSTRAINT [DF_NotifyDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_SalesContract_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[SalesContract] ADD  CONSTRAINT [DF_SalesContract_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Transport_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Transport] ADD  CONSTRAINT [DF_Transport_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_UDInfo_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[UDInfo] ADD  CONSTRAINT [DF_UDInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Unitinfo_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Unitinfo] ADD  CONSTRAINT [DF_Unitinfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_User_ID]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  ForeignKey [FK__Categoryi__Categ__300424B4]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Categoryitem]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
/****** Object:  ForeignKey [FK__Exportfor__Consi__14270015]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Consi__14270015] FOREIGN KEY([ConsigneeID])
REFERENCES [dbo].[ConsigneeDetails] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Consi__14270015]
GO
/****** Object:  ForeignKey [FK__Exportfor__Desti__151B244E]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Desti__151B244E] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[DestCountry] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Desti__151B244E]
GO
/****** Object:  ForeignKey [FK__Exportfor__Expor__17036CC0]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Expor__17036CC0] FOREIGN KEY([ExporterID])
REFERENCES [dbo].[ExporterDetails] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Expor__17036CC0]
GO
/****** Object:  ForeignKey [FK__Exportfor__Notif__18EBB532]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Notif__18EBB532] FOREIGN KEY([NotifyID])
REFERENCES [dbo].[NotifyDetails] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Notif__18EBB532]
GO
/****** Object:  ForeignKey [FK__Exportfor__Trans__160F4887]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Trans__160F4887] FOREIGN KEY([TransportID])
REFERENCES [dbo].[Transport] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Trans__160F4887]
GO
/****** Object:  ForeignKey [FK__Invoicein__Locat__4CA06362]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[Invoiceinfo]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([ID])
GO
/****** Object:  ForeignKey [FK_User_Group]    Script Date: 09/15/2014 16:56:32 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Group]
GO
