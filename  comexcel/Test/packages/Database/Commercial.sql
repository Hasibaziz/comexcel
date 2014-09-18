USE [Commercial]
GO
/****** Object:  Table [dbo].[ExporterDetails]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[ExporterDetails] ([ID], [ExporterNo], [ExporterName], [RegDetails]) VALUES (N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'HY002', N'HOP YICK (BANGLADESH) LTD.
Plot # 61-65, Dhaka Export Processing Zone
Ganakbari, Savar, Dhaka-1349,
Bangladesh', N'BEPZA: 03.0314.014.02.00.321.2010/959
DATE: JULY 19, 2011')
INSERT [dbo].[ExporterDetails] ([ID], [ExporterNo], [ExporterName], [RegDetails]) VALUES (N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'AP001', N'HOP LUN APPAREL LTD.
S T TOWER, 3 NO. DHAKA- MYMENSHING ROAD
EAST GAZIPURA, TONGI, GAZIPUR,
DHAKA, BANGLADESH.', N'ERC NO : RA 78849')
INSERT [dbo].[ExporterDetails] ([ID], [ExporterNo], [ExporterName], [RegDetails]) VALUES (N'6b87bcb2-e503-4713-bf80-67f39ce8aef3', N'HY003', N'RTHBAHADBHADGBADGA', NULL)
/****** Object:  Table [dbo].[ExcelImport]    Script Date: 09/18/2014 14:03:24 ******/
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
/****** Object:  Table [dbo].[SalesContract]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[SalesContract] ([ID], [SalesContract]) VALUES (N'1f0bf095-62bc-4528-afb1-0dc496d71d35', N'HLAP-14-BR-01A')
INSERT [dbo].[SalesContract] ([ID], [SalesContract]) VALUES (N'e80a15f3-dd42-45d5-a1b9-18cbedb01f7a', N'HLAP-14-HK-02')
INSERT [dbo].[SalesContract] ([ID], [SalesContract]) VALUES (N'c6ec6739-fa17-4f18-b084-41965f2db9c6', N'')
INSERT [dbo].[SalesContract] ([ID], [SalesContract]) VALUES (N'7a981a4b-56cc-429b-a8a8-83c2792470e3', N'HLAP-14-HK-01')
/****** Object:  Table [dbo].[NotifyDetails]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[NotifyDetails] ([ID], [NotifyNo], [NotifyName]) VALUES (N'3b9ed6fa-3bb5-45ed-bf19-7709e2ed453d', N'MAT001', N'MATALAN RETAIL LTD.
GILLIBRANDS ROAD
SKELMERSDALE,
WEST LANCE, WN8 9TB,U.K.')
INSERT [dbo].[NotifyDetails] ([ID], [NotifyNo], [NotifyName]) VALUES (N'5fdc69f2-414c-4b68-aae6-c180110a253a', N'HM001', N'H & M Hennes & Mauritz GBC AB
Rungedamm 38
DE-21035, Hamburg
Germany')
INSERT [dbo].[NotifyDetails] ([ID], [NotifyNo], [NotifyName]) VALUES (N'c7a0aeb8-716d-4ef4-927f-e2ec1b2cd8df', N'HM GM', N'H & M Hennes & Mauritz GBC AB Rungedamm 38 DE-21035, Hamburg Germany')
/****** Object:  Table [dbo].[Location]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[Location] ([ID], [Location]) VALUES (N'8facdeaf-49a9-4b70-90cb-3f49f0be5687', N'HLAP')
INSERT [dbo].[Location] ([ID], [Location]) VALUES (N'338f8b6f-fa5e-4742-93ae-a860a9d912de', N'')
/****** Object:  Table [dbo].[Category]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[Category] ([ID], [Name]) VALUES (N'3cb4e1cb-f209-45cd-8f2a-265ce603abb7', N'')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (N'82fb6489-05aa-494c-b4a1-35c6f5bdf88c', N'THREAD')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (N'bba4748e-c3b8-4c85-9fd9-5c210af5f8b1', N'STATIONARY')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (N'496a6c6c-2913-4465-9ef2-5f7468f99248', N'ACCESSORIES')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (N'8d9d0775-7e5f-4993-9145-86048fabd18b', N'HANGER')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (N'09ed3529-264d-4806-b6e3-a526cba402fa', N'POLYBAG')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (N'd53ad6d4-c9f8-42d9-ac87-a9a04f741f08', N'FABRIC')
/****** Object:  Table [dbo].[BEInfo]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[BEInfo] ([ID], [BENo], [BEDate]) VALUES (N'd190bb77-b755-4a8e-909c-4b6e846c15b0', N'C79514', N'22/04/2014 12:00:00 AM')
INSERT [dbo].[BEInfo] ([ID], [BENo], [BEDate]) VALUES (N'c017d764-0746-41c6-8a36-5d13dfe762a1', N'#REF!', N'#REF!')
INSERT [dbo].[BEInfo] ([ID], [BENo], [BEDate]) VALUES (N'01b22fc4-3508-45da-a9ad-6fe1a18326bd', N'#N/A', N'#N/A')
INSERT [dbo].[BEInfo] ([ID], [BENo], [BEDate]) VALUES (N'53d7fd1f-d646-440b-85b5-74806b336548', N'', N'')
/****** Object:  Table [dbo].[DestCountry]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[DestCountry] ([ID], [CountryCode], [Name], [Port]) VALUES (N'dcb01bff-dc55-4806-91e3-4a7a84822482', N'1226', N'INDONESIA', N'INDONESIA')
INSERT [dbo].[DestCountry] ([ID], [CountryCode], [Name], [Port]) VALUES (N'e3aec8d0-37f7-4f0a-841f-fdf62999e941', N'2004', N'GERMANY', N'EUROPEAN POINT')
/****** Object:  Table [dbo].[ConsigneeDetails]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName]) VALUES (N'8b94af59-0267-43d2-8114-4728657fa6b4', N'C&A', N'C & A BUYING GMBH & CO KG
WANHEIMERSTR 70,
40468 DUSSELDORF,
GERMANY.
')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName]) VALUES (N'6155eb39-0b45-4646-be64-98f20f932ff0', N'HK001', N'HOP LUN (HONG KONG) LTD.
32/F., 9 WING HONG ST., CHEUNG SHA WAN,
KOWLOON, HONG KONG.')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName]) VALUES (N'c61c3846-22e6-4cc8-8cd8-ae26052f97ae', N'HK002', N'PT Hindo
C/O DHL Supply Chain
Jalan Trembesi Plot F15-6
Kawasan Industri Delta Silicon II, Lippo Cikarang
Kabupaten Bekasi, 17550
Indonesia')
/****** Object:  Table [dbo].[Invoice]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'5e785082-4649-4729-89ae-0e4cec053c47', N'HA0401.14S(D)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'fd6cf166-5b71-4d70-9de1-190ca1cce0f0', N'BAMS0403.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'c3b5a31e-a904-44a4-b239-2c1eb11f677c', N'HA0620.14A&BA0624.14A')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'9afa4686-2e6b-4e4b-85f9-33554226fd8e', N'HAMS0327.14S(B)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'81abfb61-78cc-4e6a-ba9c-3de20569f22f', N'HA0617.14S(E)&BA0620.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'847c88bb-7e76-47f9-aa2e-462de7cad742', N'HAMS0605.14S(A)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'd0b1368a-59cc-47b4-93d4-48168e02b487', N'BA0403.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'50103b9f-d6e0-4d39-8394-4e096314e90c', N'BA0505.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'814db7db-a676-4538-bd05-4e0d4355dab3', N'HA0612.14S(B)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'e06ab62e-190a-462d-ad44-5401177ac4e8', N'HAMS0401.14S(D)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'50379c33-1490-4bc4-9711-5a0cb91ed09c', N'HA0522.14S(F)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'becc21ad-52cc-4029-97ad-5a1cb338fe74', N'BA0617.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'87b5b112-d55e-4ff3-880e-62f6d3dadb59', N'HA0327.14S(A)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'2b007cb8-0b3c-40d2-907f-79cf8a9b85dd', N'BA0610.14A')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'958ccefd-3844-4b0f-831f-7bb0a1a44515', N'HA0617.14A&HAMS0617.14A')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'fad21690-6801-4cb3-8302-81eede138e8f', N'HA0529.14S(A)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'46c11e12-b044-4288-b996-84874af6340d', N'HAMS0617.14S(E )')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'6733c67c-4903-4431-aace-8793015b64d4', N'BA0401.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'd8990082-9417-466b-90fb-8d29fbdb66ac', N'HA0522.14S(B)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'ad43eacd-c25d-4643-9e7c-96e1c063d7b1', N'HA0613.14A&BA0617.14A')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'7cd551fa-b7e7-42e8-8c05-9729868a98d7', N'HA0610.14S(A)&BA0613.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'1d9f6cfa-8021-4207-85e2-9a32e71e1a66', N'HA0501.14S(B,C)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'020fae67-edb8-4c5c-ac66-aa93173f49ba', N'HA0605.14S(A)&BA0610.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'44ccefbf-52a2-4d0d-b1e6-ab84514e13f3', N'HA0603.14S(A)&BA0603.14S&BA140606S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'28a09f6a-ec75-4c7f-a4a3-b2fd4e9db0a4', N'HA0327.14S(B)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'ecf0bcf0-53da-4710-ac77-c00d63832878', N'BAMS0401.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'bc6336ed-2beb-4a92-bcd9-c7b61ffa59da', N'BA0626.14A')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'09e27b2e-c110-4c2c-af55-c9695ba48700', N'HA0603.14A&HAMS0603.14A')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'b91a5793-f1ab-4276-9f4d-dc248e0354db', N'HAMS0603.14S(A)&BAMS0606.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'3b1d003f-c50b-40ee-8163-e1c87704a63c', N'BA0530.14S')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'da8d10e1-136b-407d-be0c-e343b14f5d44', N'HA0617.14S(D)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'38f8296b-ab7d-4264-a49d-e91c73ecadc3', N'HA0527.14S(A,B)')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'a2a9527c-fc7b-4017-9adc-f09a261d92f0', N'HA0610.14A')
INSERT [dbo].[Invoice] ([ID], [Invoice]) VALUES (N'c0255bfd-f31f-42a6-ad10-fddcc99c7964', N'HA0522.14S(C)')
/****** Object:  Table [dbo].[Importinfo]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[Importinfo] ([ID], [SContract], [UDNo], [AMDNo], [AMDDate], [Location], [Invoice], [Category], [Item], [QTY], [Unit], [TotalValue], [BENo], [BEDate], [Passbook], [Pageno], [BLNo], [Mode], [ImportDate]) VALUES (N'25531b7d-f1f7-44f1-b2aa-b233e7ae9b5a', N'HLAP-14-HK-01', N'2014/02', N'AMD-010', N'17/05/2014 1', N'HLAP', N'BAMS0401.14S', N'ACCESSORIES', N'Sticker', N'13575', N'PCS', N'317.4', N'C79514', N'22/04/2014 1', N'B-001037', N'28', N'2014/02', N'SEA', N'14/07/2014 12:00:00 AM')
/****** Object:  Table [dbo].[HSCodeDetails]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'ced5d312-5ae9-4e84-bd96-10939f498090', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'8378429d-b142-4598-b22f-21d1beb6667f', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'73042334-03d5-481f-b632-c1ab314f6ff3', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
/****** Object:  Table [dbo].[Group]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[Group] ([ID], [Name]) VALUES (N'86b7b37f-da63-474d-a714-34584b70e7b2', N'Private')
INSERT [dbo].[Group] ([ID], [Name]) VALUES (N'4df62498-2bad-4172-ae7c-57ed7ef2629b', N'Admin')
/****** Object:  Table [dbo].[Unitinfo]    Script Date: 09/18/2014 14:03:24 ******/
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
/****** Object:  Table [dbo].[UDInfo]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[UDInfo] ([ID], [UDNo], [AMDNo], [AMDDate]) VALUES (N'd836029c-9e37-47b6-bf7e-05368cd41a51', N'2014/05', N'UD', N'18/06/2014 12:00:00 AM')
INSERT [dbo].[UDInfo] ([ID], [UDNo], [AMDNo], [AMDDate]) VALUES (N'9cb30729-3d65-43c9-91e4-3470d658adf9', N'2014/04', N'UD', N'22/05/2014 12:00:00 AM')
INSERT [dbo].[UDInfo] ([ID], [UDNo], [AMDNo], [AMDDate]) VALUES (N'1e936df3-27d3-4c0c-97cb-c8d13372dbbf', N'2014/03', N'AMD-003', N'2014-04-17')
INSERT [dbo].[UDInfo] ([ID], [UDNo], [AMDNo], [AMDDate]) VALUES (N'14193a6c-85e9-48b8-8669-e5f5028f0102', N'2014/02', N'AMD-010', N'17/05/2014 12:00:00 AM')
/****** Object:  Table [dbo].[Transport]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[Transport] ([ID], [Name], [Port]) VALUES (N'ccb76090-bee2-448f-ac3a-142d69eb7160', N'CHITTAGONG', N'CHITTAGONG')
INSERT [dbo].[Transport] ([ID], [Name], [Port]) VALUES (N'26570731-7900-417b-9534-5cf7ad1b1a42', N'AIR', N'DHAKA AIRPORT')
INSERT [dbo].[Transport] ([ID], [Name], [Port]) VALUES (N'bd73a0b6-2e17-4f33-8e93-bdb609fb87e6', N'ROAD', N'BENAPOLE')
INSERT [dbo].[Transport] ([ID], [Name], [Port]) VALUES (N'9768c254-dd5c-47f5-ba6d-f6a4d22276c2', N'SEA', N'CHITTAGONG')
/****** Object:  StoredProcedure [dbo].[spSetPostdataRecord]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetUDinfoRecord]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetSumqtytotalvalue]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetSalesContractRecord]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetLocationRecord]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetInvoiceinfoRecord]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetInvoiceBycatnameexcel]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetInvoiceBycatname]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetExcelinfoRecord]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetCategoryRecord]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetBillofEntryRecord]    Script Date: 09/18/2014 14:03:26 ******/
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
/****** Object:  Table [dbo].[ExportformDetails]    Script Date: 09/18/2014 14:03:24 ******/
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
	[CPTFOBValue] [nvarchar](100) NULL,
	[Freight] [nvarchar](100) NULL,
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
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate]) VALUES (N'82c0bdf6-f0ee-47e9-9a9c-285eb391d0ef', N'LADIES KNITTED PUSH UP BRA', N'008-P-0143', N'01-09-2014', N'IT06591406110030', N'12-06-2014', N'302123', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'3b9ed6fa-3bb5-45ed-bf19-7709e2ed453d', N'62121010', N'1520107173', N'9768c254-dd5c-47f5-ba6d-f6a4d22276c2', N'dcb01bff-dc55-4806-91e3-4a7a84822482', N'2', N'55', N'19528', N'1', N'1', N'85539.80', N'17107.96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'9/15/2014 12:34:19 PM')
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate]) VALUES (N'13043ec3-c700-4d0a-911c-560a5846f32c', N'LADIES KNITTED PUSH UP BRA', N'008-P-0143', N'01-09-2014', N'IT06591406110030', N'12-06-2014', N'302124', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'3b9ed6fa-3bb5-45ed-bf19-7709e2ed453d', N'62121010', N'1520107173', N'9768c254-dd5c-47f5-ba6d-f6a4d22276c2', N'dcb01bff-dc55-4806-91e3-4a7a84822482', N'2', N'55', N'19528', N'1', N'1', N'85539.80', N'17107.96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'9/16/2014 4:18:46 PM')
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate]) VALUES (N'e9ef401f-ac64-4775-943e-c0e19838f421', N'LADIES KNITTED PUSH UP BRA', N'008-P-0143', N'01-09-2014', N'IT06591406110030', N'12-06-2014', N'23BDO-02431', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'3b9ed6fa-3bb5-45ed-bf19-7709e2ed453d', N'62121010', NULL, N'9768c254-dd5c-47f5-ba6d-f6a4d22276c2', N'dcb01bff-dc55-4806-91e3-4a7a84822482', N'2', N'55', N'19528', N'1', N'2', N'85539.80', N'17107.96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'9/15/2014 11:40:28 AM')
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate]) VALUES (N'69718214-7cae-40bb-9ca7-ef023907bbba', N'LADIES KNITTED PUSH UP BRA', N'008-P-0143', N'01-09-2014', N'IT06591406110030', N'12-06-2014', N'302125', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'3b9ed6fa-3bb5-45ed-bf19-7709e2ed453d', N'62121010', N'1520107173', N'9768c254-dd5c-47f5-ba6d-f6a4d22276c2', N'dcb01bff-dc55-4806-91e3-4a7a84822482', N'2', N'55', N'19528', N'1', N'2', N'110.00', N'22.00', N'100.00', N'10.00', NULL, NULL, NULL, NULL, NULL, N'9/18/2014 1:22:26 PM')
/****** Object:  Table [dbo].[Categoryitem]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[Categoryitem] ([ID], [CategoryID], [Item]) VALUES (N'4f1915a8-44d8-4fb1-82d8-7ea6b9ef7fcc', N'8d9d0775-7e5f-4993-9145-86048fabd18b', N'Hanger')
/****** Object:  Table [dbo].[Invoiceinfo]    Script Date: 09/18/2014 14:03:24 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID]) VALUES (N'740e71f3-106c-4306-8dc4-6be5e851d5fd', N'PVT', N'321', N'Private', N'pvt@hoplunbd.com', 1, N'22-07-2014', N'86b7b37f-da63-474d-a714-34584b70e7b2')
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID]) VALUES (N'1eb4393c-f31a-4857-a996-9543d84fec23', N'EXP', N'123', N'Administrator', N'admin@hoplunbd.com', 1, N'21-07-2014', N'4df62498-2bad-4172-ae7c-57ed7ef2629b')
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID]) VALUES (N'af36c3c2-2640-44b8-abfa-c14b3c2e39e9', N'Admin', N'123', N'Administrator', N'admin@hoplunbd.com', 1, N'21-07-2014', N'4df62498-2bad-4172-ae7c-57ed7ef2629b')
/****** Object:  Table [dbo].[Excel]    Script Date: 09/18/2014 14:03:24 ******/
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
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'BAMS0401.14S', N'ACCESSORIES', N'Sticker')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'BAMS0401.14S', N'ACCESSORIES', N'Paper Tag')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'BAMS0401.14S', N'ACCESSORIES', N'Slider')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'HAMS0327.14S(B)', N'ACCESSORIES', N'Sticker')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'HAMS0327.14S(B)', N'ACCESSORIES', N'Paper Tag')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'HAMS0327.14S(B)', N'ACCESSORIES', N'Slider')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'HAMS0401.14S(D)', N'ACCESSORIES', N'Sticker')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'HAMS0401.14S(D)', N'ACCESSORIES', N'Paper Tag')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'HAMS0401.14S(D)', N'ACCESSORIES', N'Slider')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'HAMS0401.14S(D)', N'ACCESSORIES', N'Paper Tag')
INSERT [dbo].[Excel] ([Invoice], [Category], [Item]) VALUES (N'HAMS0401.14S(D)', N'ACCESSORIES', N'Slider')
/****** Object:  Default [DF_BEInfo_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[BEInfo] ADD  CONSTRAINT [DF_BEInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Category_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Categoryitem_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Categoryitem] ADD  CONSTRAINT [DF_Categoryitem_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ConsigneeDetails_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[ConsigneeDetails] ADD  CONSTRAINT [DF_ConsigneeDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_DestCountry_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[DestCountry] ADD  CONSTRAINT [DF_DestCountry_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExcelImport_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[ExcelImport] ADD  CONSTRAINT [DF_ExcelImport_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExporterDetails_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[ExporterDetails] ADD  CONSTRAINT [DF_ExporterDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExportformDetails_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[ExportformDetails] ADD  CONSTRAINT [DF_ExportformDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Group_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_HSCodeDetails_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[HSCodeDetails] ADD  CONSTRAINT [DF_HSCodeDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Importinfo_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Importinfo] ADD  CONSTRAINT [DF_Importinfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Invoice_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Invoice] ADD  CONSTRAINT [DF_Invoice_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Invoiceinfo_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Invoiceinfo] ADD  CONSTRAINT [DF_Invoiceinfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Location_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_NotifyDetails_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[NotifyDetails] ADD  CONSTRAINT [DF_NotifyDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_SalesContract_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[SalesContract] ADD  CONSTRAINT [DF_SalesContract_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Transport_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Transport] ADD  CONSTRAINT [DF_Transport_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_UDInfo_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[UDInfo] ADD  CONSTRAINT [DF_UDInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Unitinfo_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Unitinfo] ADD  CONSTRAINT [DF_Unitinfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_User_ID]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  ForeignKey [FK__Categoryi__Categ__300424B4]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Categoryitem]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
/****** Object:  ForeignKey [FK__Exportfor__Consi__14270015]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Consi__14270015] FOREIGN KEY([ConsigneeID])
REFERENCES [dbo].[ConsigneeDetails] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Consi__14270015]
GO
/****** Object:  ForeignKey [FK__Exportfor__Desti__151B244E]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Desti__151B244E] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[DestCountry] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Desti__151B244E]
GO
/****** Object:  ForeignKey [FK__Exportfor__Expor__17036CC0]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Expor__17036CC0] FOREIGN KEY([ExporterID])
REFERENCES [dbo].[ExporterDetails] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Expor__17036CC0]
GO
/****** Object:  ForeignKey [FK__Exportfor__Notif__18EBB532]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Notif__18EBB532] FOREIGN KEY([NotifyID])
REFERENCES [dbo].[NotifyDetails] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Notif__18EBB532]
GO
/****** Object:  ForeignKey [FK__Exportfor__Trans__160F4887]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[ExportformDetails]  WITH CHECK ADD  CONSTRAINT [FK__Exportfor__Trans__160F4887] FOREIGN KEY([TransportID])
REFERENCES [dbo].[Transport] ([ID])
GO
ALTER TABLE [dbo].[ExportformDetails] CHECK CONSTRAINT [FK__Exportfor__Trans__160F4887]
GO
/****** Object:  ForeignKey [FK__Invoicein__Locat__4CA06362]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[Invoiceinfo]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([ID])
GO
/****** Object:  ForeignKey [FK_User_Group]    Script Date: 09/18/2014 14:03:24 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Group]
GO
