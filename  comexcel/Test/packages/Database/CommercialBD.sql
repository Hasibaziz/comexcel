USE [Commercial]
GO
/****** Object:  Table [dbo].[Unitinfo]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[UDInfo]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[Transport]    Script Date: 03/08/2015 11:37:40 ******/
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
INSERT [dbo].[Transport] ([ID], [Name], [Port]) VALUES (N'26570731-7900-417b-9534-5cf7ad1b1a42', N'DHAKA AIRPORT', N'DHAKA AIRPORT')
INSERT [dbo].[Transport] ([ID], [Name], [Port]) VALUES (N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'CHITTAGONG', N'CHITTAGONG')
INSERT [dbo].[Transport] ([ID], [Name], [Port]) VALUES (N'8a2d2cbf-633c-4d9b-a8e4-a1e78b7de5e6', N'Sea+Air', N'Chittagong')
INSERT [dbo].[Transport] ([ID], [Name], [Port]) VALUES (N'bd73a0b6-2e17-4f33-8e93-bdb609fb87e6', N'ROAD', N'BENAPOLE')
INSERT [dbo].[Transport] ([ID], [Name], [Port]) VALUES (N'9768c254-dd5c-47f5-ba6d-f6a4d22276c2', N'SEA', N'CHITTAGONG')
/****** Object:  Table [dbo].[Transhipment]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transhipment](
	[ID] [uniqueidentifier] NOT NULL,
	[CountryName] [nvarchar](max) NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Transhipment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Transhipment] ([ID], [CountryName], [Details]) VALUES (N'96df90d8-3750-4625-967c-c37c09522317', N'SPAIN', N'TANJUNG PELEPAS TO BARCELONA (SPAIN)')
/****** Object:  Table [dbo].[Invoice]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[Importinfo]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[HSCodeDetails]    Script Date: 03/08/2015 11:37:40 ******/
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
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'f8c739d1-4418-4971-a45c-00825447617c', N'62121010', NULL, N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'6416c572-35c4-4b8d-8113-06d269cacf7f', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'ced5d312-5ae9-4e84-bd96-10939f498090', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'82b7d7dc-bf63-4503-9208-18025e7e75df', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'9d1b571f-638d-443f-b001-1826a28fb0cb', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'8378429d-b142-4598-b22f-21d1beb6667f', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'8c282ecb-8d6b-4bc0-a3e4-25c772ee943c', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'192c7d34-fa57-4029-b18c-26b3ab34dfd5', N'61082200', NULL, N'LADIES KNITTED TANGAa')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'322a346f-2324-4aaa-9683-29b55382f96f', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'0acbcc35-0f8e-42dc-8109-2e9ce12bc795', N'62121010', NULL, N'LADIES KNITTED T-SHIRT')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'752758b4-87af-4ade-a3d3-3417e4fbbcd7', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'd5d3c819-1a30-4b5e-b44e-3875e69ab826', N'62121010', NULL, N'LADIES KNITTED BRA, BRIEF')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'7a2fa4a7-2436-4d69-b60e-3f354e57f447', N'62121010', NULL, N'LADIES KNITTED BRA, BRIEF')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'6e1bde89-4b17-4941-a7a1-4dbfb080a3be', N'62121010', NULL, N'LADIES KNITTED BRA, BRIEF')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'732b38aa-e1c9-4c07-9890-4f18f26d4a74', N'62121010', NULL, N'LADIES KNITTED BRA, BRIEF')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'5ecfff30-3f52-4f0d-9527-5029e9b2ce99', N'62121010', NULL, N'LADIES KNITTED BRA, BRIEF')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'39ea4cb3-e900-4367-8d4f-5156058cf461', N'62121010', NULL, N'LADIES KNITTED BRA, BRIEF')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'307b4ceb-0cd4-435d-b355-548063dbb6f8', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'545892b5-17ec-41bc-b561-55768b494e6d', N'62121010', N'61082200', N'LADIES KNITTED BRA, BRIEF
')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'bea4a199-d21e-439e-be2b-5af2c98fe9be', N'62121010', NULL, N'LADIES KNITTED T-SHIRT')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'a78182ab-250b-4e8b-bb7f-72cc77369470', N'62121010', NULL, N'LADIES KNITTED PUSH UP BRALADIES KNITTED PUSH UP')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'49f5339c-73de-4932-b65b-72fe9ae0a768', N'62121010', NULL, N'LADIES KNITTED T-SHIRT')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'9ea4bc3c-85e7-4dfd-8b0b-75771961a860', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'556021d1-9dbe-4adc-a9f5-762c5d5812f2', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'd7e4e0b0-b547-4310-aab2-7a52c87b6822', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'19b33c9b-3817-4f2d-9167-8b68adad14e5', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'ee0c41eb-145c-419f-b92b-8df0f81886d9', N'62121010', NULL, N'LADIES KNITTED T-SHIRT')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'86dea7d2-b326-4ec9-ab04-91ba4f7b177c', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'b514d3b3-1e32-45a3-9c0d-9485ea81f60b', N'61082200', NULL, N'LADIES KNITTED BRIEF')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'5ed40432-7308-4fdc-8825-9575203acd56', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'6a953cf2-aaeb-4fcc-8407-95e03f16e5d5', N'62121010', NULL, N'LADIES KNITTED T-SHIRT, WIRE, PUSH UP, BALCONY, BANDEAU BRA, DEEP PLUNGE, CROP TOP, BRAZILIAN, BRIEF, CHEEKY HIPSTER, STRING')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'6703adc5-7267-47be-bbfc-97863897a562', N'61082200', NULL, N'LADIES KNITTED BRIEF')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'5aa6d5f3-c349-464c-a3e1-9b1671f6074c', N'62121010', NULL, N'LADIES KNITTED BRA, BRIEF')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'a1e9de87-4e7c-42aa-8bf1-a006855aa764', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'b6fa310b-b038-4d89-bcc6-a2e859c0e96f', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'36e26890-0379-4758-ba57-b5345b32788f', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'84136165-0b40-4591-abac-bc09f62b608d', N'62121010', N'61082200', N'LADIES KNITTED BRA, BRIEF
')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'2d6fd400-992e-431a-8f3e-bde30eafa218', N'61082200', NULL, N'LADIES KNITTED TANGA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'42e09467-157c-4bb1-97a7-be60b5372482', N'62121010', NULL, N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'73042334-03d5-481f-b632-c1ab314f6ff3', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'986f79d5-81a7-4c18-857b-d564f8457acf', N'62121090', NULL, N'LADIES KNITTED BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'c36e63c0-4401-42ac-a891-dcb9227e5fbb', N'62121010', NULL, N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'd4dbb9e3-8685-4866-8838-e9ad24efe866', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'f12400c2-46c4-47fa-a7fa-f165eac10812', N'62121010', N'1520107173', N'LADIES KNITTED PUSH UP BRA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'cbb15756-dddd-45ee-8589-f65949f12c8e', N'61082200', N'61082200', N'LADIES KNITTED TANGAAAA')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'22d0e5a3-0907-4b15-9db1-f9b33519695f', N'62121010', NULL, N'LADIES KNITTED T-SHIRT, WIRE, PUSH UP, BALCONY, BANDEAU BRA, DEEP PLUNGE, CROP TOP, BRAZILIAN, BRIEF, CHEEKY HIPSTER, STRING')
INSERT [dbo].[HSCodeDetails] ([ID], [HSCode], [HSCodesecond], [HSCodeName]) VALUES (N'7ade7229-8b25-43e1-b3af-fda6e17145e4', N'62121010', NULL, N'LADIES KNITTED BRA, BRIEF')
/****** Object:  Table [dbo].[GSPItemInfo]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GSPItemInfo](
	[ID] [uniqueidentifier] NOT NULL,
	[TranshipmentID] [uniqueidentifier] NULL,
	[InvoiceNo] [nvarchar](max) NOT NULL,
	[OrderNo] [nvarchar](150) NOT NULL,
	[ItemDetails] [nvarchar](max) NOT NULL,
	[StyleNo] [nvarchar](150) NULL,
	[TAGIDNo] [nvarchar](100) NULL,
	[OurID] [nvarchar](100) NULL,
	[ARTNo] [nvarchar](150) NULL,
	[CustomerPO] [nvarchar](150) NULL,
	[Delivery] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Origion] [nvarchar](50) NOT NULL,
	[Quantity] [nvarchar](150) NOT NULL,
	[GSPQty] [nvarchar](150) NOT NULL,
	[Status] [nvarchar](5) NULL,
	[Part] [bit] NULL,
	[UserName] [nvarchar](50) NULL,
	[CurrentDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_GSPItemInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GSPItemInfo] ([ID], [TranshipmentID], [InvoiceNo], [OrderNo], [ItemDetails], [StyleNo], [TAGIDNo], [OurID], [ARTNo], [CustomerPO], [Delivery], [Category], [Origion], [Quantity], [GSPQty], [Status], [Part], [UserName], [CurrentDate]) VALUES (N'd8db07ed-41fe-4984-a9b1-1e84b1253ce5', NULL, N'23BDO-02451', N'018-L-00563', N'LADIES KNITTED T-SHIRT, WIRE, PUSH UP, BALCONY, BANDEAU BRA, DEEP PLUNGE, CROP TOP, BRAZILIAN, BRIEF, CHEEKY HIPSTER, STRING', N'830-1163-5545-200', NULL, NULL, NULL, NULL, N'6', N'13', N'61.08', N'110', N'V', NULL, 1, NULL, NULL)
INSERT [dbo].[GSPItemInfo] ([ID], [TranshipmentID], [InvoiceNo], [OrderNo], [ItemDetails], [StyleNo], [TAGIDNo], [OurID], [ARTNo], [CustomerPO], [Delivery], [Category], [Origion], [Quantity], [GSPQty], [Status], [Part], [UserName], [CurrentDate]) VALUES (N'd2ac6232-5c17-468f-b6d1-5419e9718ebd', NULL, N'23BDO-04851', N'33048', N'LADIES KNITTED TANGAAAA', N'481783', NULL, NULL, NULL, NULL, NULL, N'31', N'62.12', N'500', N'V', NULL, NULL, NULL, NULL)
INSERT [dbo].[GSPItemInfo] ([ID], [TranshipmentID], [InvoiceNo], [OrderNo], [ItemDetails], [StyleNo], [TAGIDNo], [OurID], [ARTNo], [CustomerPO], [Delivery], [Category], [Origion], [Quantity], [GSPQty], [Status], [Part], [UserName], [CurrentDate]) VALUES (N'0e52891d-96a6-4088-b323-d0ffee32107f', NULL, N'23BDO-04851', N'20718', N'LADIES KNITTED TANGAAAA', N'830-1163-5545-200', NULL, NULL, NULL, NULL, NULL, N'13', N'61.08', N'2620', N'V', NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[GSPformDetails]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GSPformDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [nvarchar](max) NOT NULL,
	[ContractNo] [nvarchar](max) NOT NULL,
	[ContractDate] [nvarchar](20) NOT NULL,
	[MasterContractNo] [nvarchar](max) NULL,
	[MasterContractDate] [nvarchar](20) NULL,
	[BuyerContractNo] [nvarchar](max) NULL,
	[BuyerContractDate] [nvarchar](20) NULL,
	[BKMEANo] [nvarchar](100) NOT NULL,
	[BINNo] [nvarchar](100) NOT NULL,
	[SBNo] [nvarchar](100) NOT NULL,
	[SBDate] [nvarchar](20) NULL,
	[VesselNo] [nvarchar](150) NOT NULL,
	[VesselContractNo] [nvarchar](50) NOT NULL,
	[CartonNo] [nvarchar](50) NOT NULL,
	[Itemnumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_GSPformDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GSPformDetails] ([ID], [InvoiceNo], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [BuyerContractNo], [BuyerContractDate], [BKMEANo], [BINNo], [SBNo], [SBDate], [VesselNo], [VesselContractNo], [CartonNo], [Itemnumber]) VALUES (N'ffe1f6d5-5ba5-45a8-bd11-17b1e1461fab', N'23BDO-02451', N'008-P-0143', N'07-04-2014', N'', N'', N'', N'', N'5308', N'17141016950', N'C 72738', N'07-09-2014', N'OCEAN ARROW V-OQ082R', N'TEMU6414148, SEGU4613376, CMAU5065950', N'17', N'ASDA STORES LTD.')
INSERT [dbo].[GSPformDetails] ([ID], [InvoiceNo], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [BuyerContractNo], [BuyerContractDate], [BKMEANo], [BINNo], [SBNo], [SBDate], [VesselNo], [VesselContractNo], [CartonNo], [Itemnumber]) VALUES (N'aa07bdf9-ce40-4965-b696-c06cad22cf18', N'23BDO-04851', N'199-P-112', N'09-04-2014', N'HLAP-14-BR-01A', N'22-05-2014', N'HB-01P01933', N'25-03-2014', N'1026-C/2006', N'18051009200', N'C 740013', N'07-09-2014', N'MADELEINE RICKMERS V-134S', N'CBHU9068512', N'254', NULL)
/****** Object:  Table [dbo].[Group]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Group] ([ID], [Name], [Description]) VALUES (N'86b7b37f-da63-474d-a714-34584b70e7b2', N'Private', NULL)
INSERT [dbo].[Group] ([ID], [Name], [Description]) VALUES (N'4df62498-2bad-4172-ae7c-57ed7ef2629b', N'Admin', NULL)
INSERT [dbo].[Group] ([ID], [Name], [Description]) VALUES (N'c80312b2-6a4e-48b6-9ff1-6f18578605bd', N'Sales', NULL)
INSERT [dbo].[Group] ([ID], [Name], [Description]) VALUES (N'fd3b2532-1674-457b-9a4f-7569feb4041e', N'CustomsAudit', NULL)
INSERT [dbo].[Group] ([ID], [Name], [Description]) VALUES (N'd7a9e26b-ae44-40b6-88f4-cd0793f7f42e', N'ExportAll', N'Export (Export, Shipping, Sales, Billing & Audit)')
INSERT [dbo].[Group] ([ID], [Name], [Description]) VALUES (N'86290895-cd0b-48a6-80c2-d44ff10a1995', N'ShipNsales', NULL)
INSERT [dbo].[Group] ([ID], [Name], [Description]) VALUES (N'15fee324-681c-4f32-8ea0-d75cfb03dde0', N'Logistics', N'For Logistics Users')
INSERT [dbo].[Group] ([ID], [Name], [Description]) VALUES (N'6a9af935-ff6d-4574-86f8-d8df2caba289', N'Reports', N'Only see the Reports')
INSERT [dbo].[Group] ([ID], [Name], [Description]) VALUES (N'0e346a48-854d-47cf-92f9-ffae18f03c20', N'Shipping', NULL)
/****** Object:  UserDefinedFunction [dbo].[fnFormatDate]    Script Date: 03/08/2015 11:37:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SQL datetime functions

-- SQL Server date formats

-- T-SQL convert dates

--Formatting dates sql server

CREATE FUNCTION [dbo].[fnFormatDate] (@Datetime DATETIME, @FormatMask VARCHAR(50))

RETURNS VARCHAR(50)

AS

BEGIN

    DECLARE @StringDate VARCHAR(32)

    SET @StringDate = @FormatMask

    IF (CHARINDEX ('YYYY',@StringDate) > 0)

       SET @StringDate = REPLACE(@StringDate, 'YYYY',

                         DATENAME(YY, @Datetime))

    IF (CHARINDEX ('YY',@StringDate) > 0)

       SET @StringDate = REPLACE(@StringDate, 'YY',

                         RIGHT(DATENAME(YY, @Datetime),2))

    IF (CHARINDEX ('Month',@StringDate) > 0)

       SET @StringDate = REPLACE(@StringDate, 'Month',

                         DATENAME(MM, @Datetime))

    IF (CHARINDEX ('MON',@StringDate COLLATE SQL_Latin1_General_CP1_CS_AS)>0)

       SET @StringDate = REPLACE(@StringDate, 'MON',

                         LEFT(UPPER(DATENAME(MM, @Datetime)),3))

    IF (CHARINDEX ('Mon',@StringDate) > 0)

       SET @StringDate = REPLACE(@StringDate, 'Mon',

                                     LEFT(DATENAME(MM, @Datetime),3))

    IF (CHARINDEX ('MM',@StringDate) > 0)

       SET @StringDate = REPLACE(@StringDate, 'MM',

                  RIGHT('0'+CONVERT(VARCHAR,DATEPART(MM, @Datetime)),2))

    IF (CHARINDEX ('M',@StringDate) > 0)

       SET @StringDate = REPLACE(@StringDate, 'M',

                         CONVERT(VARCHAR,DATEPART(MM, @Datetime)))

    IF (CHARINDEX ('DD',@StringDate) > 0)

       SET @StringDate = REPLACE(@StringDate, 'DD',

                         RIGHT('0'+DATENAME(DD, @Datetime),2))

    IF (CHARINDEX ('D',@StringDate) > 0)

       SET @StringDate = REPLACE(@StringDate, 'D',

                                     DATENAME(DD, @Datetime))   

RETURN @StringDate

END
GO
/****** Object:  Table [dbo].[ExportformDetailsBAK]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExportformDetailsBAK](
	[ID] [uniqueidentifier] NOT NULL,
	[ItemName] [nvarchar](max) NULL,
	[ContractNo] [nvarchar](max) NOT NULL,
	[ContractDate] [nvarchar](20) NOT NULL,
	[MasterContractNo] [nvarchar](50) NULL,
	[MasterContractDate] [nvarchar](50) NULL,
	[TTNo] [nvarchar](50) NOT NULL,
	[TTDate] [nvarchar](20) NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
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
	[EPNo] [nvarchar](20) NULL,
	[BLNo] [nvarchar](max) NULL,
	[BLDate] [nvarchar](20) NULL,
	[ExFactoryDate] [nvarchar](20) NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_ExportformDetailsBAK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'b248173f-913a-4bea-bee4-1335e9c6bed9', N'LADIES KNITTED BRA, BRIEF', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02437', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'5', N'10.30', N'2.06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/22/2014 12:42:19 PM', N'PVT', N'')
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'e38385ff-76b7-4bb7-9ad7-217ea6879d37', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04858', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'BL220920141', N'25-10-2014', N'12/3/2014 8:28:51 AM', N'Admin', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'fb925ad9-f91d-49dd-9cec-2a4210da504c', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04849', N'14-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'8', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', NULL, NULL, NULL, N'25-10-2014', N'10/29/2014 9:05:09 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'4465ad08-9cea-4064-895b-39a628f8f524', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04854', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'22-09-2014', N'25-10-2014', N'11/18/2014 8:41:54 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'bfc8e107-b730-4707-93d5-47117773ac0e', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04853', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'22-09-2014', N'25-10-2014', N'11/17/2014 9:18:21 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'42eacac2-5675-494d-aedc-78df43a02258', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-00001', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'BL220920141', N'25-10-2014', N'1/7/2015 2:27:20 PM', N'Admin', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'83b8aa2f-3d13-459a-adac-7d7d46c1f046', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'12-06-2014', N'23BDO-04855', N'04-10-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'22-09-2014', N'25-10-2014', N'11/18/2014 2:55:44 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'7a3b729d-358f-4974-83ea-8f45fc73a6ab', N'LADIES KNITTED T-SHIRT', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02453', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'26570731-7900-417b-9534-5cf7ad1b1a42', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'8', N'1051.00', N'210.20', NULL, NULL, N'EXP-1211201401', N'12-11-2014', N'EXP1211201401', N'BL-1211201401', N'BL-1211201401', N'12-11-2014', N'1/8/2015 9:14:06 AM', N'Admin', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'd0d966b1-cf8d-4c94-a649-90a334af3973', N'LADIES KNITTED T-SHIRT', N'008-P-0143', N'07-04-2014', N' ', N' ', N'IT06591406110030', N'18-11-2014', N'23BDO-00054', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'19529', N'1', N'2', N'11412.00', N'2282.40', N'11000.00', N'412.00', NULL, NULL, NULL, NULL, NULL, NULL, N'2/24/2015 2:24:45 PM', N'Admin', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'3405bca6-5ea0-41f9-80cc-9b8d10b8cb32', N'LADIES KNITTED T-SHIRT, WIRE, PUSH UP, BALCONY, BANDEAU BRA, DEEP PLUNGE, CROP TOP, BRAZILIAN, BRIEF, CHEEKY HIPSTER, STRING', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02452', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'26570731-7900-417b-9534-5cf7ad1b1a42', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'5', N'1051.00', N'210.20', NULL, NULL, N'EXP-1211201401', N'12-11-2014', N'EXP1211201401', N'BL-1211201401', N'BL-1211201401', N'12-11-2014', N'11/17/2014 9:11:31 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'd1775b46-05f5-4796-abd9-aee94879f80f', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04857', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'BL220920141', N'25-10-2014', N'12/3/2014 8:22:05 AM', N'Admin', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'ec96be44-5472-453a-a1d5-af2fdd95b95b', N'LADIES KNITTED T-SHIRT, WIRE, PUSH UP, BALCONY, BANDEAU BRA, DEEP PLUNGE, CROP TOP, BRAZILIAN, BRIEF, CHEEKY HIPSTER, STRING', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02451', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'5', N'12.00', N'2.40', NULL, NULL, N'EXP-1211201401', N'12-11-2014', N'EXP1211201401', N'BL-1211201401', N'BL-1211201401', N'12-11-2014', N'11/12/2014 1:33:33 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'ef6e2139-0c2e-44c4-a046-b77bfb86257e', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04856', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'BL220920141', N'25-10-2014', N'12/2/2014 3:20:05 PM', N'Admin', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'bbf089ac-ab67-4cbd-af7b-edde6d438297', N'LADIES KNITTED T-SHIRT', N'008-P-0143', N'07-04-2014', N'HLAP-14-BR-02A', N'22-02-2015', N'IT06591406110030', N'18-11-2014', N'23BDO-00053', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'19529', N'1', N'2', N'11412.00', N'2282.40', N'11000.00', N'412.00', NULL, NULL, NULL, NULL, NULL, NULL, N'2/24/2015 2:35:12 PM', N'Admin', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'7f8de39b-1315-482d-bccf-f2967dd41949', N'LADIES KNITTED T-SHIRT', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'18-11-2014', N'23BDO-02454', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'19529', N'1', N'2', N'11412.00', N'2282.40', N'11000.00', N'412.00', NULL, NULL, NULL, NULL, NULL, NULL, N'1/8/2015 9:18:46 AM', N'Admin', NULL)
INSERT [dbo].[ExportformDetailsBAK] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'4780e9a9-4fd4-4c9e-a257-fa61bbf25b58', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'12-06-2014', N'23BDO-00011', N'04-10-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'140.00', N'28.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'BL220920141', N'25-10-2014', N'2/24/2015 2:19:27 PM', N'Admin', NULL)
/****** Object:  Table [dbo].[Category]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[BillingInfo]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillingInfo](
	[ID] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[SBNo] [nvarchar](150) NOT NULL,
	[SBDate] [nvarchar](50) NOT NULL,
	[DocSubmitDate] [nvarchar](50) NULL,
	[CourierNo] [nvarchar](150) NULL,
	[CourierDate] [nvarchar](50) NULL,
	[BuyerCourierNo] [nvarchar](100) NULL,
	[BuyerCourierDate] [nvarchar](50) NULL,
	[LeadTime] [nvarchar](50) NULL,
	[BankSubmitDate] [nvarchar](50) NULL,
	[ModeStatus] [nvarchar](100) NULL,
	[BDTHC] [nvarchar](50) NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_BillingInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BillingInfo] ([ID], [InvoiceNo], [SBNo], [SBDate], [DocSubmitDate], [CourierNo], [CourierDate], [BuyerCourierNo], [BuyerCourierDate], [LeadTime], [BankSubmitDate], [ModeStatus], [BDTHC], [CurrentDate], [UserName]) VALUES (N'ec728775-3827-4d20-b3fd-4380ee2d4414', N'23BDO-04853', N'C 740013', N'26-01-2015', N'25-01-2015', N'CUR-00101', N'26-01-2015', NULL, NULL, N'7 WORKING DAYS', NULL, N'SEA CC', N'12.60', N'1/26/2015 4:23:13 PM', N'Admin')
INSERT [dbo].[BillingInfo] ([ID], [InvoiceNo], [SBNo], [SBDate], [DocSubmitDate], [CourierNo], [CourierDate], [BuyerCourierNo], [BuyerCourierDate], [LeadTime], [BankSubmitDate], [ModeStatus], [BDTHC], [CurrentDate], [UserName]) VALUES (N'c42f8afa-a1b7-4af2-b237-45b695d05461', N'23BDO-04854', N'SB-20141124001', N'06-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'AIR PP', NULL, N'1/14/2015 1:44:01 PM', N'Admin')
INSERT [dbo].[BillingInfo] ([ID], [InvoiceNo], [SBNo], [SBDate], [DocSubmitDate], [CourierNo], [CourierDate], [BuyerCourierNo], [BuyerCourierDate], [LeadTime], [BankSubmitDate], [ModeStatus], [BDTHC], [CurrentDate], [UserName]) VALUES (N'945f0b4a-5e01-45dd-bf0c-5d67b0b3ccb6', N'23BDO-04849', N'C 740013', N'17-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1/17/2015 11:33:36 AM', N'Admin')
INSERT [dbo].[BillingInfo] ([ID], [InvoiceNo], [SBNo], [SBDate], [DocSubmitDate], [CourierNo], [CourierDate], [BuyerCourierNo], [BuyerCourierDate], [LeadTime], [BankSubmitDate], [ModeStatus], [BDTHC], [CurrentDate], [UserName]) VALUES (N'a700c26c-76e7-4cad-9327-b7254bb31f52', N'23BDO-04848', N'SB-201411240012', N'06-12-2014', NULL, N'CUR-00101', N'04-12-2014', N'BCUR-00101', NULL, NULL, NULL, N'ROAD PP', NULL, N'1/6/2015 8:48:38 AM', N'Admin')
INSERT [dbo].[BillingInfo] ([ID], [InvoiceNo], [SBNo], [SBDate], [DocSubmitDate], [CourierNo], [CourierDate], [BuyerCourierNo], [BuyerCourierDate], [LeadTime], [BankSubmitDate], [ModeStatus], [BDTHC], [CurrentDate], [UserName]) VALUES (N'1339c819-411d-4049-9287-c1d5aacce80f', N'23bdo-05052', N'C 740013', N'20-01-2015', N'25-01-2015', N'7770006499', N'26-01-2015', NULL, NULL, NULL, NULL, N'SEA CC', NULL, N'1/20/2015 1:37:31 PM', N'Admin')
INSERT [dbo].[BillingInfo] ([ID], [InvoiceNo], [SBNo], [SBDate], [DocSubmitDate], [CourierNo], [CourierDate], [BuyerCourierNo], [BuyerCourierDate], [LeadTime], [BankSubmitDate], [ModeStatus], [BDTHC], [CurrentDate], [UserName]) VALUES (N'83e7c19f-eaf5-4816-aff1-e64dd2a6d49a', N'23BDO-02434', N'C 740013', N'17-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1/17/2015 11:32:15 AM', N'Admin')
/****** Object:  Table [dbo].[BillingExcel]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingExcel](
	[ID] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [nvarchar](max) NULL,
	[CourierNo] [nvarchar](150) NULL,
	[CourierDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_BillingExcel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BEInfo]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[ExporterDetails]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExporterDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[ExporterNo] [nvarchar](20) NOT NULL,
	[ExporterName] [nvarchar](max) NOT NULL,
	[RegDetails] [nvarchar](max) NULL,
	[EPBReg] [nvarchar](100) NULL,
 CONSTRAINT [PK_ExporterDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ExporterDetails] ([ID], [ExporterNo], [ExporterName], [RegDetails], [EPBReg]) VALUES (N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'HOPYICK', N'HOP YICK (BD) LTD., PLOT # 61-65, DEPZ, SAVAR, DHAKA.', N'BEPZA: 03.0314.014.02.00.321.2010/959
DATE: JULY 19, 2011', N'BD05173')
INSERT [dbo].[ExporterDetails] ([ID], [ExporterNo], [ExporterName], [RegDetails], [EPBReg]) VALUES (N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'APPAREL', N'HOP LUN APPAREL LTD.
S T TOWER, 3 NO. DHAKA- MYMENSHING ROAD
EAST GAZIPURA, TONGI, GAZIPUR,
DHAKA, BANGLADESH.', N'ERC NO : RA 78849 ', N'BDO4808')
INSERT [dbo].[ExporterDetails] ([ID], [ExporterNo], [ExporterName], [RegDetails], [EPBReg]) VALUES (N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'HLBD', N'HOP LUN (BD) LTD.  DEPZ, SAVAR, DHAKA', N'BEPZA: IP-M-DEPZ-01 ( )/99/595
DATE: APRIL 06,2000', N'BD03904')
/****** Object:  Table [dbo].[ExcelImport]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[Events]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Events](
	[EventName] [varchar](30) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Events] ([EventName], [StartTime], [EndTime]) VALUES (N'First Event', CAST(0x070040230E430000 AS Time), CAST(0x070074053F470000 AS Time))
INSERT [dbo].[Events] ([EventName], [StartTime], [EndTime]) VALUES (N'Second Event', CAST(0x0700A8E76F4B0000 AS Time), CAST(0x070010ACD1530000 AS Time))
INSERT [dbo].[Events] ([EventName], [StartTime], [EndTime]) VALUES (N'Third Event', CAST(0x07001882BA7D0000 AS Time), CAST(0x0700B4284D8A0000 AS Time))
/****** Object:  Table [dbo].[DestCountry]    Script Date: 03/08/2015 11:37:40 ******/
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
INSERT [dbo].[DestCountry] ([ID], [CountryCode], [Name], [Port]) VALUES (N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2002', N'BELGIUM', N'ANTWERPEN(ANVERS)')
INSERT [dbo].[DestCountry] ([ID], [CountryCode], [Name], [Port]) VALUES (N'e3aec8d0-37f7-4f0a-841f-fdf62999e941', N'2004', N'GERMANY', N'EUROPEAN POINT')
/****** Object:  UserDefinedFunction [dbo].[CustomDateFormat]    Script Date: 03/08/2015 11:37:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CustomDateFormat]
(
   @Period VARCHAR(50)
)
RETURNS VARCHAR(50)
AS
BEGIN
  SELECT @Period= CASE 
     WHEN @Period IS NULL THEN ' '
     WHEN @Period = ''    THEN ' ' 
     WHEN @Period LIKE '%NA%'   THEN ' ' 
     WHEN @Period LIKE '%N/A%'  THEN ' '    
     WHEN @Period LIKE '%Not Yet Available%' THEN ' '            
     ELSE 
        CONVERT(varchar, CONVERT(datetime, @Period, 105), 6) 
        --@Period
     END   
  RETURN @Period  
END
GO
/****** Object:  Table [dbo].[CustomAuditDetails]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomAuditDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[IRegisterNo] [nvarchar](100) NOT NULL,
	[IBond] [nvarchar](150) NOT NULL,
	[TotalFabric] [nvarchar](100) NOT NULL,
	[AdjustReg] [nvarchar](100) NOT NULL,
	[AdjustRegPage] [nvarchar](50) NOT NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_CustomAuditDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CustomAuditDetails] ([ID], [InvoiceNo], [IRegisterNo], [IBond], [TotalFabric], [AdjustReg], [AdjustRegPage], [CurrentDate], [UserName]) VALUES (N'e37546f4-3cfc-4298-ae95-0dc102643457', N'23BDO-04853', N'Reg-07', N'617/13', N'576.31', N'Reg-13', N'45', N'12/28/2014 1:39:41 PM', N'Admin')
INSERT [dbo].[CustomAuditDetails] ([ID], [InvoiceNo], [IRegisterNo], [IBond], [TotalFabric], [AdjustReg], [AdjustRegPage], [CurrentDate], [UserName]) VALUES (N'debb9d7a-1225-45a0-94ea-c4af55ac6d9a', N'23BDO-04854', N'Reg-07', N'619/13', N'100', N'Reg-13', N'76', N'12/28/2014 2:18:58 PM', N'Admin')
/****** Object:  Table [dbo].[ConsigneeDetails]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsigneeDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[ConsigneeNo] [nvarchar](20) NOT NULL,
	[ConsigneeName] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](100) NULL,
	[BCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_ConsigneeDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'99d70a8a-230f-43c8-b56a-05bbe3eac832', N'H&M-SWEDEN', N'H & M HENNES & MAURITZ  GBC AB, SVISTA 
INDUSTRIVAG 2, SE-631 80 ESKILSTUNA, SWEDEN', N'SWEDEN', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'ee00dbcf-a7eb-4377-ab34-085cf152803c', N'ARCADIA-FELIXSTOWE', N'ARCADIA GROUP LTD.BHS IMPORT DEPT.
2ND FLOOR,COLGRAVE HOUSE 70 BERNERS
STREET,LONDON,W1T3NL.', N'UNITED KINGDOM', N'A1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'211f67d7-2850-4f4d-b4bf-08784f373fae', N'H&M-CHILE', N'H&M HENNES & MAURITZ  SPA
AV. APOQUINDO 2827, OFICINA 802
LAS CONDES, SANTIAGO DE CHILE', NULL, N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'5d5085fe-6e7b-4d5a-9307-0f99fd93cf24', N'CARR-SPAIN', N'CENTROS COMERCIALS CARREFOUR SA
(CARREFOUR SPAIN ), C/CAMPEZO, 16
POLIGONO INDUSTRIAL LAS MERCEDES
28022 MADRID-SPAIN', N'SPAIN', N'C1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'4898ef33-7933-4f26-9a8b-19f89baee15a', N'H&M-SPAIN', N'H&M HENNES & MAURITZ S.L. POLIGONO 
CASABLANCA, CALLE MARIO VARGAS LLOSA NO. 24
28850 TORREJON DE ARDOZ - MADRID/SPAIN', N'SPAIN', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'b9fca2ab-5e17-4b70-a065-1a981b05b608', N'H&M-SOUTH KOREA', N'H&M HENNES & MAURITZ LTD
15F, OCI BUILDING 94 SOGONG-RO, JUNG- GU,
100-718, SEOUL, REPUBLIC OF KOREA', N'REPUBLIC OF KOREA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'8f22c1d5-7d4c-44da-b0a7-1dab4643a757', N'M&S', N'MARKS AND SPENCER SCM LTD
C/O APL LOGISTICS
6TH FLOOR, SOUTH QUAY PLAZA 3
189 MARSH WALL, LONDON E14 9SH, UK', N'UK', N'M1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'7f2eb01f-98c3-4781-ac3a-21735a5a7057', N'H&M-JAPAN', N'H & M HENNES & MAURITZ JAPAN KK,
LOGI PORT KAWASAKI,3-1-4 IKEGAMI-SHINCHO
KAWASAKI - KU, KAWASAKI CITY, KANAGAWA 
- 210-0832, JAPAN', N'JAPAN', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'4c13563f-f0bc-46ac-8307-2195dc15283f', N'TESCO-UNITED KINGDOM', N'TESCO STORES LTD, NEW TESCO HOUSE 4TH FLOOR
PILLAR G, DELAMARE ROAD, CHESHUNT, HERTS. 
EN8 9SL, ENGLAND', N'ENGLAND', N'T1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'026f7993-076b-4d5f-bef4-21ce0b3137d8', N'PEACOCK', N'PEACOCKS STORES LIMITED
CAPITAL LINK, WINDSOR ROAD
CARDIFF CF24 5NG, UK', N'UK', N'P1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'e1b086c2-3a37-413c-9872-2746db5bb805', N'H&M-AUSTRALIA', N'H & M HENNES & MAURITZ PTY LTD					
LEVEL 4, 414 KENT STREET, SYDNEY,				
NSW 2000, AUSTRALIA							
', N'AUSTRALIA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'ASDA', N'ASDA STORES LTD
ASDA HOUSE SOUTHBANK GREAT
WILSON STREET,LEEDS, LS11 5AD, UK
', N'UK', N'A1002')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'c316e144-0b7b-4346-98a9-27b07d98a24a', N'H&M-UAE', N'LOGIX FZCO PO BOX 261422
PLOT NO. S21515, SOUTH BLOCK
JEBEL ALI FREE TRADE ZONE DUBAI
UNITED ARAB EMIRATES', NULL, N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'17d04cc8-8a24-45ed-bf61-2a29daaf35de', N'SAS KIABI-FRANCE', N'SAS KIABI EUROPE
100 RUE DU CALVAIRE
59510 HEM, FRANCE.   ', N'FRANCE', N'S1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'da74e876-57b3-4823-8fd3-2e4939ac1450', N'H&M-TURKEY', N'H&M HENNES & MAURITZ TEKSTIL LTD. STI. 
HARBIYE MAH. ABDI İPEKÇI CAD. NO:19-1 34367
KAT:5 NIŞANTAŞI ISTANBUL, TURKEY. ', N'TURKEY', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'bba8e102-f0d6-4838-8f48-2f2e2838f016', N'BRAND-LITHUANIA', N'UAB "INTRANS", CARGO FOR - UAB "LTC FORWARDING
COMPANY", GALINES K., GALINES G. 1, AUTOMAGISTRALE
A2, VILNIUS - PANEVEZYS, 16 KM, LTVR4000, LITHUANIA.', N'LITHUANIA', N'B1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'ed6b8226-e5e3-4b2c-a6f9-2fff45a2c861', N'H&M-USA', N'H&M HENNES & MAURITZ, C/O OHL, GLOBAL 
WAREHOUSING AND DISTRIBUTION, LOCATIONS, 
281 AIRTECH PARKWAY, PLAINFIELD, 
INDIANA   46168, USA.', N'USA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'39f7e032-676e-4605-b2a9-32abbbaa3240', N'SEPPALA-FINLAND', N'SEPPALA OY, P.O. BOX 234, TIKKURILANTIE 146
FI-01530 VANTAA, FINLAND', N'FINLAND', N'S1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'6c962677-75f3-4103-b4c8-32b95931a149', N'H&M-NORWAY', N'H&M HENNES & MAURITZ  GBC AB 
C/O H&M HENNES & MAURITZ A/S
0614 OSLO- ALNABRU, NORWAY', N'NORWAY', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'099bd4a6-73b7-4ff9-b348-41058b0d20d3', N'CARR-BELGIUM', N'CARREFOUR BELGIUM SA
AVENUE DES OLYMPIADES,20B
OLYMPIADENLAAN-EVERE 3
BP 500 1140 BRUXELLES, BELGIUM', N'BELGIUM', N'C1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'8b94af59-0267-43d2-8114-4728657fa6b4', N'C&A', N'C & A BUYING GMBH & CO KG
WANHEIMERSTR 70,
40468 DUSSELDORF,
GERMANY.
', N'GERMANY', N'C1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'724f6c3b-1281-44e5-899b-4753c856d9fd', N'M&S-INDIA', N'MARKS AND SPENCER INDIA PRIVATE LTD
C/O EXPO FREIGHT (PVT.) LTD. KHASRA NO 99/2, 
OPPOSITE MTNL EXCHANGE, ALIPUR, 
NEW DELHI -11075, INDIA.', N'INDIA', N'M1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'c4d09834-3792-43c3-bae1-574699b70aa2', N'H&M-DENMARK', N'H & M HENNES & MAURITZ  GBC
C/O H&M HENNES & MAURITZ A/S
VENTRUPPARKEN 7, 2670 GREVE
DENMARK', N'DENMARK', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'157b403a-bec9-4a6a-8dc6-58b376af3635', N'LINDEX-SWEDEN', N'AB LINDEX
BOX 233,401 23 GOTHENBURG
SWEDEN', N'SWEDEN', N'L1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'91f50cf3-a794-4e1c-b170-59e071a58db8', N'BRAND-HK', N'HOPLUN BRANDS LIMITED, 32/F, 9 WING HONG 
STREET, CHEUNG SHA WAN,KOWLOON,
HONG KONG', N'HONG KONG', N'B1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'947b6b63-a217-4226-8878-5ba476bd251e', N'DEBENHAMS-UK', N'DEBENHAMS RETAIL PLC.
10 BROCK STREET, REGENT''S PLACE
LONDON, NW1 3DS', N'UK', N'D1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'b82aa0ab-2295-4929-8efe-603d04485b01', N'H&M-UNITED KINGDOM', N'H&M HENNES & MAURITS LTD
UNIT ONE,OCKHAM DRIVE GREENFORD, UB6 0FD,  GREAT BRITAIN /U.K.', N'UK', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'f27e36d3-d48a-4105-8d19-624a67d87d59', N'H&M-INDONESIA', N'PT HINDO C/O DHL SUPPLY CHAIN
JALAN TREMBESI PLOT F15-6 KAWASAN INDUSTRY, 
LIPPO CIKARANG, KABUPATEN 
BEKASI, 17550 INDONESIA', N'INDONESIA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'ddaf1904-663a-490f-bfe2-63b479b15396', N'FOTEX-DENMARK', N'FOTEX A/S, ROSBJERGVEJ 33-35, AARSLEV, 
DK-8220 BRABRAND, DENMARK.', N'DENMARK', N'F1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'8b9e1ca6-28c7-4f95-baaa-6bc0cd5b20f5', N'TESCO-SLOVAK', N'TESCO INTERNATIONAL CLOTHING, BRANDS S.R.O,
KAMENNE NAM. 1/A, BRATISLAVA 81561, 
SLOVAK REPUBLIC', N'SLOVAK REPUBLIC', N'T1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'CARR-BELGIUM', N'CARREFOUR BELGIUM SA
AVENUE DES OLYMPIADES,20B
OLYMPIADENLAAN-EVERE 3
BP 500 1140 BRUXELLES, BELGIUM', N'BELGIUM', N'C1002')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'75949b39-5374-4fa9-b26e-76fffbe80dc9', N'FASHION-INDIA', N'FASHION TRENDZ, G-18/8 DLF Q.E PH 1
GURGAON,122001,HARYANA, INDIA', N'INDIA', N'F1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'66da4a49-53c5-47c4-a579-77c1a75dc4ab', N'LINDEX-UAE', N'DELTA INTERNATIONAL COMPANY, P.O.BOX  64832,8THFLOOR, BANK OF BHARAIN BUILDING, 
OLAYA STREET,RIYADH 11546, SAUDI ARABIA', N'SAUDIA ARABIA', N'L1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'419cbb02-79d2-438c-b6ff-7952cdbddbf9', N'CARR-FRANCE', N'CARREFOUR IMPORT SAS
18 AVENUE DU QUEBEC
ZA DE COURTABOEUF
91140 VILLEBON SUR YVETTE, FRANCE', N'FRANCE', N'C1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'f2196bae-dd44-40ec-9f6b-812972aa853f', N'M&S-MALAYSIA', N'DAMCO LOGISTICS MALAYSIA SDN BHD, C/O MARKS 
AND SPENCER PLC, TAMAN PERINDUSTRIAN PULAU INDAH,42907  PELABUHAN KELANG,SELANGOR,MALAYSIA', N'MALAYSIA', N'M1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'3984cbb1-fdd8-490b-93ae-825909abba01', N'BRAND-NETHERLAND', N'HOP LUN BRANDS LIMITED, 
C/O IJS GLOBAL (NETHERLANDS BV),  
BAMFORDWEG 1, 6235 NS ULESTRATEN, 
THE NETHERLANDS', N'NETHERLANDS', N'B1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'd198e768-e587-4aff-9473-8863af3a4d4e', N'H&M-MEXICO', N'H&M HENNES & MAURITZ SERVICIOS SA DE CV, C/O
GEODIS WILSON MEXICO S.A DE C.V.,MEX-QRO KM 41.5 NAVE 3, CUAUTITLAN IZCALLI,EDO DE MEXICO. C.P.54715', N'MEXICO', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'86dad580-0f98-4a4c-8720-8a2de962bfca', N'H&M-SERBIA', N'H&M HENNES & MAURITZ D.O.O.
6 VLADIMIRA POPOVICA STREET
NEW BELGRADE, BELGRADE
SERBIA, TIN (PIB):107559340', NULL, N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'f16a6df4-da39-4d12-a749-8d5bdd096a72', N'H&M-PERU', N'H&M HENNES & MAURITZ
S.A.C., AV. SANTO TORIBIO 143, 
PISO 8, LIMA 27, PERU.', N'PERU', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'774f1835-16e5-4403-a417-8fb73ed07f88', N'DEBENHAMS-SG', N'EXPO GLOBAL DISTRIBUTION CENTRE (PTE) LTD. 
750C CHAI CHEE ROAD (TECHNO-PARK)
#02-05/06 SINGAPORE 469003
79 ANSON ROAD # 14-00,SINGAPORE 079906', N'SINGAPORE', N'D1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'2e84ccea-17d1-48ef-8eb3-946241fdf151', N'H&M-SWITZERLAND', N'H & M HENNES & MAURITZ GBC AB
C/O H&M HENNES & MAURITZ AG
INDUSTRIESTR. 16, CH-4623 NEUENDORF
SWITZERLAND', N'SWITZERLAND', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'4b779a71-707e-4a8f-abcc-98c9355aaf8e', N'H&M-SOUTH AFRICA', N'H&M HENNES MAURITZ PTY LTD, 1 RESTIO  ROAD
HOUT BAY, CAPE TOWN, 7806 SOUTH AFRICA', N'SOUTH AFRICA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'd6ad5275-5350-4a95-a346-9906c270f13b', N'HEMA-NETHERLANDS', N'HEMA B.V., ATOOMWEG  60,
3542  AB UTRECHT, NETHERLANDS.', N'NETHERLANDS', N'H1002')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'd92095c1-ed45-4eeb-afb5-9d6991d18c02', N'H&M-ITALY', N'H&M HENNES & MAURITZ GBC AB, C/O NORBERT DENTRESSANGLE,STRADELLA BUSINESS PARK, 
VIA ZACCAGNINI / VIA PRIMO LEVI, 27049, 
STRADELLA (PV), ITALY', N'ITALY', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'bfd81bdc-2e90-4ad4-a6cf-a715febcd4ab', N'CARREFOUR', N'CARREFOUR BELGIUM SA
AVENUE DES OLYMPIADES,20B
OLYMPIADENLAAN-EVERE 3
BP 500 1140 BRUXELLES, BELGIUM', NULL, N'C1002')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'3b3f0704-c9c1-4e59-8bbc-aa0b4a8fd795', N'H&M-GERMANY', N'H & M HENNES & MAURITZ  LOGISTICS 
AB & CO. KG, RUNGEDAMM 38
21035 HAMBURG, GERMANY', N'GERMANY', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'c61c3846-22e6-4cc8-8cd8-ae26052f97ae', N'HK002', N'PT Hindo
C/O DHL Supply Chain
Jalan Trembesi Plot F15-6
Kawasan Industri Delta Silicon II, Lippo Cikarang
Kabupaten Bekasi, 17550
Indonesia', NULL, N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'1c855997-ca0c-4c27-b441-b0614c4e57cb', N'H&M-SINGAPORE', N'H&M HENNES & MAURITZ PTE. LTD, C/O DHL 
GLOBAL FORWARDING (S) PTE LTD, DHL 
DISTRIBUTION CENTRE, SINGAPORE 486760', N'SINGAPORE', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'f8e0ea42-95e6-4470-82cc-b833534211e0', N'H&M-THAILAND', N'HTHAI (THAILAND) CO., LTD, 999/9 THE OFFICES 
AT CENTRAL WORLD, 26 FLOOR, RAMA 1 ROAD,
PATHUMWAN, BANGKOK 10330, THAILAND
', N'THAILAND', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'9374e89b-d0ed-4735-ba28-bce68f7aec1e', N'CARR-POLAND', N'(CARREFOUR POLASKA SP.Z.O.O.)
UL. TARGOWA 72 03-734 WARSZA WA-POLAND, 
ANNA KICZOR,POLAND
', N'POLAND', N'C1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'2d323c03-5baa-4adb-9b04-beecfb5d1ef4', N'CARR-ITALY', N'(GS S.P.A) SEDE LEGALE IN MILANO
VIA CALDERA 21, 20153 MILANO, ITALY
', N'ITALY', N'C1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'7bb2499a-3ed7-4642-a8e9-c76b3ca35d6d', N'H&M-POLAND', N'H & M HENNES & MAURITZ LOGISTIC SP
Z.O.O. MAGAZYNOWA 3, 62 023 GADKI (POZNAN)
POLAND', N'POLAND', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'd9ca1ec3-83d1-4175-aa32-ceaed9650035', N'H&M-TAIWAN', N'H&M HENNES & MAURITZ, NETHERLANDS B.V. TAIWAN 
BRANCH, 24TH FLOOR, NO. 1, SONGZHI ROAD
XINYI DISTRICT, TAIPEI CITY 11047, TAIWAN', N'TAIWAN', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'76b9df4a-a0c0-48ce-8a63-d781629a89b7', N'H&M-MALAYSIA', N'H&M RETAIL SDN BHD, C/O CEVA FREIGHT 
HOLDINGS SDN BHD, 40150 SHAH ALAM 
SELANGOR, MALAYSIA.', N'MALAYSIA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'5e6d19eb-6302-4058-a00d-d94c8b1b04d3', N'H&M-CROATIA', N'H&M HENNES & MAURITZ D.O. O.
DORDICEVA 6, HR-100 00 ZAGREB,CROATIA', N'CROATIA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'3332aa2e-9a1c-4cce-a104-db49054b2308', N'C&A', N'C & A BUYING GMBH & CO KG WANHEIMERSTR 70, 40468 DUSSELDORF, GERMANY. ', N'GERMANY', N'C1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'4545a676-fe9a-4814-b323-e00970c5d054', N'CARR-UAE', N'MAF HYPERAMARKETS LLC-HEAD OFFICE BUR 
DUBAI-OPPOSIT AL SHINDAGHA-BUS   STATION - 
P.O BOX 22797, UNITED ARAB EMIRATES.', N'UNITED ARAB EMIRATES', N'C1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'0a53b87a-7130-4253-a3b1-e5a444bab20e', N'KAPPAHL', N'KAPPAHAL SVERIGE AB, P.O.BOX-303
431 24 MOLNDAL, SWEDEN', N'SWEDEN', N'K1002')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'd084ba56-5bff-460b-8e96-eb422197a2bd', N'H&M-CANADA', N'H & M HENNES & MAURITZ GBC, C/O FASHION 
DISTRIBUTORS, 1 WILKINSON ROAD, BRAMPTON, 
ON L6T 4M6, CANADA.', N'CANADA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'23a88ec3-5ca9-4381-817e-ee05600920c3', N'MATALAN-UK', N'MATALAN RETAIL LTD, GILLIBRANDS ROAD,
SKELMERSDALE, WEST LANCS, WIN8 9TB, U.K.', N'U.K.', N'M1002')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'f7973268-6dee-43f6-a908-f0858c5a2d1f', N'H&M-USA01', N'H&M HANNES & MAURITZ GBC AB
100 PORETE AVENUE
07031 NORTH ARLINGTON N.J. USA', N'USA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'2adcbc78-9c14-4856-a5eb-f0d0f27dc913', N'H&M-BELGIUM', N'H & M HENNES & MAURITZ S.A.
RUE RENE WATTIEZ, 8
7011 GHLIN, BELGIUM', N'BELGIUM', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'2f324aea-632e-496f-b20f-f14c0653b515', N'HUNKEMOLLER-NETHER', N'HUNKEMOLLER INTERNATIONAL B.V., 
LIEBERGERWEG 28, 1221 JS HILVERSUM, 
THE NETHERLANDS.', N'NETHERLANDS', N'H1002')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'3028a1f8-f0ab-45b9-92d2-f4306264b30d', N'H&M-CHINA', N'H & M HENNES MAURITZ, (SHANGHAI) COMMERCIAL LTD.
B1-3F, 645-659, MIDDLE HUAI HAI ROAD, LU WAN DISTRICT,
SHANGHAI, PEOPLES REPUBLIC OF CHINA.', N'CHINA', N'H1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'd353c1fa-9d21-435c-baf3-f98357069fc5', N'CARR-FRANCE', N'CARREFOUR IMPORT SAS
18 AVENUE DU QUEBEC
ZA DE COURTABOEUF
91140 VILLEBON SUR YVETTE, FRANCE', NULL, N'C1002')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'e3b2a41d-1cf3-4e24-8561-fa8d3d6c4ce9', N'C&A-GERMANY', N'C & A BUYING GMBH & CO KG
WANHEIMERSTR 70, 40468 DUSSELDORF,
GERMANY.', N'GERMANY', N'C1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'a685713a-60d1-4484-9274-fd5810ff7527', N'LINDEX-CZECH', N'AB LINDEX/DHL SOLUTION DISTRIBUTION
CENTER, ZDERADSKA 67, HALL A
RICANY-JAZLOVICE,251 01, CZECH REPUBLIC', NULL, N'L1001')
INSERT [dbo].[ConsigneeDetails] ([ID], [ConsigneeNo], [ConsigneeName], [Country], [BCode]) VALUES (N'629a9348-ab07-4b13-9c81-fea5c03a464b', N'H&M-INDIA', N'H&M HENNES & MAURITZ RETAIL PRIVATE LTD.
R-77A, GREATER KAILASH PART-I,NEW DELHI - 110048
DELHI, INDIA

', N'INDIA', N'H1001')
/****** Object:  Table [dbo].[ShippingInfo]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShippingInfo](
	[ID] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[EPNo] [nvarchar](150) NOT NULL,
	[EPDate] [nvarchar](50) NULL,
	[EXPNo] [nvarchar](100) NOT NULL,
	[EXPDate] [nvarchar](50) NOT NULL,
	[ExFactoryDate] [nvarchar](50) NULL,
	[CnFAgent] [nvarchar](100) NULL,
	[TransportID] [uniqueidentifier] NOT NULL,
	[SBNo] [nvarchar](150) NULL,
	[SBDate] [nvarchar](50) NULL,
	[VesselNo] [nvarchar](max) NULL,
	[CargorptDate] [nvarchar](50) NULL,
	[BringBack] [nvarchar](50) NULL,
	[ShippedOut] [nvarchar](50) NULL,
	[ShippedCancel] [nvarchar](50) NULL,
	[ShippedBack] [nvarchar](50) NULL,
	[Unshipped] [nvarchar](50) NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedOn] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShippingInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'9a70b2c9-9053-4414-922e-0ae66e9280ce', N'23BDO-04849', N'EXP1104201401', N'06-12-2014', N'Exp-04122014002', N'04-12-2014', N'22-09-2014', N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', N'SB-20141124002', N'06-12-2014', N'MADELEINE RICKMERS V-134S', N'04-12-2014', NULL, NULL, NULL, NULL, NULL, N'12/6/2014 4:58:20 PM', N'Admin', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'53f3e245-3d80-4552-aaff-16874c0e1a78', N'23BDO-00001', N'EXP1104200001', NULL, N'Exp-04122014001', N'25-02-2015', NULL, N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', NULL, NULL, N'OCEAN ARROW V-OQ082R', N'04-12-2014', NULL, NULL, NULL, NULL, NULL, N'2/25/2015 8:40:58 AM', N'Admin', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'68234e97-ea79-421b-8eda-36cd286d0e26', N'23BDO-04853', N'EP220920142', N'04-12-2014', N'Exp-04122014001', N'04-12-2014', N'25-10-2014', N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', N'SB-20141124001', N'06-12-2014', N'MADELEINE RICKMERS V-134S', N'27-11-2014', NULL, NULL, NULL, NULL, NULL, N'12/6/2014 4:58:20 PM', N'ssp', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'e24bfae8-ea83-4709-aac0-5c588fe7683d', N'23BDO-04850', N'EXP1104201404', N'06-12-2014', N'Exp-04122014004', N'06-12-2014', N'12-11-2014', N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', N'SB-20141124004', N'07-09-2014', N'OCEAN ARROW V-OQ082R', N'27-11-2014', NULL, NULL, NULL, NULL, NULL, N'12/6/2014 4:58:20 PM', N'ssp', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'd8144d64-349d-4a46-ae94-5e28b6855406', N'23BDO-04848', N'EXP1104201405', N'06-12-2014', N'Exp-04122014002', N'06-12-2014', N'12-11-2014', N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', N'SB-20141124005', N'04-12-2014', N'MADELEINE RICKMERS V-134S', N'27-11-2014', NULL, NULL, NULL, NULL, NULL, N'12/6/2014 4:58:20 PM', N'ssp', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'38c485ad-3365-43a7-bdfd-60ec15e51fa5', N'23BDO-00011', N'EXP1104201401', N'04-12-2014', N'Exp-04122014011', N'26-02-2015', N'26-02-2015', N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', NULL, NULL, N'MADELEINE RICKMERS V-111S', N'27-11-2014', NULL, NULL, NULL, NULL, NULL, N'2/26/2015 11:28:07 AM', N'Admin', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'4b4cf33f-5c1f-49c0-a3e4-67316b9b1ab9', N'23BDO-04854', N'EP220920142', N'04-12-2014', N'Exp-04122014001', N'04-12-2014', N'25-10-2014', N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', N'SB-20141124001', N'07-09-2014', N'MADELEINE RICKMERS V-134S', N'27-11-2014', NULL, NULL, NULL, NULL, NULL, N'12/6/2014 4:58:20 PM', N'ssp', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'f2990c3c-83bb-4fad-9a7c-6b5aea850492', N'23BDO-02439', N'EXP1104200039', N'02-02-2015', N'Exp-04122014039', N'02-03-2015', N'02-03-2015', N'CHANNEL', N'26570731-7900-417b-9534-5cf7ad1b1a42', NULL, NULL, N'MADELEINE RICKMERS V-134S', N'27-11-2014', NULL, NULL, NULL, NULL, NULL, N'3/2/2015 12:00:35 PM', N'Admin', N'Admin', N'3/4/2015 10:30:06 AM')
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'a4524d45-768a-4250-a386-b9ccd1a3c043', N'23BDO-04852', N'EP220920142', N'04-12-2014', N'Exp-04122014002', N'06-12-2014', N'22-09-2014', N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', N'SB-20141124002', N'04-12-2014', N'MADELEINE RICKMERS V-134S', N'04-12-2014', NULL, NULL, NULL, NULL, NULL, N'12/6/2014 4:58:20 PM', N'ssp', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'eb344fa5-e8b9-46c0-9656-dac1879c87c1', N'23bdo-05052', N'EXP1104201401', N'06-12-2014', N'Exp-04122014002', N'04-12-2014', N'01-02-2015', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'SB-201411240012', NULL, NULL, NULL, N'Yes', N'Yes', N'Yes', N'Yes', N'Yes', N'1/6/2015 3:33:53 PM', N'Admin', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'7f63cf5b-96a9-49dc-afe8-f4e089292173', N'23BDO-04851', N'EXP1104201403', N'04-12-2014', N'Exp-04122014003', N'06-12-2014', N'12-11-2014', N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', N'SB-20141124003', N'07-09-2014', N'MADELEINE RICKMERS V-134S', N'04-12-2014', NULL, NULL, NULL, NULL, NULL, N'12/6/2014 4:58:20 PM', N'ssp', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'40e26665-cea9-4bb8-a84a-f84105211e9c', N'23BDO-02453', N'EP220920142', N'06-12-2014', N'Exp-04122014002', N'06-12-2014', N'25-01-2015', N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', N'SB-201411240012', N'19-01-2015', N'MADELEINE RICKMERS V-134S', N'27-11-2014', N'Yes', NULL, NULL, N'Yes', NULL, N'1/25/2015 2:37:07 PM', N'Admin', NULL, NULL)
INSERT [dbo].[ShippingInfo] ([ID], [InvoiceNo], [EPNo], [EPDate], [EXPNo], [EXPDate], [ExFactoryDate], [CnFAgent], [TransportID], [SBNo], [SBDate], [VesselNo], [CargorptDate], [BringBack], [ShippedOut], [ShippedCancel], [ShippedBack], [Unshipped], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'ad1001ab-fcbd-4447-ba7d-f855f15eb763', N'23BDO-04855', N'N/A', NULL, N'N/A', N'22-02-2015', NULL, N'N/A', N'26570731-7900-417b-9534-5cf7ad1b1a42', N'N/A', NULL, N'N/A', NULL, NULL, NULL, NULL, NULL, NULL, N'1/6/2015 2:17:40 PM', N'Admin', NULL, NULL)
/****** Object:  Table [dbo].[SalesinfoDetailsBack]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesinfoDetailsBack](
	[ID] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [nvarchar](max) NOT NULL,
	[OrderNo] [nvarchar](150) NULL,
	[StyleNo] [nvarchar](150) NULL,
	[ProductType] [nvarchar](100) NULL,
	[ShipbordingDate] [nvarchar](50) NULL,
	[BLNo] [nvarchar](max) NOT NULL,
	[BLDate] [nvarchar](50) NULL,
	[ETADate] [nvarchar](50) NULL,
	[RevQty] [nvarchar](50) NULL,
	[RevisedFOBValue] [nvarchar](100) NULL,
	[RevisedCMValue] [nvarchar](100) NULL,
	[CartonQty] [nvarchar](50) NULL,
	[CBMValue] [nvarchar](50) NULL,
	[VesselName] [nvarchar](100) NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[SalesinfoDetailsBack] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [CurrentDate], [UserName]) VALUES (N'7f0a1bf0-6a92-460a-bbb5-37f4f4b29334', N'23bdo-05052', N'73066-203-41-463-001', N'830-1163-5545-200', N'TOPs', NULL, N'BL220920141', N'01/12/2015', N'01/12/2015', N'2620', N'1890.00', N'378.00', N'17', N'26.22', N'Truck', N'1/12/2015 9:02:45 AM', N'Admin')
INSERT [dbo].[SalesinfoDetailsBack] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [CurrentDate], [UserName]) VALUES (N'513b4a06-6956-4aa2-a09a-83b21ac7fb64', N'23BDO-04853', N'73066-203-41-463-001', N'830-1163-5545-200', N'TOP', N'17-01-2015', N'BL220920141', N'17-01-2015', N'17-01-2015', N'2620', N'1890.00', N'378.00', N'17', N'26.22', N'HANSA CALYPSO V-027E', N'12/6/2014 3:59:51 PM', N'ssp')
INSERT [dbo].[SalesinfoDetailsBack] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [CurrentDate], [UserName]) VALUES (N'9e1ce805-398b-4ea7-b0b4-9a01cd5d41b6', N'23BDO-04854', N'20718', N'830-1163-5545-200', N'TOP', N'7/1/2014 12:00:00 AM', N'BL-1211201402', N'7/1/2014 12:00:00 AM', N'7/1/2014 12:00:00 AM', N'2620', N'1890.00', N'378.00', N'17', N'26.80', N'Truck', N'12/1/2014 11:38:41 AM', N'Soma')
INSERT [dbo].[SalesinfoDetailsBack] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [CurrentDate], [UserName]) VALUES (N'42250269-2511-44c1-9733-a8f571046fe4', N'23BDO-04849', N'73066-203-41-463-001', N'830-1163-5545-200', N'TOP', N'', N'BL220920142', N'7/1/2014 12:00:00 AM', N'7/1/2014 12:00:00 AM', N'2620', N'1890.00', N'378.00', N'17', N'26.22', N'Truck', N'1/6/2015 3:24:18 PM', N'Admin')
INSERT [dbo].[SalesinfoDetailsBack] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [CurrentDate], [UserName]) VALUES (N'9660e3a7-bd23-42ef-8b2a-d806f21feb38', N'23BDO-04848', N'73066-203-41-463-001', N'830-1163-5545-200', N'TOP', N'7/1/2014 12:00:00 AM', N'BL220920148', N'7/1/2014 12:00:00 AM', N'7/1/2014 12:00:00 AM', N'2620', N'1890.00', N'378.00', N'17', N'26.22', N'Truck', N'1/4/2015 1:02:31 PM', N'Admin')
INSERT [dbo].[SalesinfoDetailsBack] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [CurrentDate], [UserName]) VALUES (N'7489dc8b-4c9b-49ba-88f5-fda66981ba7c', N'23BDO-02434', N'73066-203-41-463-001', N'830-1163-5545-200', N'TOP', N'27-11-2014', N'BL-1211201401', N'22-09-2014', N'27-11-2014', N'2620', N'1890', N'378', N'17', N'26.22', N'Truck', N'12/1/2014 11:38:41 AM', N'ssp')
/****** Object:  Table [dbo].[SalesinfoDetails]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesinfoDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[OrderNo] [nvarchar](150) NULL,
	[StyleNo] [nvarchar](150) NULL,
	[ProductType] [nvarchar](100) NULL,
	[ShipbordingDate] [nvarchar](50) NULL,
	[BLNo] [nvarchar](max) NOT NULL,
	[BLDate] [nvarchar](50) NULL,
	[ETADate] [nvarchar](50) NULL,
	[RevQty] [nvarchar](50) NULL,
	[RevisedFOBValue] [nvarchar](100) NULL,
	[RevisedCMValue] [nvarchar](100) NULL,
	[CartonQty] [nvarchar](50) NULL,
	[CBMValue] [nvarchar](50) NULL,
	[VesselName] [nvarchar](100) NULL,
	[FinalQty] [nvarchar](50) NULL,
	[FinalFOB] [nvarchar](50) NULL,
	[FinalCM] [nvarchar](50) NULL,
	[Remarks] [nvarchar](max) NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedOn] [nvarchar](50) NULL,
 CONSTRAINT [PK_SalesinfoDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SalesinfoDetails] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [FinalQty], [FinalFOB], [FinalCM], [Remarks], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'7f0a1bf0-6a92-460a-bbb5-37f4f4b29334', N'23bdo-05052', N'73066-203-41-463-001', N'830-1163-5545-200', N'TOP', NULL, N'BL220920141', N'01-12-2015', N'01-12-2015', N'2620', N'1890.00', N'378.00', N'17', N'26.22', N'Truck', N'2600', N'1800.00', N'360.00', N'22-02-2015', N'1/12/2015 9:02:45 AM', N'Admin', N'Admin', N'3/4/2015 10:56:30 AM')
INSERT [dbo].[SalesinfoDetails] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [FinalQty], [FinalFOB], [FinalCM], [Remarks], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'513b4a06-6956-4aa2-a09a-83b21ac7fb64', N'23BDO-04853', N'73066-203-41-463-001', N'AAAAAA', N'TOP', N'17-01-2015', N'BL220920141', N'17-01-2015', N'17-01-2015', N'2620', N'1890.00', N'378.00', N'17', N'26.22', N'None RECORD', NULL, NULL, NULL, NULL, N'12/6/2014 3:59:51 PM', N'ssp', NULL, NULL)
INSERT [dbo].[SalesinfoDetails] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [FinalQty], [FinalFOB], [FinalCM], [Remarks], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'9e1ce805-398b-4ea7-b0b4-9a01cd5d41b6', N'23BDO-04854', N'20718', N'830-1163-5545-200', N'TOP', N'01-08-2014', N'BL-1211201402', N'01-07-2014', N'01-08-2014', N'2620', N'1890.00', N'378.00', N'17', N'26.80', N'Truck', NULL, NULL, NULL, NULL, N'12/1/2014 11:38:41 AM', N'Soma', NULL, NULL)
INSERT [dbo].[SalesinfoDetails] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [FinalQty], [FinalFOB], [FinalCM], [Remarks], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'42250269-2511-44c1-9733-a8f571046fe4', N'23BDO-04849', N'73066-203-41-463-001', N'830-1163-5545-200', N'TOP', NULL, N'BL220920142', N'01-07-2014', N'01-07-2014', N'2620', N'1890.00', N'378.00', N'17', N'26.22', N'Truck', NULL, NULL, NULL, NULL, N'1/6/2015 3:24:18 PM', N'Admin', NULL, NULL)
INSERT [dbo].[SalesinfoDetails] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [FinalQty], [FinalFOB], [FinalCM], [Remarks], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'9660e3a7-bd23-42ef-8b2a-d806f21feb38', N'23BDO-04848', N'73066-203-41-463-001', N'830-1163-5545-200', N'TOP', N'01-07-2014', N'BL220920148', N'01-07-2014', N'01-07-2014', N'2620', N'1890.00', N'378.00', N'17', N'26.22', N'Truck', NULL, NULL, NULL, NULL, N'1/4/2015 1:02:31 PM', N'Admin', NULL, NULL)
INSERT [dbo].[SalesinfoDetails] ([ID], [InvoiceNo], [OrderNo], [StyleNo], [ProductType], [ShipbordingDate], [BLNo], [BLDate], [ETADate], [RevQty], [RevisedFOBValue], [RevisedCMValue], [CartonQty], [CBMValue], [VesselName], [FinalQty], [FinalFOB], [FinalCM], [Remarks], [CurrentDate], [UserName], [ModifiedBy], [ModifiedOn]) VALUES (N'7489dc8b-4c9b-49ba-88f5-fda66981ba7c', N'23BDO-02434', N'73066-203-41-463-001', N'830-1163-5545-200', N'TOP', N'27-11-2014', N'BL-1211201401', N'22-09-2014', N'27-11-2014', N'2620', N'1890', N'378', N'17', N'26.22', N'Truck', NULL, NULL, NULL, NULL, N'12/1/2014 11:38:41 AM', N'ssp', NULL, NULL)
/****** Object:  Table [dbo].[SalesExcel]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesExcel](
	[ID] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [nvarchar](max) NULL,
	[StyleNo] [nvarchar](max) NULL,
	[ShipbordingDate] [nvarchar](50) NULL,
	[BLNo] [nvarchar](max) NULL,
	[BLDate] [nvarchar](50) NULL,
	[ETADate] [nvarchar](50) NULL,
	[VesselName] [nvarchar](max) NULL,
 CONSTRAINT [PK_SalesExcel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesContract]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[NotifyDetails]    Script Date: 03/08/2015 11:37:40 ******/
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
INSERT [dbo].[NotifyDetails] ([ID], [NotifyNo], [NotifyName]) VALUES (N'db7b1986-f675-423a-91bc-7467c6bf39d6', N'BRAND-HK', N'HOPLUN BRANDS LIMITED, 32/F, 9 WING HONG STREET, CHEUNG SHA WAN,KOWLOON, HONG KONG')
INSERT [dbo].[NotifyDetails] ([ID], [NotifyNo], [NotifyName]) VALUES (N'3b9ed6fa-3bb5-45ed-bf19-7709e2ed453d', N'MAT001', N'MATALAN RETAIL LTD.
GILLIBRANDS ROAD
SKELMERSDALE,
WEST LANCE, WN8 9TB,U.K.')
INSERT [dbo].[NotifyDetails] ([ID], [NotifyNo], [NotifyName]) VALUES (N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'CARR-BELGIUM', N'CARREFOUR BELGIUM SA
AVENUE DES OLYMPIADES,20B
OLYMPIADENLAAN-EVERE 3
BP 500 1140 BRUXELLES, BELGIUM')
INSERT [dbo].[NotifyDetails] ([ID], [NotifyNo], [NotifyName]) VALUES (N'5fdc69f2-414c-4b68-aae6-c180110a253a', N'HM001', N'H & M Hennes & Mauritz GBC AB
Rungedamm 38
DE-21035, Hamburg
Germany')
INSERT [dbo].[NotifyDetails] ([ID], [NotifyNo], [NotifyName]) VALUES (N'c7a0aeb8-716d-4ef4-927f-e2ec1b2cd8df', N'HM GM', N'H & M Hennes & Mauritz GBC AB Rungedamm 38 DE-21035, Hamburg Germany')
/****** Object:  Table [dbo].[LogisticsInfo]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogisticsInfo](
	[ID] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[ReceitableAmount] [nvarchar](20) NULL,
	[DocProcessFee] [nvarchar](20) NULL,
	[SSCertificateFee] [nvarchar](20) NULL,
	[SealLockCharge] [nvarchar](20) NULL,
	[AgencyCommission] [nvarchar](20) NULL,
	[DocumentaionCharge] [nvarchar](20) NULL,
	[TransportationCharge] [nvarchar](20) NULL,
	[FactoryLoadingFee] [nvarchar](20) NULL,
	[ForwarderWHUFee] [nvarchar](20) NULL,
	[DemurrageDUNLoadingFee] [nvarchar](20) NULL,
	[CFSMixedCargoLoadingFee] [nvarchar](20) NULL,
	[CustomsMiscCharge] [nvarchar](20) NULL,
	[CustomsRemarkCharge] [nvarchar](20) NULL,
	[CargoHODate] [nvarchar](50) NULL,
	[DeadlineSubmission] [nvarchar](50) NULL,
	[BillrcvdDate] [nvarchar](50) NULL,
	[LStatus] [nvarchar](50) NULL,
	[ForwarderName] [nvarchar](max) NULL,
	[TotalFees] [nvarchar](50) NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_LogisticsInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LogisticsInfo] ([ID], [InvoiceNo], [ReceitableAmount], [DocProcessFee], [SSCertificateFee], [SealLockCharge], [AgencyCommission], [DocumentaionCharge], [TransportationCharge], [FactoryLoadingFee], [ForwarderWHUFee], [DemurrageDUNLoadingFee], [CFSMixedCargoLoadingFee], [CustomsMiscCharge], [CustomsRemarkCharge], [CargoHODate], [DeadlineSubmission], [BillrcvdDate], [LStatus], [ForwarderName], [TotalFees], [CurrentDate], [UserName]) VALUES (N'c0ce65eb-1e20-4322-8051-6300e3a109de', N'23BDO-04848', N'10', N'295.00', N'300.00', N'180.00', N'1200.00', N'1500.00', N'2900.00', NULL, N'128.00', NULL, NULL, NULL, N'10.00', N'01-01-2015', N'08-01-2015', N'07-01-2015', N'Received', N'TML', N'6523.00', N'2/16/2015 8:40:36 AM', N'Admin')
INSERT [dbo].[LogisticsInfo] ([ID], [InvoiceNo], [ReceitableAmount], [DocProcessFee], [SSCertificateFee], [SealLockCharge], [AgencyCommission], [DocumentaionCharge], [TransportationCharge], [FactoryLoadingFee], [ForwarderWHUFee], [DemurrageDUNLoadingFee], [CFSMixedCargoLoadingFee], [CustomsMiscCharge], [CustomsRemarkCharge], [CargoHODate], [DeadlineSubmission], [BillrcvdDate], [LStatus], [ForwarderName], [TotalFees], [CurrentDate], [UserName]) VALUES (N'04b701d7-4c5c-4c42-8f70-a82a3ced0637', N'23BDO-04849', N'95', N'295.00', N'300.00', N'180.00', N'1200.00', N'1500.00', N'29000.00', NULL, N'128.00', NULL, NULL, NULL, N'10.00', N'01-01-2015', N'08-01-2015', N'07-01-2015', N'Received', N'TML', N'32708.00', N'2/14/2015 9:50:49 AM', N'Admin')
/****** Object:  Table [dbo].[Location]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[LicenceVerify]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenceVerify](
	[ID] [uniqueidentifier] NOT NULL,
	[LicenceKey] [nvarchar](max) NOT NULL,
	[KeyDate] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LicenceVerify] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LicenceVerify] ([ID], [LicenceKey], [KeyDate]) VALUES (N'7ea177a2-bc6b-4f30-b3fa-e624e31a1a67', N'MTIz', N'26-01-2014')
/****** Object:  Table [dbo].[Invoiceinfo]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[Categoryitem]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Table [dbo].[ExportformDetails]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExportformDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[ItemName] [nvarchar](max) NULL,
	[ContractNo] [nvarchar](max) NOT NULL,
	[ContractDate] [nvarchar](20) NOT NULL,
	[MasterContractNo] [nvarchar](50) NULL,
	[MasterContractDate] [nvarchar](50) NULL,
	[TTNo] [nvarchar](50) NOT NULL,
	[TTDate] [nvarchar](20) NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[InvoiceDate] [nvarchar](50) NOT NULL,
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
	[EPNo] [nvarchar](20) NULL,
	[BLNo] [nvarchar](max) NULL,
	[BLDate] [nvarchar](20) NULL,
	[ExFactoryDate] [nvarchar](20) NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_ExportformDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'b248173f-913a-4bea-bee4-1335e9c6bed9', N'LADIES KNITTED BRA, BRIEF', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02437', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'5', N'10.30', N'2.06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/22/2014 12:42:19 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'be05c92c-81c1-4a2b-8bb5-271a918b7390', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04850', N'14-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', NULL, NULL, NULL, N'25-10-2014', N'11/1/2014 1:03:38 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'81caeb07-1348-40de-bcaf-2936c27dc08c', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04855', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'4', N'1890.00', N'378.00', N'1830.00', N'60.00', N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'BL220920141', N'25-10-2014', N'12/18/2014 9:49:00 AM', N'Admin', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'fb925ad9-f91d-49dd-9cec-2a4210da504c', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04849', N'14-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'8', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', NULL, NULL, NULL, N'25-10-2014', N'10/29/2014 9:05:09 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'b8371141-77ca-4f90-8024-2c7c3adfafa3', N'LADIES KNITTED BRIEF', N'199-P-111', N'09-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23bdo-05052', N'21-10-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'2748', N'1', N'1', N'1101.00', N'220.20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/22/2014 3:25:48 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'356edf4a-6246-4cd1-b520-3274ccb47baa', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04848', N'14-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', NULL, NULL, NULL, N'25-10-2014', N'10/25/2014 12:56:15 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'4465ad08-9cea-4064-895b-39a628f8f524', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04854', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'BL220920141', N'25-10-2014', N'11/18/2014 8:41:54 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'3f969593-7151-426a-b89e-4687e178e85e', N'LADIES KNITTED BRA, BRIEF', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02435', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'5', N'1051.00', N'210.20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/21/2014 2:54:39 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'bfc8e107-b730-4707-93d5-47117773ac0e', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04853', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'22-09-2014', N'25-10-2014', N'11/17/2014 9:18:21 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'70209447-4f17-468b-882e-53c3163c7383', N'LADIES KNITTED T-SHIRT, WIRE, PUSH UP, BALCONY, BANDEAU BRA, DEEP PLUNGE, CROP TOP, BRAZILIAN, BRIEF, CHEEKY HIPSTER, STRING', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02450', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'5', N'1051.00', N'210.20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'11/6/2014 3:38:44 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'05355839-8e50-4e83-ae62-56d8132b2a55', N'LADIES KNITTED BRA, BRIEF', N'044-Q-003', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02438', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'778', N'1', N'1', N'1017.00', N'203.40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/22/2014 12:48:45 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'bf64ea74-c20b-4e52-bbaa-68a80c7cd25f', N'LADIES KNITTED BRIEF', N'199-P-111', N'09-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23bdo-05051', N'21-10-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'2748', N'1', N'5', N'5770.80', N'1154.16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/22/2014 3:21:07 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'5616ad22-a6c0-4962-9175-6b2aa5284606', N'LADIES KNITTED BRAAAA', N'199-P-105', N'11-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04837', N'14-10-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'd353c1fa-9d21-435c-baf3-f98357069fc5', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121090', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'3480', N'1', N'5', N'12528.00', N'2505.60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/16/2014 1:55:49 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'42eacac2-5675-494d-aedc-78df43a02258', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'12-06-2014', N'23BDO-00001', N'04-10-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'140.00', N'28.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'BL220920141', N'25-10-2014', N'1/7/2015 2:27:20 PM', N'Admin', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'37e41fcf-d289-4344-a43c-7c2eeb7e4479', N'LADIES KNITTED TANGAa', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04847', N'14-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', NULL, N'26570731-7900-417b-9534-5cf7ad1b1a42', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/16/2014 11:14:59 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'7a3b729d-358f-4974-83ea-8f45fc73a6ab', N'LADIES KNITTED T-SHIRT', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02453', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'26570731-7900-417b-9534-5cf7ad1b1a42', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'8', N'1051.00', N'210.20', NULL, NULL, N'EXP-1211201401', N'12-11-2014', N'EXP1211201401', N'BL-1211201401', N'BL-1211201401', N'12-11-2014', N'1/8/2015 9:14:06 AM', N'Admin', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'10acf977-c329-4efd-b6a4-8fb002134440', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04851', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'22-09-2014', N'25-10-2014', N'11/1/2014 2:15:35 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'd0d966b1-cf8d-4c94-a649-90a334af3973', N'LADIES KNITTED T-SHIRT', N'008-P-0143', N'07-04-2014', N' ', N' ', N'IT06591406110030', N'18-11-2014', N'23BDO-00054', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'19529', N'1', N'2', N'11412.00', N'2282.40', N'11000.00', N'412.00', NULL, NULL, NULL, NULL, NULL, NULL, N'2/24/2015 2:24:45 PM', N'Admin', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'5da55620-0916-4913-b58d-9b05eda2ea98', N'LADIES KNITTED BRA, BRIEF', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02436', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'5', N'1051.00', N'210.20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/22/2014 11:27:54 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'3405bca6-5ea0-41f9-80cc-9b8d10b8cb32', N'LADIES KNITTED T-SHIRT, WIRE, PUSH UP, BALCONY, BANDEAU BRA, DEEP PLUNGE, CROP TOP, BRAZILIAN, BRIEF, CHEEKY HIPSTER, STRING', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02452', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'26570731-7900-417b-9534-5cf7ad1b1a42', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'8', N'1051.00', N'210.20', NULL, NULL, N'EXP-1211201401', N'12-11-2014', N'EXP1211201401', N'BL-1211201401', N'BL-1211201401', N'12-11-2014', N'11/17/2014 9:11:31 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'ec96be44-5472-453a-a1d5-af2fdd95b95b', N'LADIES KNITTED T-SHIRT, WIRE, PUSH UP, BALCONY, BANDEAU BRA, DEEP PLUNGE, CROP TOP, BRAZILIAN, BRIEF, CHEEKY HIPSTER, STRING', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02451', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'5', N'12.00', N'2.40', NULL, NULL, N'EXP-1211201401', N'12-11-2014', N'EXP1211201401', N'BL-1211201401', N'BL-1211201401', N'12-11-2014', N'11/12/2014 1:33:33 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'448cba2b-c955-442f-8803-e41cb67c239a', N'LADIES KNITTED PUSH UP BRA', N'008-P-0143, 0144, 0145, 0146, 0147', N'01-09-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02434', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'3b9ed6fa-3bb5-45ed-bf19-7709e2ed453d', N'62121010', NULL, N'9768c254-dd5c-47f5-ba6d-f6a4d22276c2', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'19528', N'1', N'5', N'85539.80', N'17107.96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/21/2014 1:56:37 PM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'cb357dae-ab2b-477f-ac20-e64ae7890c03', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'01-06-2014', N'23BDO-04852', N'04-10-2014', N'8c5486a5-d434-4d89-b03d-9eae6816fd32', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N'61082200', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'1890.00', N'378.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'22-09-2014', N'25-10-2014', N'11/16/2014 8:59:02 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'bbf089ac-ab67-4cbd-af7b-edde6d438297', N'LADIES KNITTED T-SHIRT', N'008-P-0143', N'07-04-2014', N'HLAP-14-BR-02A', N'22-02-2015', N'IT06591406110030', N'18-11-2014', N'23BDO-00053', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'19529', N'1', N'2', N'11412.00', N'2282.40', N'11000.00', N'412.00', NULL, NULL, NULL, NULL, NULL, NULL, N'2/24/2015 2:35:12 PM', N'Admin', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'7f8de39b-1315-482d-bccf-f2967dd41949', N'LADIES KNITTED T-SHIRT', N'008-P-0143', N'07-04-2014', N'HLAP-14-BR-01A', N'22-05-2014', N'IT06591406110030', N'18-11-2014', N'23BDO-02454', N'07-04-2014', N'265d1ddd-483c-4433-86ea-1758e7c4f7f6', N'b5ea6dd7-6e9b-4342-a083-27a781a8f570', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'19529', N'1', N'2', N'11412.00', N'2282.40', N'11000.00', N'412.00', NULL, NULL, NULL, NULL, NULL, NULL, N'1/8/2015 9:18:46 AM', N'Admin', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'75434962-4c90-4caa-86a2-f2976b7c9fc2', N'LADIES KNITTED PUSH UP BRA', N'008-P-0143, 0144, 0145, 0146, 0147', N'01-09-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02433', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'3b9ed6fa-3bb5-45ed-bf19-7709e2ed453d', N'62121010', NULL, N'9768c254-dd5c-47f5-ba6d-f6a4d22276c2', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'19528', N'1', N'2', N'85539.80', N'17107.96', N'85439.80', N'100.00', NULL, NULL, NULL, NULL, NULL, NULL, N'10/21/2014 9:13:44 AM', N'PVT', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'4780e9a9-4fd4-4c9e-a257-fa61bbf25b58', N'LADIES KNITTED TANGAAAA', N'199-P-112', N'09-04-2014', NULL, NULL, N'IT06591405310006', N'12-06-2014', N'23BDO-00011', N'04-10-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'40314773-3797-481b-b0a8-6cda51c0d5b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'61082200', N' ', N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'900', N'1', N'5', N'140.00', N'28.00', NULL, NULL, N'BD2510201401', N'25-10-2014', N'EXP1104201401', N'BL220920141', N'BL220920141', N'25-10-2014', N'2/24/2015 2:19:27 PM', N'Admin', NULL)
INSERT [dbo].[ExportformDetails] ([ID], [ItemName], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate], [ExporterID], [ConsigneeID], [NotifyID], [HSCode], [HSCodesecond], [TransportID], [DestinationID], [Section], [Unit], [Quantity], [Currency], [Incoterm], [FOBValue], [CMValue], [CPTFOBValue], [Freight], [ExpNo], [ExpDate], [EPNo], [BLNo], [BLDate], [ExFactoryDate], [CurrentDate], [UserName], [Status]) VALUES (N'80d7597a-6b32-4bfa-ac22-fcb60c05b090', N'LADIES KNITTED BRA, BRIEF', N'008-P-0143', N'07-04-2014', NULL, NULL, N'IT06591406110030', N'12-06-2014', N'23BDO-02439', N'07-04-2014', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'8b94af59-0267-43d2-8114-4728657fa6b4', N'13fef8b1-3faa-4fad-ba7d-ac9dcb9b3e1a', N'62121010', NULL, N'e98d1ed2-cc8f-4479-9e8c-61c9f72f128d', N'70b2b1aa-856c-473b-b80f-23cc5b245f90', N'2', N'55', N'110', N'1', N'5', N'10.30', N'2.06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10/22/2014 12:59:44 PM', N'PVT', NULL)
/****** Object:  StoredProcedure [dbo].[spGetCategoryRecord]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetBillofEntryRecord]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetBillingImportExcelRecord]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 01/06/2014,,>
-- Description:	<From Excel File Data Insertion For Sales Information,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetBillingImportExcelRecord]
	-- Add the parameters for the stored procedure here
	 @pInvoiceNo            AS nvarchar(MAX)
	,@pCourierNo            AS nvarchar(150)
	,@pCourierDate          AS nvarchar(50)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF (NOT EXISTS(SELECT ID, InvoiceNo from [Commercial].[dbo].[BillingExcel] where InvoiceNo=@pInvoiceNo))
    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[BillingExcel]
           ([InvoiceNo]
           ,[CourierNo]
           ,[CourierDate]
                            )           
     VALUES
           ( @pInvoiceNo
           , @pCourierNo 
           , @pCourierDate
                            )
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUDinfoRecord]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetSumqtytotalvalue]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetSalesImportExcelRecord]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 01/06/2014,,>
-- Description:	<From Excel File Data Insertion For Sales Information,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetSalesImportExcelRecord]
	-- Add the parameters for the stored procedure here
	 @pInvoiceNo            AS nvarchar(MAX)
	,@pStyleNo              AS nvarchar(MAX)
	,@pBLNo                 AS nvarchar(MAX)
	,@pBLDate               AS nvarchar(11)
	,@pETADate              AS nvarchar(11)
	,@pShipbordingDate      AS nvarchar(11)
	,@pVesselName           AS nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF (NOT EXISTS(SELECT ID, InvoiceNo from [Commercial].[dbo].[SalesExcel] where InvoiceNo=@pInvoiceNo))
    -- Insert statements for procedure here
	INSERT INTO [Commercial].[dbo].[SalesExcel]
           ([InvoiceNo]
           ,[StyleNo]
           ,[BLNo]
           ,[BLDate]
           ,[ETADate]
           ,[ShipbordingDate]
           ,[VesselName]        )           
     VALUES
           (@pInvoiceNo
           ,@pStyleNo
           ,@pBLNo 
           ,@pBLDate
           ,@pETADate
           ,@pShipbordingDate 
           ,@pVesselName        )
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSalesContractRecord]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetLocationRecord]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 03/08/2015 11:37:40 ******/
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
	[Verified] [nvarchar](max) NULL,
 CONSTRAINT [PK_USER_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'495da323-5f72-45c5-a5fa-151542a6a29b', N'Audit', N'123', N'Audit', N'audit@hoplunbd.com', 1, N'12/28/2014 9:38:23 AM', N'fd3b2532-1674-457b-9a4f-7569feb4041e', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'63dcafb0-e77b-49c4-9010-15df00db2c33', N'ship', N'123', N'Shipping', N'ship@hoplunbd.com', 1, N'12/3/2014 9:38:23 AM', N'0e346a48-854d-47cf-92f9-ffae18f03c20', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'f0e70aa2-6dc2-466f-b645-41650761ed65', N'ssp', N'123', N'ShipNsales', N'shipnsales@hoplunbd.com', 1, N'12/5/2014 9:38:23 AM', N'86290895-cd0b-48a6-80c2-d44ff10a1995', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'9604cb9f-818c-4dd6-8aa1-68f4bc3397ab', N'BIPLOB_BARUA', N'hop@123', N'Biplob Barua', N'Biplob.barua@hoplun.com', 1, N'2/14/2015 12:00:00 AM', N'15fee324-681c-4f32-8ea0-d75cfb03dde0', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'740e71f3-106c-4306-8dc4-6be5e851d5fd', N'PVT', N'321', N'Private', N'pvt@hoplunbd.com', 1, N'12/7/2014 9:38:23 AM', N'86b7b37f-da63-474d-a714-34584b70e7b2', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'f30c584e-f4a1-442b-ba93-6f1ae3cc5f06', N'Soma', N'123', N'SalesTeam', N'sales@hoplunbd.com', 1, N'12/1/2014 9:38:23 AM', N'c80312b2-6a4e-48b6-9ff1-6f18578605bd', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'5be105b3-d432-4c0f-bee0-7f0b73a4d33d', N'hasib', N'hasib', N'hasib', N'hasib@hoplunbd.com', 1, N'1/26/2015 12:00:00 AM', N'4df62498-2bad-4172-ae7c-57ed7ef2629b', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'1eb4393c-f31a-4857-a996-9543d84fec23', N'EXP', N'123', N'Administrator', N'admin@hoplunbd.com', 1, N'12/7/2014 9:38:23 AM', N'4df62498-2bad-4172-ae7c-57ed7ef2629b', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'af36c3c2-2640-44b8-abfa-c14b3c2e39e9', N'Admin', N'123', N'Administrator', N'admin@hoplunbd.com', 1, N'1/1/2015 12:04:52 PM', N'4df62498-2bad-4172-ae7c-57ed7ef2629b', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'b9a887ae-deb8-44d9-8a6c-ca688b09a186', N'rpt', N'123', N'Reports', N'shaikat.hossain@hoplun.com', 1, N'3/4/2015 12:00:00 AM', N'6a9af935-ff6d-4574-86f8-d8df2caba289', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID], [Verified]) VALUES (N'34753bac-fc04-4ab7-a527-d36b6310f3cf', N'Export', N'123', N'Export All Information', N'hasib.aziz@hoplun.com', 1, N'1/21/2015 12:00:00 AM', N'd7a9e26b-ae44-40b6-88f4-cd0793f7f42e', NULL)
/****** Object:  StoredProcedure [dbo].[spSetSalesPostRecord]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 05/06/2014,,>
-- Description:	<Post Data to another table,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSetSalesPostRecord]
	-- Add the parameters for the stored procedure here
	-- @pInvoiceNo            AS nvarchar(MAX)
	 

AS
--DECLARE @pInvoiceNo= (SELECT A.InvoiceNo FROM dbo.ExportformDetails AS A, dbo.SalesinfoDetails AS B WHERE A.InvoiceNo=B.InvoiceNo)

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	  IF (EXISTS(SELECT A.InvoiceNo FROM SalesinfoDetails AS A, SalesExcel AS B WHERE A.InvoiceNo=B.InvoiceNo))
       BEGIN
        UPDATE SalesinfoDetails SET 
          SalesinfoDetails.StyleNo=SalesExcel.StyleNo
	    , SalesinfoDetails.ShipbordingDate=SalesExcel.ShipbordingDate 
	    , SalesinfoDetails.BLNo=SalesExcel.BLNo
	    , SalesinfoDetails.BLDate=SalesExcel.BLDate
	    , SalesinfoDetails.ETADate=SalesExcel.ETADate
	    , SalesinfoDetails.VesselName=SalesExcel.VesselName
	    from SalesinfoDetails INNER JOIN SalesExcel ON  SalesinfoDetails.InvoiceNo=SalesExcel.InvoiceNo 
			--After Insertion to ExcelImport table delete all the Importtable Data.
	    DELETE FROM [Commercial].[dbo].[SalesExcel]
	   END
	  ELSE
	     SELECT * FROM SalesExcel
	   
END
GO
/****** Object:  StoredProcedure [dbo].[spSetPostdataRecord]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spSetBillingPostRecord]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 05/06/2014,,>
-- Description:	<Post Data to another table,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSetBillingPostRecord]
	-- Add the parameters for the stored procedure here
	-- @pInvoiceNo            AS nvarchar(MAX)
	 

AS
--DECLARE @pInvoiceNo= (SELECT A.InvoiceNo FROM dbo.ExportformDetails AS A, dbo.SalesinfoDetails AS B WHERE A.InvoiceNo=B.InvoiceNo)

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	  IF (EXISTS(SELECT A.InvoiceNo FROM BillingInfo AS A, BillingExcel AS B WHERE A.InvoiceNo=B.InvoiceNo))
       BEGIN
        UPDATE BillingInfo SET 
	      BillingInfo.CourierNo=BillingExcel.CourierNo 
	    , BillingInfo.CourierDate=BillingExcel.CourierDate	   
	    from BillingInfo INNER JOIN BillingExcel ON  BillingInfo.InvoiceNo=BillingExcel.InvoiceNo 
			--After Insertion to ExcelImport table delete all the Importtable Data.
	    DELETE FROM [Commercial].[dbo].[BillingExcel]
	   END
	  ELSE
	     SELECT * FROM BillingExcel
	   
END
GO
/****** Object:  Table [dbo].[TTInformation]    Script Date: 03/08/2015 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTInformation](
	[ID] [uniqueidentifier] NOT NULL,
	[ExporterDetailsID] [uniqueidentifier] NOT NULL,
	[TTNumber] [nvarchar](100) NOT NULL,
	[TTAmount] [nvarchar](100) NOT NULL,
	[BankName] [nvarchar](100) NULL,
	[TTDate] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TTInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TTInformation] ([ID], [ExporterDetailsID], [TTNumber], [TTAmount], [BankName], [TTDate]) VALUES (N'0c1ecaba-9fab-4e85-81a8-0017074d0280', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'IT06591406110031', N'5000', N'SCB', N'24-01-2015')
INSERT [dbo].[TTInformation] ([ID], [ExporterDetailsID], [TTNumber], [TTAmount], [BankName], [TTDate]) VALUES (N'c7c0eb1c-56cf-4ccd-9efb-0b002f473bdb', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'IT06591406110037', N'50000', N'SCB', N'20-12-2014')
INSERT [dbo].[TTInformation] ([ID], [ExporterDetailsID], [TTNumber], [TTAmount], [BankName], [TTDate]) VALUES (N'07d42543-2378-4048-998b-1396af23fb16', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'IT06591405310006', N'7000', N'SCB', N'12-06-2014')
INSERT [dbo].[TTInformation] ([ID], [ExporterDetailsID], [TTNumber], [TTAmount], [BankName], [TTDate]) VALUES (N'f6d8513d-1c1b-47b3-8511-4d5b61c11eb4', N'f78cab48-1a3f-4cd7-b99c-026e8597077b', N'IT06591406110030', N'37000', NULL, N'18-11-2014')
/****** Object:  StoredProcedure [dbo].[spGetInvoiceinfoRecord]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetInvoiceBycatnameexcel]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetInvoiceBycatname]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetExcelinfoRecord]    Script Date: 03/08/2015 11:37:41 ******/
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
/****** Object:  StoredProcedure [dbo].[spGetCustomsAuditReportRecord]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Md. Hasib-Al-Aziz,,Name>
-- Create date: <25/12/2014,,>
-- Description:	<Customs Audit Report Store Procedure for Commercial Department,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetCustomsAuditReportRecord]
                @pStartDate  AS NVARCHAR(MAX)
		      , @pEndDate  AS NVARCHAR(MAX)

AS	

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
IF(@pStartDate!='' AND @pEndDate!='')
 BEGIN
    -- Insert statements for procedure here
	SELECT 
	--EXF.ID
	UPPER(EXF.InvoiceNo) AS InvoiceNo
	--, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, dbo.CustomDateFormat(InvoiceDate) AS InvoiceDate
	, EXF.ItemName
	, EXF.ContractNo
	--, EXF.ContractDate
	, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate
	--, EXF.ExporterID, EXF.TransportID, EXF.DestinationID
	, EXF.Quantity
	--,  EXF.Incoterm
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm
	, EXF.FOBValue, EXF.CMValue, EXF.Freight
	--, EXF.ConsigneeID
	, SI.EPNo
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	, SI.EXPNo
	--, EXPDate=CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6)
	, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	, SI.CnFAgent, SI.TransportID AS RTransport, SI.SBNo
	--, SI.SBDate
	, dbo.CustomDateFormat(SI.SBDate) AS SBDate
	, SI.VesselNo
	--, SI.CargorptDate
	, dbo.CustomDateFormat(SI.CargorptDate) AS CargorptDate
	, SD.OrderNo, SD.StyleNo, SD.ProductType
	--, SD.ShipbordingDate
	, dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
	, SD.BLNo
	--, SD.BLDate
	, dbo.CustomDateFormat(SD.BLDate) AS BLDate
	--, SD.ETADate
	, dbo.CustomDateFormat(SD.ETADate) AS ETADate
	, SD.RevQty, SD.RevisedFOBValue, SD.RevisedCMValue, SD.CartonQty, SD.CBMValue, SD.VesselName
	,  CA.IRegisterNo, CA.IBond, CA.TotalFabric, CA.AdjustReg, CA.AdjustRegPage
	,  ExporterDetails.ExporterNo
	--, ExporterDetails.ExporterName, ExporterDetails.RegDetails
	,  DestCountry.CountryCode, DestCountry.Name
	,  Transport.Name AS TName, Transport.Port AS TPort
	,  ConsigneeDetails.ConsigneeNo
	--, ConsigneeDetails.ConsigneeName 
	FROM    ExportformDetails AS EXF  WITH (NOLOCK)
	INNER JOIN  SalesinfoDetails AS SD WITH (NOLOCK) ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI WITH (NOLOCK) ON EXF.InvoiceNo = SI.InvoiceNo 	
	INNER JOIN  CustomAuditDetails AS CA WITH (NOLOCK) ON EXF.InvoiceNo = CA.InvoiceNo	
	INNER JOIN  ExporterDetails WITH (NOLOCK) ON  EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport WITH (NOLOCK) ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry WITH (NOLOCK) ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails WITH (NOLOCK) ON EXF.ConsigneeID = ConsigneeDetails.ID   
    WHERE convert(date,SI.ExFactoryDate,103) BETWEEN convert(date, @pStartDate, 103) AND convert(date, @pEndDate, 103)
	AND EXF.Status is null 

	ORDER BY EXF.InvoiceNo, ExFactoryDate ASC
	
END
ELSE
 BEGIN
   -- Insert statements for procedure here
	SELECT 
	--EXF.ID
	UPPER(EXF.InvoiceNo) AS InvoiceNo
	--, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, dbo.CustomDateFormat(InvoiceDate) AS InvoiceDate
	, EXF.ItemName
	, EXF.ContractNo
	--, EXF.ContractDate
	, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate
	--, EXF.ExporterID, EXF.TransportID, EXF.DestinationID
	, EXF.Quantity
	--,  EXF.Incoterm
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm
	, EXF.FOBValue, EXF.CMValue, EXF.Freight
	--, EXF.ConsigneeID
	, SI.EPNo
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	, SI.EXPNo
	--, EXPDate=CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6)
	, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	, SI.CnFAgent, SI.TransportID AS RTransport, SI.SBNo
	--, SI.SBDate
	, dbo.CustomDateFormat(SI.SBDate) AS SBDate
	, SI.VesselNo
	--, SI.CargorptDate
	, dbo.CustomDateFormat(SI.CargorptDate) AS CargorptDate
	, SD.OrderNo, SD.StyleNo, SD.ProductType
	--, SD.ShipbordingDate
	, dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
	, SD.BLNo
	--, SD.BLDate
	, dbo.CustomDateFormat(SD.BLDate) AS BLDate
	--, SD.ETADate
	, dbo.CustomDateFormat(SD.ETADate) AS ETADate
	, SD.RevQty, SD.RevisedFOBValue, SD.RevisedCMValue, SD.CartonQty, SD.CBMValue, SD.VesselName
	,  CA.IRegisterNo, CA.IBond, CA.TotalFabric, CA.AdjustReg, CA.AdjustRegPage
	,  ExporterDetails.ExporterNo
	--, ExporterDetails.ExporterName, ExporterDetails.RegDetails
	,  DestCountry.CountryCode, DestCountry.Name
	,  Transport.Name AS TName, Transport.Port AS TPort
	,  ConsigneeDetails.ConsigneeNo
	--, ConsigneeDetails.ConsigneeName 
	FROM    ExportformDetails AS EXF  WITH (NOLOCK)
	INNER JOIN  SalesinfoDetails AS SD WITH (NOLOCK) ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI WITH (NOLOCK) ON EXF.InvoiceNo = SI.InvoiceNo 	
	INNER JOIN  CustomAuditDetails AS CA WITH (NOLOCK) ON EXF.InvoiceNo = CA.InvoiceNo	
	INNER JOIN  ExporterDetails WITH (NOLOCK) ON  EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport WITH (NOLOCK) ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry WITH (NOLOCK) ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails WITH (NOLOCK) ON EXF.ConsigneeID = ConsigneeDetails.ID  
	Where EXF.Status is null 

	ORDER BY EXF.InvoiceNo, ExFactoryDate ASC
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserRecord]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 05/06/2014,,>
-- Description:	<Post Data to another table,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetUserRecord]
	-- Add the parameters for the stored procedure here	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [ID]
      ,[UserName]
      ,[Password]
      ,[FullName]
      ,[Email]
      ,[IsActive]      
      ,dbo.fnFormatDate (Created, 'DD-MM-YYYY') AS Created
      ,[GroupID]
      ,[Verified]
  FROM [Commercial].[dbo].[User]
END
GO
/****** Object:  StoredProcedure [dbo].[spGetInvoiceSearchByNoApp]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<Using Invoice and Category Search,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetInvoiceSearchByNoApp] 
	-- Add the parameters for the stored procedure here
	  @pInvoiceno  AS NVARCHAR(MAX)
	, @pConsignee  AS NVARCHAR(MAX)
	
AS
IF(@pInvoiceno!=' ' AND @pConsignee='') 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
            --A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm ,
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate,
            A.CurrentDate, A.UserName
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID
            WHERE A.InvoiceNo like '%'+@pInvoiceno+'%' AND EX.ExporterNo='APPAREL' AND A.Status is null
            ORDER BY convert(datetime,A.CurrentDate,120) DESC
            
            
END
ELSE IF(@pInvoiceno = ' ' AND @pConsignee!=' ')
BEGIN    
    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
            --A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm ,
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate,
            A.CurrentDate, A.UserName
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID
            WHERE A.ConsigneeID=@pConsignee AND EX.ExporterNo='APPAREL' AND A.Status is null
            ORDER BY convert(datetime,A.CurrentDate,120) DESC
            
END
ELSE  
BEGIN    
    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
            --A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm ,
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate,
            A.CurrentDate, A.UserName
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID 
            WHERE  A.Status is null AND EX.ExporterNo='APPAREL'
            ORDER BY convert(datetime,A.CurrentDate,120) DESC          
            
END
GO
/****** Object:  StoredProcedure [dbo].[spGetInvoiceSearchByNo]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<Using Invoice and Category Search,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetInvoiceSearchByNo] 
	-- Add the parameters for the stored procedure here
	  @pInvoiceno  AS NVARCHAR(MAX)
	, @pConsignee  AS NVARCHAR(MAX)
	
AS
IF(@pInvoiceno!=' ' AND @pConsignee='') 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
           -- A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm , 
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate,
            A.CurrentDate, A.UserName
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID
            WHERE A.InvoiceNo like '%'+@pInvoiceno+'%' AND EX.ExporterNo IN ('HLBD','HOPYICK') AND A.Status is null
            ORDER BY convert(datetime,A.CurrentDate,120) DESC
            
END
ELSE IF(@pInvoiceno = ' ' AND @pConsignee!=' ')
BEGIN    
    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
            --A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm , 
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate,
            A.CurrentDate, A.UserName
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID
            WHERE A.ConsigneeID=@pConsignee AND EX.ExporterNo IN ('HLBD','HOPYICK') AND A.Status is null
            ORDER BY convert(datetime,A.CurrentDate,120) DESC
            
END
ELSE IF(@pInvoiceno != ' ')
BEGIN    
    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
            --A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm ,
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate,
            A.CurrentDate, A.UserName
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID
            WHERE A.InvoiceNo like '%'+@pInvoiceno+'%' AND EX.ExporterNo IN ('HLBD','HOPYICK')  AND A.Status is null
            ORDER BY convert(datetime,A.CurrentDate,120) DESC
            
END
ELSE  
BEGIN    
    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
            --A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm ,
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate,
            A.CurrentDate, A.UserName
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID 
            WHERE A.Status is null AND EX.ExporterNo IN ('HLBD','HOPYICK')
            ORDER BY convert(datetime,A.CurrentDate,120) DESC          
            
END
GO
/****** Object:  StoredProcedure [dbo].[spGetInvoiceMonitorRecords]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetInvoiceMonitorRecords]
	-- Add the parameters for the stored procedure here
	      @pStartDate  AS NVARCHAR(MAX)
		, @pEndDate  AS NVARCHAR(MAX)
		
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
IF(@pStartDate!='' AND @pEndDate!='')
 BEGIN
 SELECT 
	--EXF.ID, 
	EXF.ItemName 	
    , UPPER(EXF.InvoiceNo) AS InvoiceNo, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, EXF.HSCode
	, ExporterDetails.ExporterNo
	, ConsigneeDetails.ConsigneeNo AS BUYERNAME
	, DestCountry.Name AS DESTINATION
	, Transport.Port AS MODE
	, BILL.ModeStatus	
	, EXF.TTNo	
	, EXF.ContractNo AS CONTRACTNO
	--, EXF.ContractDate
	, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	, EXF.MasterContractNo
	, dbo.CustomDateFormat(EXF.MasterContractDate) AS MasterContractDate
	, SI.EXPNo
	--, SI.EXPDate	
	, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	, SD.OrderNo AS ORDERNO, SD.StyleNo
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6) END, '') AS ExFactoryDate
	, SD.BLNo AS BLAWBNO
	--, SD.BLDate AS BLAWBDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLAWBDate
	, BILL.SBNo
	--, BILL.SBDate
	, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm
	, SD.RevQty AS QtyPCS, SD.RevisedFOBValue AS FOBValueUSD, SD.RevisedCMValue AS CMValueUSD
	, BILL.LeadTime, BILL.BuyerCourierNo, BILL.BuyerCourierDate AS SENDTOBUYER, BILL.DocSubmitDate, BILL.CourierNo
	, BILL.CourierDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) END, '') AS CourierDate
	, EXF.ItemName
	, SD.ProductType	
	--, SI.CargorptDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, SD.ETADate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	, EXF.Quantity	
	, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	, Transport.Name AS TName
	, SD.CartonQty
	, SD.CBMValue	
	--, BILL.SBNo, BILL.SBDate
	, SI.VesselNo
	, SD.VesselName	
	--, EXF.ConsigneeID
	, SI.EPNo, SI.EPDate, SI.CnFAgent
	--, SI.TransportID AS RTransport	
	,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	,  DestCountry.CountryCode	
	--, ConsigneeDetails.ConsigneeName 
	, SI.BringBack, SI.ShippedOut, SI.ShippedCancel, SI.ShippedBack, SI.Unshipped
	, SD.FinalQty, SD.FinalFOB, SD.FinalCM, SD.Remarks
	FROM    ExportformDetails AS EXF 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID 
	LEFT OUTER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	LEFT OUTER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 	 
	LEFT OUTER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo
	WHERE convert(date, InvoiceDate,103) BETWEEN convert(date, @pStartDate, 103) AND convert(date, @pEndDate, 103)
	AND EXF.Status IS NULL
	--ORDER BY EXF.InvoiceNo ASC
	ORDER BY convert(datetime, EXF.CurrentDate,120) DESC
 END
ELSE
 BEGIN
 SELECT 
	--EXF.ID, 
	EXF.ItemName 	
    , UPPER(EXF.InvoiceNo) AS InvoiceNo, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, EXF.HSCode
	, ExporterDetails.ExporterNo
	, ConsigneeDetails.ConsigneeNo AS BUYERNAME
	, DestCountry.Name AS DESTINATION
	, Transport.Port AS MODE
	, EXF.TTNo	
	, BILL.ModeStatus		
	, EXF.ContractNo AS CONTRACTNO
	--, EXF.ContractDate
	, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	, EXF.MasterContractNo
	, dbo.CustomDateFormat(EXF.MasterContractDate) AS MasterContractDate
	, SI.EXPNo
	--, SI.EXPDate	
	, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	, SD.OrderNo AS ORDERNO, SD.StyleNo
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6) END, '') AS ExFactoryDate
	, SD.BLNo AS BLAWBNO
	--, SD.BLDate AS BLAWBDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLAWBDate
	, BILL.SBNo
	--, BILL.SBDate
	, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm
	, SD.RevQty AS QtyPCS, SD.RevisedFOBValue AS FOBValueUSD, SD.RevisedCMValue AS CMValueUSD
	, BILL.LeadTime, BILL.BuyerCourierNo, BILL.BuyerCourierDate AS SENDTOBUYER, BILL.DocSubmitDate, BILL.CourierNo
	, BILL.CourierDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) END, '') AS CourierDate
	, EXF.ItemName
	, SD.ProductType	
	--, SI.CargorptDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, SD.ETADate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	, EXF.Quantity	
	, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	, Transport.Name AS TName
	, SD.CartonQty
	, SD.CBMValue	
	--, BILL.SBNo, BILL.SBDate
	, SI.VesselNo
	, SD.VesselName	
	--, EXF.ConsigneeID
	, SI.EPNo, SI.EPDate, SI.CnFAgent
	--, SI.TransportID AS RTransport	
	,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	,  DestCountry.CountryCode	
	--, ConsigneeDetails.ConsigneeName 
	, SI.BringBack, SI.ShippedOut, SI.ShippedCancel, SI.ShippedBack, SI.Unshipped
	, SD.FinalQty, SD.FinalFOB, SD.FinalCM, SD.Remarks
	FROM    ExportformDetails AS EXF 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID 
	LEFT OUTER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	LEFT OUTER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 	 
	LEFT OUTER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo
	--WHERE BILL.CourierNo=@pCourierNo
	--ORDER BY EXF.InvoiceNo ASC
	WHERE EXF.Status IS NULL
	ORDER BY convert(datetime, EXF.CurrentDate,120) DESC
 END
 END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllSalesreportRecord]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Md. Hasib-Al-Aziz,,Name>
-- Create date: <25/12/2014,,>
-- Description:	<Sales Report Store Procedure for Commercial Department,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllSalesreportRecord]
		-- Add the parameters for the stored procedure here
		  @pStartDate  AS NVARCHAR(MAX)
		, @pEndDate  AS NVARCHAR(MAX)

AS	
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
IF(@pStartDate!='' AND @pEndDate!='')
 BEGIN
    -- Insert statements for procedure here
	SELECT 
	--EXF.ID,  
	ExporterDetails.ExporterNo
	, UPPER(EXF.InvoiceNo) AS InvoiceNo, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, ConsigneeDetails.ConsigneeNo	
	, EXF.ContractNo
	--, EXF.ContractDate
	, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	, SD.OrderNo, SD.StyleNo
	, EXF.ItemName
	, SD.ProductType
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	--, SI.CargorptDate
    --, CargorptDate=CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6)
    , ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	, SD.BLNo
	--, SD.BLDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.BLDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, SD.ETADate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ETADate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	, EXF.Quantity
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm
	, EXF.FOBValue, EXF.CMValue, EXF.Freight
	, SD.RevQty, SD.RevisedFOBValue, SD.RevisedCMValue
	, Transport.Name AS TName
	, SD.CartonQty
	, SD.CBMValue
	, SI.EXPNo
	--, SI.EXPDate
	, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SI.EXPDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) END, '') AS EXPDate
	, BILL.SBNo
	--, BILL.SBDate
	, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	, SI.VesselNo
	, SD.VesselName	
	--, EXF.ConsigneeID
	, SI.EPNo
	--, SI.EPDate
	, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	, SI.CnFAgent
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	,  DestCountry.CountryCode, DestCountry.Name
	, Transport.Port AS TPort
	--, ConsigneeDetails.ConsigneeName 
	, SD.FinalQty, SD.FinalFOB, SD.FinalCM, SD.Remarks
	FROM    ExportformDetails AS EXF 
	INNER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID 
	INNER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo 
	--WHERE SI.ExFactoryDate BETWEEN @pStartDate AND @pEndDate
	WHERE convert(date,SI.ExFactoryDate,103) BETWEEN convert(date, @pStartDate, 103) AND convert(date, @pEndDate, 103)
	AND EXF.Status is null 
	ORDER BY ExFactoryDate, InvoiceNo ASC
 END
ELSE
 BEGIN
   SELECT 
	--EXF.ID,  
	ExporterDetails.ExporterNo
	, UPPER(EXF.InvoiceNo) AS InvoiceNo, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, ConsigneeDetails.ConsigneeNo	
	, EXF.ContractNo
	--, EXF.ContractDate
	, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	, SD.OrderNo, SD.StyleNo
	, EXF.ItemName
	, SD.ProductType
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	--, SI.CargorptDate
	--, CargorptDate=CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6)
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	, SD.BLNo
	--, SD.BLDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.BLDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, SD.ETADate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ETADate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	, EXF.Quantity
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm
	, EXF.FOBValue, EXF.CMValue, EXF.Freight
	, SD.RevQty, SD.RevisedFOBValue, SD.RevisedCMValue
	, Transport.Name AS TName
	, SD.CartonQty
	, SD.CBMValue
	, SI.EXPNo
	--, SI.EXPDate
	, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SI.EXPDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) END, '') AS EXPDate
	, BILL.SBNo
	--, BILL.SBDate
	, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	, SI.VesselNo
	, SD.VesselName	
	--, EXF.ConsigneeID
	, SI.EPNo
	--, SI.EPDate
	, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	, SI.CnFAgent
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	,  DestCountry.CountryCode, DestCountry.Name
	, Transport.Port AS TPort
	--, ConsigneeDetails.ConsigneeName 
	, SD.FinalQty, SD.FinalFOB, SD.FinalCM, SD.Remarks
	FROM    ExportformDetails AS EXF 
	INNER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID  
	INNER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo 
	WHERE EXF.Status is null  
	ORDER BY ExFactoryDate, InvoiceNo ASC
 END
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllLogisticsRecord ]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllLogisticsRecord ]
	-- Add the parameters for the stored procedure here
	      @pStartDate  AS NVARCHAR(MAX)
		, @pEndDate  AS NVARCHAR(MAX)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF(@pStartDate!='' AND @pEndDate!='')
 BEGIN
	SELECT 
	--EXF.ID,  
	ExporterDetails.ExporterNo  AS 'Factory  (BD/HY/AP/HWF)'
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS 'FOB or DDP ( only for export)'
	, ConsigneeDetails.ConsigneeNo  AS 'Buyer Name( only for export)'
	--, ConsigneeDetails.Country AS 'Country Destination'
	, DestCountry.Port+', ' + DestCountry.Name AS 'Country Destination'
	
	, EXF.ContractNo AS 'P.O. No. / Contract No.( only for export)'
	, UPPER(EXF.InvoiceNo) AS 'Invoice #'
	, dbo.CustomDateFormat(InvoiceDate) AS 'Invoice Date'
	--, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, SD.RevisedFOBValue  AS 'Invoice Value'
	, SD.RevQty	AS 'Pieces'
	, SD.CartonQty AS 'Cartons'
	, SD.CBMValue AS 'CBM'
	, Transport.Port AS 'Ship Mode   (Air or Sea or Courier)'  
	
	
	, LGS.ReceitableAmount AS 'Receitable Amount'
	, LGS.DocProcessFee    AS 'Document Processing Fee (scanning) TAX/VAT/ITC'
	, LGS.SSCertificateFee AS 'Short shipmetn certificate fee'
	, LGS.SealLockCharge   AS 'Seal lock charge'
	, LGS.AgencyCommission AS 'Agency commission'
	, LGS.DocumentaionCharge AS 'Documentation charge'	
	, LGS.TransportationCharge AS 'Transportation charge'
	, LGS.FactoryLoadingFee  AS 'Loading fee at factory'
	, LGS.ForwarderWHUFee  AS 'Unloading fee at forwarder WH'
	, LGS.DemurrageDUNLoadingFee AS 'Truck demurrage for delay unloading at depop'
	, LGS.CFSMixedCargoLoadingFee AS 'CFS/depot mist. for mixed cargo loading'
	, LGS.CustomsMiscCharge  AS 'Customs misc. charge'
	, LGS.CustomsRemarkCharge AS 'Customs misc. remark reasons for the charge'
	, LGS.TotalFees AS  'Total Amount(BDT)'
	--, LGS.CargoHODate  AS 'Cargo H/O date'
	, dbo.CustomDateFormat(LGS.CargoHODate) AS 'Cargo H/O date'
	--, LGS.DeadlineSubmission AS 'Deadline(bill submission)'
	, dbo.CustomDateFormat(LGS.DeadlineSubmission) AS 'Deadline(bill submission)'
	--, LGS.BillrcvdDate  AS 'Bill rcvd date'
	, dbo.CustomDateFormat(LGS.BillrcvdDate) AS 'Bill rcvd date'
	, LGS.LStatus  AS 'Status'
	, LGS.ForwarderName  'Forwarder name'	
	
	, SI.CnFAgent AS 'C&F AGENT Name'
	
	
	--, EXF.ContractDate
	--, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	--, SD.OrderNo, SD.StyleNo
	--, EXF.ItemName
	--, SD.ProductType
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	--, SI.CargorptDate
	--  , dbo.CustomDateFormat(SI.CargorptDate) AS CargorptDate
	--, CargorptDate=CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6)
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	 -- , dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, SD.BLNo
	--, SD.BLDate
	 -- , dbo.CustomDateFormat(SD.BLDate) AS BLDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.BLDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, SD.ETADate
	--  , dbo.CustomDateFormat(SD.ETADate) AS ETADate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ETADate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	--, EXF.Quantity
	
	--, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	
	--, SD.RevisedCMValue
	--, Transport.Name AS TName
	
	--, SD.CBMValue
	--, SI.EXPNo
	--, SI.EXPDate
	--, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SI.EXPDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) END, '') AS EXPDate
	--, BILL.SBNo
	--, BILL.SBDate
	--, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	--, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo
	--, SI.EPDate
	--, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	--,  DestCountry.CountryCode, DestCountry.Name
	
	--, ConsigneeDetails.ConsigneeName 	
	
	FROM    ExportformDetails AS EXF 
	INNER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID  
	INNER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo
	INNER JOIN  LogisticsInfo AS LGS  ON LGS.InvoiceNo=EXF.InvoiceNo	
	WHERE convert(date,SI.ExFactoryDate,103) BETWEEN convert(date, @pStartDate, 103) AND convert(date, @pEndDate, 103)
	AND EXF.Status is null 
	ORDER BY SI.CnFAgent, ExporterDetails.ExporterNo ASC, ExFactoryDate ASC
 END
ELSE
 BEGIN
   SELECT 
	--EXF.ID,  
	ExporterDetails.ExporterNo  AS 'Factory  (BD/HY/AP/HWF)'
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS 'FOB or DDP ( only for export)'
	, ConsigneeDetails.ConsigneeNo  AS 'Buyer Name( only for export)'
	--, ConsigneeDetails.Country AS 'Country Destination'
	, DestCountry.Port+', ' + DestCountry.Name AS 'Country Destination'
	
	, EXF.ContractNo AS 'P.O. No. / Contract No.( only for export)'
	, UPPER(EXF.InvoiceNo) AS 'Invoice #'
	, dbo.CustomDateFormat(InvoiceDate) AS 'Invoice Date'
	--, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, SD.RevisedFOBValue  AS 'Invoice Value'
	, SD.RevQty	AS 'Pieces'
	, SD.CartonQty AS 'Cartons'
	, SD.CBMValue AS 'CBM'
	, Transport.Port AS 'Ship Mode   (Air or Sea or Courier)'  
	
	
	, LGS.ReceitableAmount AS 'Receitable Amount'
	, LGS.DocProcessFee    AS 'Document Processing Fee (scanning) TAX/VAT/ITC'
	, LGS.SSCertificateFee AS 'Short shipmetn certificate fee'
	, LGS.SealLockCharge   AS 'Seal lock charge'
	, LGS.AgencyCommission AS 'Agency commission'
	, LGS.DocumentaionCharge AS 'Documentation charge'	
	, LGS.TransportationCharge AS 'Transportation charge'
	, LGS.FactoryLoadingFee  AS 'Loading fee at factory'
	, LGS.ForwarderWHUFee  AS 'Unloading fee at forwarder WH'
	, LGS.DemurrageDUNLoadingFee AS 'Truck demurrage for delay unloading at depot'
	, LGS.CFSMixedCargoLoadingFee AS 'CFS/depot mist. for mixed cargo loading'
	, LGS.CustomsMiscCharge  AS 'Customs misc. charge'
	, LGS.CustomsRemarkCharge AS 'Customs misc. remark reasons for the charge'
	, LGS.TotalFees AS  'Total Amount(BDT)'
	--, LGS.CargoHODate  AS 'Cargo H/O date'
	, dbo.CustomDateFormat(LGS.CargoHODate) AS 'Cargo H/O date'
	--, LGS.DeadlineSubmission AS 'Deadline(bill submission)'
	, dbo.CustomDateFormat(LGS.DeadlineSubmission) AS 'Deadline(bill submission)'
	--, LGS.BillrcvdDate  AS 'Bill rcvd date'
	, dbo.CustomDateFormat(LGS.BillrcvdDate) AS 'Bill rcvd date'
	, LGS.LStatus  AS 'Status'
	, LGS.ForwarderName  'Forwarder name'	
	
	, SI.CnFAgent AS 'C&F AGENT Name'
	
	
	--, EXF.ContractDate
	--, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	--, SD.OrderNo, SD.StyleNo
	--, EXF.ItemName
	--, SD.ProductType
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	--, SI.CargorptDate
	--  , dbo.CustomDateFormat(SI.CargorptDate) AS CargorptDate
	--, CargorptDate=CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6)
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	 -- , dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, SD.BLNo
	--, SD.BLDate
	 -- , dbo.CustomDateFormat(SD.BLDate) AS BLDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.BLDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, SD.ETADate
	--  , dbo.CustomDateFormat(SD.ETADate) AS ETADate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ETADate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	--, EXF.Quantity
	
	--, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	
	--, SD.RevisedCMValue
	--, Transport.Name AS TName
	
	--, SD.CBMValue
	--, SI.EXPNo
	--, SI.EXPDate
	--, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SI.EXPDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) END, '') AS EXPDate
	--, BILL.SBNo
	--, BILL.SBDate
	--, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	--, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo
	--, SI.EPDate
	--, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	--,  DestCountry.CountryCode, DestCountry.Name
	
	--, ConsigneeDetails.ConsigneeName 	
	
	FROM    ExportformDetails AS EXF 
	INNER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID  
	INNER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo
	INNER JOIN  LogisticsInfo AS LGS  ON LGS.InvoiceNo=EXF.InvoiceNo
	WHERE EXF.Status is null 	
	ORDER BY SI.CnFAgent, ExporterDetails.ExporterNo ASC, ExFactoryDate ASC
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllLogisticsMonitorRecords]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllLogisticsMonitorRecords]
	-- Add the parameters for the stored procedure here
	      @pCnFAgent AS  NVARCHAR(150)
	    , @pStartDate  AS NVARCHAR(MAX)
		, @pEndDate  AS NVARCHAR(MAX)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF(@pCnFAgent!='')
   BEGIN
    -- Insert statements for procedure here
	SELECT 
	--EXF.ID,  
	ExporterDetails.ExporterNo  AS 'Factory  (BD/HY/AP/HWF)'
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS 'FOB or DDP ( only for export)'
	, ConsigneeDetails.ConsigneeNo  AS 'Buyer Name( only for export)'
	--, ConsigneeDetails.Country AS 'Country Destination'
	, DestCountry.Port+', ' + DestCountry.Name AS 'Country Destination'
	
	, EXF.ContractNo AS 'P.O. No. / Contract No.( only for export)'
	, UPPER(EXF.InvoiceNo) AS 'Invoice #'
	, dbo.CustomDateFormat(InvoiceDate) AS 'Invoice Date'
	--, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, SD.RevisedFOBValue  AS 'Invoice Value'
	, SD.RevQty	AS 'Pieces'
	, SD.CartonQty AS 'Cartons'
	, SD.CBMValue AS 'CBM'
	, Transport.Port AS 'Ship Mode   (Air or Sea or Courier)'  
	
	
	, LGS.ReceitableAmount AS 'Receitable Amount'
	, LGS.DocProcessFee    AS 'Document Processing Fee (scanning) TAX/VAT/ITC'
	, LGS.SSCertificateFee AS 'Short shipmetn certificate fee'
	, LGS.SealLockCharge   AS 'Seal lock charge'
	, LGS.AgencyCommission AS 'Agency commission'
	, LGS.DocumentaionCharge AS 'Documentation charge'	
	, LGS.TransportationCharge AS 'Transportation charge'
	, LGS.FactoryLoadingFee  AS 'Loading fee at factory'
	, LGS.ForwarderWHUFee  AS 'Unloading fee at forwarder WH'
	, LGS.DemurrageDUNLoadingFee AS 'Truck demurrage for delay unloading at depop'
	, LGS.CFSMixedCargoLoadingFee AS 'CFS/depot mist. for mixed cargo loading'
	, LGS.CustomsMiscCharge  AS 'Customs misc. charge'
	, LGS.CustomsRemarkCharge AS 'Customs misc. remark reasons for the charge'
	, LGS.TotalFees AS  'Total Amount(BDT)'
	--, LGS.CargoHODate  AS 'Cargo H/O date'
	, dbo.CustomDateFormat(LGS.CargoHODate) AS 'Cargo H/O date'
	--, LGS.DeadlineSubmission AS 'Deadline(bill submission)'
	, dbo.CustomDateFormat(LGS.DeadlineSubmission) AS 'Deadline(bill submission)'
	--, LGS.BillrcvdDate  AS 'Bill rcvd date'
	, dbo.CustomDateFormat(LGS.BillrcvdDate) AS 'Bill rcvd date'
	, LGS.LStatus  AS 'Status'
	, LGS.ForwarderName  'Forwarder name'	
	
	, SI.CnFAgent AS 'C&F AGENT Name'
	
	
	--, EXF.ContractDate
	--, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	--, SD.OrderNo, SD.StyleNo
	--, EXF.ItemName
	--, SD.ProductType
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	--, SI.CargorptDate
	--  , dbo.CustomDateFormat(SI.CargorptDate) AS CargorptDate
	--, CargorptDate=CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6)
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	 -- , dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, SD.BLNo
	--, SD.BLDate
	 -- , dbo.CustomDateFormat(SD.BLDate) AS BLDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.BLDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, SD.ETADate
	--  , dbo.CustomDateFormat(SD.ETADate) AS ETADate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ETADate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	--, EXF.Quantity
	
	--, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	
	--, SD.RevisedCMValue
	--, Transport.Name AS TName
	
	--, SD.CBMValue
	--, SI.EXPNo
	--, SI.EXPDate
	--, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SI.EXPDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) END, '') AS EXPDate
	--, BILL.SBNo
	--, BILL.SBDate
	--, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	--, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo
	--, SI.EPDate
	--, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	--,  DestCountry.CountryCode, DestCountry.Name
	
	--, ConsigneeDetails.ConsigneeName 	
	
	FROM    ExportformDetails AS EXF 
	INNER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID  
	--INNER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo
	LEFT OUTER JOIN  LogisticsInfo AS LGS  ON LGS.InvoiceNo=EXF.InvoiceNo	
    WHERE SI.CnFAgent LIKE '%'+@pCnFAgent+'%'	AND EXF.Status is null 
	ORDER BY SI.CnFAgent, ExporterDetails.ExporterNo ASC, ExFactoryDate ASC

 END
ELSE IF(@pStartDate!='' AND @pEndDate!='') 
 BEGIN
	SELECT 
	--EXF.ID,  
	ExporterDetails.ExporterNo  AS 'Factory  (BD/HY/AP/HWF)'
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS 'FOB or DDP ( only for export)'
	, ConsigneeDetails.ConsigneeNo  AS 'Buyer Name( only for export)'
	--, ConsigneeDetails.Country AS 'Country Destination'
	, DestCountry.Port+', ' + DestCountry.Name AS 'Country Destination'
	
	, EXF.ContractNo AS 'P.O. No. / Contract No.( only for export)'
	, UPPER(EXF.InvoiceNo) AS 'Invoice #'
	, dbo.CustomDateFormat(InvoiceDate) AS 'Invoice Date'
	--, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, SD.RevisedFOBValue  AS 'Invoice Value'
	, SD.RevQty	AS 'Pieces'
	, SD.CartonQty AS 'Cartons'
	, SD.CBMValue AS 'CBM'
	, Transport.Port AS 'Ship Mode   (Air or Sea or Courier)'  
	
	
	, LGS.ReceitableAmount AS 'Receitable Amount'
	, LGS.DocProcessFee    AS 'Document Processing Fee (scanning) TAX/VAT/ITC'
	, LGS.SSCertificateFee AS 'Short shipmetn certificate fee'
	, LGS.SealLockCharge   AS 'Seal lock charge'
	, LGS.AgencyCommission AS 'Agency commission'
	, LGS.DocumentaionCharge AS 'Documentation charge'	
	, LGS.TransportationCharge AS 'Transportation charge'
	, LGS.FactoryLoadingFee  AS 'Loading fee at factory'
	, LGS.ForwarderWHUFee  AS 'Unloading fee at forwarder WH'
	, LGS.DemurrageDUNLoadingFee AS 'Truck demurrage for delay unloading at depop'
	, LGS.CFSMixedCargoLoadingFee AS 'CFS/depot mist. for mixed cargo loading'
	, LGS.CustomsMiscCharge  AS 'Customs misc. charge'
	, LGS.CustomsRemarkCharge AS 'Customs misc. remark reasons for the charge'
	, LGS.TotalFees AS  'Total Amount(BDT)'
	--, LGS.CargoHODate  AS 'Cargo H/O date'
	, dbo.CustomDateFormat(LGS.CargoHODate) AS 'Cargo H/O date'
	--, LGS.DeadlineSubmission AS 'Deadline(bill submission)'
	, dbo.CustomDateFormat(LGS.DeadlineSubmission) AS 'Deadline(bill submission)'
	--, LGS.BillrcvdDate  AS 'Bill rcvd date'
	, dbo.CustomDateFormat(LGS.BillrcvdDate) AS 'Bill rcvd date'
	, LGS.LStatus  AS 'Status'
	, LGS.ForwarderName  'Forwarder name'	
	
	, SI.CnFAgent AS 'C&F AGENT Name'
	
	
	--, EXF.ContractDate
	--, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	--, SD.OrderNo, SD.StyleNo
	--, EXF.ItemName
	--, SD.ProductType
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	--, SI.CargorptDate
	--  , dbo.CustomDateFormat(SI.CargorptDate) AS CargorptDate
	--, CargorptDate=CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6)
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	 -- , dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, SD.BLNo
	--, SD.BLDate
	 -- , dbo.CustomDateFormat(SD.BLDate) AS BLDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.BLDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, SD.ETADate
	--  , dbo.CustomDateFormat(SD.ETADate) AS ETADate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ETADate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	--, EXF.Quantity
	
	--, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	
	--, SD.RevisedCMValue
	--, Transport.Name AS TName
	
	--, SD.CBMValue
	--, SI.EXPNo
	--, SI.EXPDate
	--, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SI.EXPDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) END, '') AS EXPDate
	--, BILL.SBNo
	--, BILL.SBDate
	--, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	--, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo
	--, SI.EPDate
	--, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	--,  DestCountry.CountryCode, DestCountry.Name
	
	--, ConsigneeDetails.ConsigneeName 	
	
	FROM    ExportformDetails AS EXF 
	INNER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID  
	--INNER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo
	LEFT OUTER JOIN  LogisticsInfo AS LGS  ON LGS.InvoiceNo=EXF.InvoiceNo	
	WHERE convert(date,SI.ExFactoryDate,103) BETWEEN convert(date, @pStartDate, 103) AND convert(date, @pEndDate, 103)
	AND EXF.Status is null 
	ORDER BY ExFactoryDate ASC, SI.CnFAgent, ExporterDetails.ExporterNo ASC
 END
 ELSE IF(@pStartDate!='' AND @pEndDate!='') AND (@pCnFAgent!='')
 BEGIN
	SELECT 
	--EXF.ID,  
	ExporterDetails.ExporterNo  AS 'Factory  (BD/HY/AP/HWF)'
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS 'FOB or DDP ( only for export)'
	, ConsigneeDetails.ConsigneeNo  AS 'Buyer Name( only for export)'
	--, ConsigneeDetails.Country AS 'Country Destination'
	, DestCountry.Port+', ' + DestCountry.Name AS 'Country Destination'
	
	, EXF.ContractNo AS 'P.O. No. / Contract No.( only for export)'
	, UPPER(EXF.InvoiceNo) AS 'Invoice #'
	, dbo.CustomDateFormat(InvoiceDate) AS 'Invoice Date'
	--, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, SD.RevisedFOBValue  AS 'Invoice Value'
	, SD.RevQty	AS 'Pieces'
	, SD.CartonQty AS 'Cartons'
	, SD.CBMValue AS 'CBM'
	, Transport.Port AS 'Ship Mode   (Air or Sea or Courier)'  
	
	
	, LGS.ReceitableAmount AS 'Receitable Amount'
	, LGS.DocProcessFee    AS 'Document Processing Fee (scanning) TAX/VAT/ITC'
	, LGS.SSCertificateFee AS 'Short shipmetn certificate fee'
	, LGS.SealLockCharge   AS 'Seal lock charge'
	, LGS.AgencyCommission AS 'Agency commission'
	, LGS.DocumentaionCharge AS 'Documentation charge'	
	, LGS.TransportationCharge AS 'Transportation charge'
	, LGS.FactoryLoadingFee  AS 'Loading fee at factory'
	, LGS.ForwarderWHUFee  AS 'Unloading fee at forwarder WH'
	, LGS.DemurrageDUNLoadingFee AS 'Truck demurrage for delay unloading at depop'
	, LGS.CFSMixedCargoLoadingFee AS 'CFS/depot mist. for mixed cargo loading'
	, LGS.CustomsMiscCharge  AS 'Customs misc. charge'
	, LGS.CustomsRemarkCharge AS 'Customs misc. remark reasons for the charge'
	, LGS.TotalFees AS  'Total Amount(BDT)'
	--, LGS.CargoHODate  AS 'Cargo H/O date'
	, dbo.CustomDateFormat(LGS.CargoHODate) AS 'Cargo H/O date'
	--, LGS.DeadlineSubmission AS 'Deadline(bill submission)'
	, dbo.CustomDateFormat(LGS.DeadlineSubmission) AS 'Deadline(bill submission)'
	--, LGS.BillrcvdDate  AS 'Bill rcvd date'
	, dbo.CustomDateFormat(LGS.BillrcvdDate) AS 'Bill rcvd date'
	, LGS.LStatus  AS 'Status'
	, LGS.ForwarderName  'Forwarder name'	
	
	, SI.CnFAgent AS 'C&F AGENT Name'
	
	
	--, EXF.ContractDate
	--, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	--, SD.OrderNo, SD.StyleNo
	--, EXF.ItemName
	--, SD.ProductType
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	--, SI.CargorptDate
	--  , dbo.CustomDateFormat(SI.CargorptDate) AS CargorptDate
	--, CargorptDate=CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6)
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	 -- , dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, SD.BLNo
	--, SD.BLDate
	 -- , dbo.CustomDateFormat(SD.BLDate) AS BLDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.BLDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, SD.ETADate
	--  , dbo.CustomDateFormat(SD.ETADate) AS ETADate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ETADate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	--, EXF.Quantity
	
	--, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	
	--, SD.RevisedCMValue
	--, Transport.Name AS TName
	
	--, SD.CBMValue
	--, SI.EXPNo
	--, SI.EXPDate
	--, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SI.EXPDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) END, '') AS EXPDate
	--, BILL.SBNo
	--, BILL.SBDate
	--, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	--, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo
	--, SI.EPDate
	--, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	--,  DestCountry.CountryCode, DestCountry.Name
	
	--, ConsigneeDetails.ConsigneeName 	
	
	FROM    ExportformDetails AS EXF 
	INNER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID  
	--INNER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo
	LEFT OUTER JOIN  LogisticsInfo AS LGS  ON LGS.InvoiceNo=EXF.InvoiceNo	
	WHERE convert(date,SI.ExFactoryDate,103) BETWEEN convert(date, @pStartDate, 103) AND convert(date, @pEndDate, 103)
	AND SI.CnFAgent LIKE '%'+@pCnFAgent+'%' AND EXF.Status is null 
	ORDER BY ExFactoryDate ASC,  SI.CnFAgent, ExporterDetails.ExporterNo ASC
 END
ELSE
 BEGIN
   SELECT 
	--EXF.ID,  
	ExporterDetails.ExporterNo  AS 'Factory  (BD/HY/AP/HWF)'
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS 'FOB or DDP ( only for export)'
	, ConsigneeDetails.ConsigneeNo  AS 'Buyer Name( only for export)'
	--, ConsigneeDetails.Country AS 'Country Destination'
	, DestCountry.Port+', ' + DestCountry.Name AS 'Country Destination'
	
	, EXF.ContractNo AS 'P.O. No. / Contract No.( only for export)'
	, UPPER(EXF.InvoiceNo) AS 'Invoice #'
	, dbo.CustomDateFormat(InvoiceDate) AS 'Invoice Date'
	--, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
	, SD.RevisedFOBValue  AS 'Invoice Value'
	, SD.RevQty	AS 'Pieces'
	, SD.CartonQty AS 'Cartons'
	, SD.CBMValue AS 'CBM'
	, Transport.Port AS 'Ship Mode   (Air or Sea or Courier)'  
	
	
	, LGS.ReceitableAmount AS 'Receitable Amount'
	, LGS.DocProcessFee    AS 'Document Processing Fee (scanning) TAX/VAT/ITC'
	, LGS.SSCertificateFee AS 'Short shipmetn certificate fee'
	, LGS.SealLockCharge   AS 'Seal lock charge'
	, LGS.AgencyCommission AS 'Agency commission'
	, LGS.DocumentaionCharge AS 'Documentation charge'	
	, LGS.TransportationCharge AS 'Transportation charge'
	, LGS.FactoryLoadingFee  AS 'Loading fee at factory'
	, LGS.ForwarderWHUFee  AS 'Unloading fee at forwarder WH'
	, LGS.DemurrageDUNLoadingFee AS 'Truck demurrage for delay unloading at depot'
	, LGS.CFSMixedCargoLoadingFee AS 'CFS/depot mist. for mixed cargo loading'
	, LGS.CustomsMiscCharge  AS 'Customs misc. charge'
	, LGS.CustomsRemarkCharge AS 'Customs misc. remark reasons for the charge'
	, LGS.TotalFees AS  'Total Amount(BDT)'
	--, LGS.CargoHODate  AS 'Cargo H/O date'
	, dbo.CustomDateFormat(LGS.CargoHODate) AS 'Cargo H/O date'
	--, LGS.DeadlineSubmission AS 'Deadline(bill submission)'
	, dbo.CustomDateFormat(LGS.DeadlineSubmission) AS 'Deadline(bill submission)'
	--, LGS.BillrcvdDate  AS 'Bill rcvd date'
	, dbo.CustomDateFormat(LGS.BillrcvdDate) AS 'Bill rcvd date'
	, LGS.LStatus  AS 'Status'
	, LGS.ForwarderName  'Forwarder name'	
	
	, SI.CnFAgent AS 'C&F AGENT Name'
	
	
	--, EXF.ContractDate
	--, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	--, SD.OrderNo, SD.StyleNo
	--, EXF.ItemName
	--, SD.ProductType
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	--, SI.CargorptDate
	--  , dbo.CustomDateFormat(SI.CargorptDate) AS CargorptDate
	--, CargorptDate=CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6)
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SI.CargorptDate, 105), 6) END, '') AS CargorptDate
	--, SD.ShipbordingDate
	 -- , dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, SD.BLNo
	--, SD.BLDate
	 -- , dbo.CustomDateFormat(SD.BLDate) AS BLDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.BLDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.BLDate, 105), 6) END, '') AS BLDate
	--, SD.ETADate
	--  , dbo.CustomDateFormat(SD.ETADate) AS ETADate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ETADate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ETADate, 105), 6) END, '') AS ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	--, EXF.Quantity
	
	--, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	
	--, SD.RevisedCMValue
	--, Transport.Name AS TName
	
	--, SD.CBMValue
	--, SI.EXPNo
	--, SI.EXPDate
	--, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SI.EXPDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) END, '') AS EXPDate
	--, BILL.SBNo
	--, BILL.SBDate
	--, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	--, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo
	--, SI.EPDate
	--, dbo.CustomDateFormat(SI.EPDate) AS EPDate
	--, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6)
	
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	--,  DestCountry.CountryCode, DestCountry.Name
	
	--, ConsigneeDetails.ConsigneeName 	
	
	FROM    ExportformDetails AS EXF 
	INNER JOIN  SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo 
	INNER JOIN  ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo 
	INNER JOIN  ExporterDetails ON EXF.ExporterID = ExporterDetails.ID 
	INNER JOIN  Transport ON EXF.TransportID = Transport.ID 
	INNER JOIN DestCountry ON EXF.DestinationID = DestCountry.ID 
	INNER JOIN  ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID  
	--INNER JOIN  BillingInfo BILL ON EXF.InvoiceNo=BILL.InvoiceNo
	LEFT OUTER JOIN  LogisticsInfo AS LGS  ON LGS.InvoiceNo=EXF.InvoiceNo
	WHERE EXF.Status is null 	
	ORDER BY SI.CnFAgent, ExporterDetails.ExporterNo ASC, ExFactoryDate ASC
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spGetALLInvoiceSearchByNo]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Md. Hasib-Al-Aziz>
-- Create date: <Create 04/06/2014,,>
-- Description:	<Using Invoice and Category Search,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetALLInvoiceSearchByNo] 
	-- Add the parameters for the stored procedure here
	  @pInvoiceno  AS NVARCHAR(MAX)
	, @pConsignee  AS NVARCHAR(MAX)
	
AS
IF(@pInvoiceno!=' ' AND @pConsignee='') 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
           -- A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm , 
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID
            WHERE A.InvoiceNo like '%'+@pInvoiceno+'%' AND EX.ExporterNo IN ('HLBD','HOPYICK','APPAREL') AND A.Status is null
            ORDER BY convert(datetime,A.CurrentDate,120) DESC
            
END
ELSE IF(@pInvoiceno = ' ' AND @pConsignee!=' ')
BEGIN    
    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
            --A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm , 
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID
            WHERE A.ConsigneeID=@pConsignee AND EX.ExporterNo IN ('HLBD','HOPYICK','APPAREL') AND A.Status is null
            ORDER BY convert(datetime,A.CurrentDate,120) DESC
            
END
ELSE IF(@pInvoiceno != ' ')
BEGIN    
    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
            --A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm ,
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID
            WHERE A.InvoiceNo like '%'+@pInvoiceno+'%' AND EX.ExporterNo IN ('HLBD','HOPYICK','APPAREL')  AND A.Status is null
            ORDER BY convert(datetime,A.CurrentDate,120) DESC
            
END
ELSE  
BEGIN    
    SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate,
            A.ItemName, 
            A.TTNo, A.TTDate,
            A.ExporterID, EX.ExporterName, EX.RegDetails,
            A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName,
            A.NotifyID, NOTI.NotifyName,
            A.HSCode, A.HSCodesecond,
            A.DestinationID,DC.CountryCode, DC.Name, DC.Port,
            A.TransportID, TR.Name AS TName, TR.Port AS TPort,
            A.Section, 
            A.Unit,
            A.Quantity, 
            A.Currency,
            --A.Incoterm,
            CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' WHEN '8' Then 'EXW' END AS Incoterm ,
            A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight,
            A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate
            FROM ExportformDetails AS A
            LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID
            LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID
            LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID
            LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID
            LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID 
            WHERE A.Status is null AND EX.ExporterNo IN ('HLBD','HOPYICK','APPAREL')
            ORDER BY convert(datetime,A.CurrentDate,120) DESC          
            
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllBillingReportRecord]    Script Date: 03/08/2015 11:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Md. Hasib-Al-Aziz,,Name>
-- Create date: <25/12/2014,,>
-- Description:	<Sales Report Store Procedure for Commercial Department,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllBillingReportRecord]
          @pCourierNo     AS  NVARCHAR(150)
        , @pStartDate     AS NVARCHAR(MAX)
		, @pEndDate       AS NVARCHAR(MAX)
		, @pExStartDate   AS NVARCHAR(MAX)
		, @pExEndDate     AS NVARCHAR(MAX)

AS	
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
  IF(@pCourierNo!='')
   BEGIN
    -- Insert statements for procedure here
	SELECT 
	--EXF.ID,  	
    UPPER(EXF.InvoiceNo) AS InvoiceNo
    --, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
    , dbo.CustomDateFormat(InvoiceDate) AS InvoiceDate	
	, ExporterDetails.ExporterNo
	, ConsigneeDetails.ConsigneeNo AS BUYERNAME
	, DestCountry.Name AS DESTINATION
	, Transport.Port AS MODE
	, BILL.ModeStatus
	, EXF.ContractNo AS CONTRACTNO
	--, EXF.ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate	
	, SI.EXPNo
	--, SI.EXPDate	
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	, SD.OrderNo AS ORDERNO
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	, SD.BLNo AS BLAWBNO, SD.BLDate AS BLAWBDate
	, BILL.SBNo
	--, BILL.SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, ISNULL(CASE WHEN CONVERT(DATE, BILL.SBDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6) END, '') AS SBDate
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm
	, SD.RevQty AS QtyPCS, SD.RevisedFOBValue AS FOBValueUSD, SD.RevisedCMValue AS CMValueUSD
    , BILL.LeadTime, CAST(BILL.BuyerCourierNo AS VARCHAR(100)) AS BuyerCourierNo, BILL.BuyerCourierDate AS SENDTOBUYER
    
    --, BILL.DocSubmitDate
    , dbo.CustomDateFormat(BILL.DocSubmitDate) AS DocSubmitDate 
    --, SD.ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	, dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
    , BILL.CourierNo
	--, BILL.CourierDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) END, '') AS CourierDate
	, dbo.CustomDateFormat(BILL.CourierDate) AS CourierDate
	, SD.StyleNo
  	--, EXF.ItemName
	--, SD.ProductType	
	--, SI.CargorptDate
	--, SD.ShipbordingDate
	--, SD.ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	, EXF.Quantity	
	, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	, Transport.Name AS TName
	--, SD.CartonQty
	--, SD.CBMValue	
	--, SI.SBNo, SI.SBDate, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo, SI.EPDate, SI.CnFAgent
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	,  DestCountry.CountryCode	
	--, ConsigneeDetails.ConsigneeName 
	FROM    ExportformDetails AS EXF WITH (NOLOCK)
	JOIN  SalesinfoDetails AS SD WITH (NOLOCK)   ON EXF.InvoiceNo = SD.InvoiceNo 
	JOIN  ShippingInfo AS SI  WITH (NOLOCK) ON EXF.InvoiceNo = SI.InvoiceNo 
	JOIN  ExporterDetails WITH (NOLOCK) ON   EXF.ExporterID = ExporterDetails.ID 
	JOIN  Transport WITH (NOLOCK) ON EXF.TransportID = Transport.ID 
	JOIN DestCountry WITH (NOLOCK) ON EXF.DestinationID = DestCountry.ID 
	JOIN  ConsigneeDetails WITH (NOLOCK) ON EXF.ConsigneeID = ConsigneeDetails.ID  
	JOIN  BillingInfo BILL WITH (NOLOCK) ON EXF.InvoiceNo=BILL.InvoiceNo
	WHERE BILL.CourierNo=@pCourierNo AND EXF.Status is null
	--ORDER BY EXF.InvoiceNo ASC
    ORDER BY convert(datetime, EXF.CurrentDate,120) DESC

  END
 ELSE IF(  @pCourierNo='' AND @pStartDate!='' AND @pEndDate!='')
  BEGIN
    SELECT 
	--EXF.ID,  	
    UPPER(EXF.InvoiceNo) AS InvoiceNo
    --, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
    , dbo.CustomDateFormat(InvoiceDate) AS InvoiceDate	
	, ExporterDetails.ExporterNo
	, ConsigneeDetails.ConsigneeNo AS BUYERNAME
	, DestCountry.Name AS DESTINATION
	, Transport.Port AS MODE
	, BILL.ModeStatus
	, EXF.ContractNo AS CONTRACTNO
	--, EXF.ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate	
	, SI.EXPNo
	--, SI.EXPDate	
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	, SD.OrderNo AS ORDERNO
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	, SD.BLNo AS BLAWBNO, SD.BLDate AS BLAWBDate
	, BILL.SBNo
	--, BILL.SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, ISNULL(CASE WHEN CONVERT(DATE, BILL.SBDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6) END, '') AS SBDate
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm
	, SD.RevQty AS QtyPCS, SD.RevisedFOBValue AS FOBValueUSD, SD.RevisedCMValue AS CMValueUSD
    , BILL.LeadTime, CAST(BILL.BuyerCourierNo AS VARCHAR(100)) AS BuyerCourierNo, BILL.BuyerCourierDate AS SENDTOBUYER
    
    --, BILL.DocSubmitDate
    , dbo.CustomDateFormat(BILL.DocSubmitDate) AS DocSubmitDate 
    --, SD.ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	, dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
    , BILL.CourierNo
	--, BILL.CourierDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) END, '') AS CourierDate
	, dbo.CustomDateFormat(BILL.CourierDate) AS CourierDate
	, SD.StyleNo
  	--, EXF.ItemName
	--, SD.ProductType	
	--, SI.CargorptDate
	--, SD.ShipbordingDate
	--, SD.ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	, EXF.Quantity	
	, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	, Transport.Name AS TName
	--, SD.CartonQty
	--, SD.CBMValue	
	--, SI.SBNo, SI.SBDate, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo, SI.EPDate, SI.CnFAgent
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	,  DestCountry.CountryCode	
	--, ConsigneeDetails.ConsigneeName 
	FROM    ExportformDetails AS EXF WITH (NOLOCK)
	JOIN  SalesinfoDetails AS SD WITH (NOLOCK)   ON EXF.InvoiceNo = SD.InvoiceNo 
	JOIN  ShippingInfo AS SI  WITH (NOLOCK) ON EXF.InvoiceNo = SI.InvoiceNo 
	JOIN  ExporterDetails WITH (NOLOCK) ON   EXF.ExporterID = ExporterDetails.ID 
	JOIN  Transport WITH (NOLOCK) ON EXF.TransportID = Transport.ID 
	JOIN DestCountry WITH (NOLOCK) ON EXF.DestinationID = DestCountry.ID 
	JOIN  ConsigneeDetails WITH (NOLOCK) ON EXF.ConsigneeID = ConsigneeDetails.ID  
	JOIN  BillingInfo BILL WITH (NOLOCK) ON EXF.InvoiceNo=BILL.InvoiceNo
	WHERE convert(date,BILL.CourierDate,103)  >=convert(date, @pStartDate,103) AND convert(date, BILL.CourierDate,103)<=convert(date,@pEndDate,103)
	AND EXF.Status is null
	--ORDER BY EXF.InvoiceNo ASC
	ORDER BY convert(datetime, EXF.CurrentDate,120) DESC
  END
 ELSE IF( @pCourierNo = '' AND @pStartDate = '' AND @pEndDate = '' AND  @pExStartDate != '' AND @pExEndDate != '')
  BEGIN
 SELECT 
	--EXF.ID,  	
    UPPER(EXF.InvoiceNo) AS InvoiceNo
    --, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
    , dbo.CustomDateFormat(InvoiceDate) AS InvoiceDate	
	, ExporterDetails.ExporterNo
	, ConsigneeDetails.ConsigneeNo AS BUYERNAME
	, DestCountry.Name AS DESTINATION
	, Transport.Port AS MODE
	, BILL.ModeStatus
	, EXF.ContractNo AS CONTRACTNO
	--, EXF.ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate	
	, SI.EXPNo
	--, SI.EXPDate	
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	, SD.OrderNo AS ORDERNO
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	, SD.BLNo AS BLAWBNO, SD.BLDate AS BLAWBDate
	, BILL.SBNo
	--, BILL.SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, ISNULL(CASE WHEN CONVERT(DATE, BILL.SBDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6) END, '') AS SBDate
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm
	, SD.RevQty AS QtyPCS, SD.RevisedFOBValue AS FOBValueUSD, SD.RevisedCMValue AS CMValueUSD
    , BILL.LeadTime, CAST(BILL.BuyerCourierNo AS VARCHAR(100)) AS BuyerCourierNo, BILL.BuyerCourierDate AS SENDTOBUYER
    
    --, BILL.DocSubmitDate
    , dbo.CustomDateFormat(BILL.DocSubmitDate) AS DocSubmitDate 
    --, SD.ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	, dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
    , BILL.CourierNo
	--, BILL.CourierDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) END, '') AS CourierDate
	, dbo.CustomDateFormat(BILL.CourierDate) AS CourierDate
	, SD.StyleNo
  	--, EXF.ItemName
	--, SD.ProductType	
	--, SI.CargorptDate
	--, SD.ShipbordingDate
	--, SD.ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	, EXF.Quantity	
	, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	, Transport.Name AS TName
	--, SD.CartonQty
	--, SD.CBMValue	
	--, SI.SBNo, SI.SBDate, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo, SI.EPDate, SI.CnFAgent
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	,  DestCountry.CountryCode	
	--, ConsigneeDetails.ConsigneeName 
	FROM    ExportformDetails AS EXF WITH (NOLOCK)
	JOIN  SalesinfoDetails AS SD WITH (NOLOCK)   ON EXF.InvoiceNo = SD.InvoiceNo 
	JOIN  ShippingInfo AS SI  WITH (NOLOCK) ON EXF.InvoiceNo = SI.InvoiceNo 
	JOIN  ExporterDetails WITH (NOLOCK) ON   EXF.ExporterID = ExporterDetails.ID 
	JOIN  Transport WITH (NOLOCK) ON EXF.TransportID = Transport.ID 
	JOIN DestCountry WITH (NOLOCK) ON EXF.DestinationID = DestCountry.ID 
	JOIN  ConsigneeDetails WITH (NOLOCK) ON EXF.ConsigneeID = ConsigneeDetails.ID  
	JOIN  BillingInfo BILL WITH (NOLOCK) ON EXF.InvoiceNo=BILL.InvoiceNo
	----WHERE convert(date,SI.ExFactoryDate, 103)  >=convert(date, @pExStartDate, 103) AND convert(date, SI.ExFactoryDate, 103)<=convert(date,@pExEndDate,103)
    WHERE convert(date,SI.ExFactoryDate,103) BETWEEN convert(date, @pExStartDate, 103) AND convert(date, @pExEndDate, 103)
	--AND EXF.Status is null 
	--ORDER BY EXF.InvoiceNo ASC
	ORDER BY convert(datetime, EXF.CurrentDate,120) DESC
  END
 ELSE
  BEGIN
    SELECT 
	--EXF.ID,  	
    UPPER(EXF.InvoiceNo) AS InvoiceNo
    --, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6)
    , dbo.CustomDateFormat(InvoiceDate) AS InvoiceDate	
	, ExporterDetails.ExporterNo
	, ConsigneeDetails.ConsigneeNo AS BUYERNAME
	, DestCountry.Name AS DESTINATION
	, Transport.Port AS MODE
	, BILL.ModeStatus
	, EXF.ContractNo AS CONTRACTNO
	--, EXF.ContractDate
	--, ContractDate=CONVERT(varchar, CONVERT(datetime, EXF.ContractDate, 105), 6)
	, dbo.CustomDateFormat(EXF.ContractDate) AS ContractDate	
	, SI.EXPNo
	--, SI.EXPDate	
	--, CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6) AS EXPDate
	, dbo.CustomDateFormat(SI.EXPDate) AS EXPDate
	, SD.OrderNo AS ORDERNO
	--, SI.ExFactoryDate
	--, ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6)
	, dbo.CustomDateFormat(SI.ExFactoryDate) AS ExFactoryDate
	, SD.BLNo AS BLAWBNO, SD.BLDate AS BLAWBDate
	, BILL.SBNo
	--, BILL.SBDate
	--, SBDate=CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6)
	, dbo.CustomDateFormat(BILL.SBDate) AS SBDate
	--, ISNULL(CASE WHEN CONVERT(DATE, BILL.SBDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, BILL.SBDate, 105), 6) END, '') AS SBDate
	, CASE EXF.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm
	, SD.RevQty AS QtyPCS, SD.RevisedFOBValue AS FOBValueUSD, SD.RevisedCMValue AS CMValueUSD
    , BILL.LeadTime, CAST(BILL.BuyerCourierNo AS VARCHAR(100)) AS BuyerCourierNo, BILL.BuyerCourierDate AS SENDTOBUYER
    
    --, BILL.DocSubmitDate
    , dbo.CustomDateFormat(BILL.DocSubmitDate) AS DocSubmitDate 
    --, SD.ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(DATE, SD.ShipbordingDate) = '1900-01-01' THEN '' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, SD.ShipbordingDate, 105), 6) END, '') AS ShipbordingDate
	, dbo.CustomDateFormat(SD.ShipbordingDate) AS ShipbordingDate
    , BILL.CourierNo
	--, BILL.CourierDate
	--, ISNULL(CASE WHEN CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) = '01 Jan 00' THEN ' ' ELSE CONVERT(varchar, CONVERT(datetime, BILL.CourierDate, 105), 6) END, '') AS CourierDate
	, dbo.CustomDateFormat(BILL.CourierDate) AS CourierDate
	, SD.StyleNo
  	--, EXF.ItemName
	--, SD.ProductType	
	--, SI.CargorptDate
	--, SD.ShipbordingDate
	--, SD.ETADate
	--,  EXF.ExporterID
	--,  EXF.TransportID
	--, EXF.DestinationID
	, EXF.Quantity	
	, EXF.FOBValue, EXF.CMValue, EXF.Freight	
	, Transport.Name AS TName
	--, SD.CartonQty
	--, SD.CBMValue	
	--, SI.SBNo, SI.SBDate, SI.VesselNo
	--, SD.VesselName	
	--, EXF.ConsigneeID
	--, SI.EPNo, SI.EPDate, SI.CnFAgent
	--, SI.TransportID AS RTransport	
	--,  ExporterDetails.ExporterName
	--, ExporterDetails.RegDetails
	,  DestCountry.CountryCode	
	--, ConsigneeDetails.ConsigneeName 
	FROM    ExportformDetails AS EXF WITH (NOLOCK)
	JOIN  SalesinfoDetails AS SD WITH (NOLOCK)   ON EXF.InvoiceNo = SD.InvoiceNo 
	JOIN  ShippingInfo AS SI  WITH (NOLOCK) ON EXF.InvoiceNo = SI.InvoiceNo 
	JOIN  ExporterDetails WITH (NOLOCK) ON   EXF.ExporterID = ExporterDetails.ID 
	JOIN  Transport WITH (NOLOCK) ON EXF.TransportID = Transport.ID 
	JOIN DestCountry WITH (NOLOCK) ON EXF.DestinationID = DestCountry.ID 
	JOIN  ConsigneeDetails WITH (NOLOCK) ON EXF.ConsigneeID = ConsigneeDetails.ID  
	JOIN  BillingInfo BILL WITH (NOLOCK) ON EXF.InvoiceNo=BILL.InvoiceNo
	WHERE  EXF.Status is null
	--WHERE BILL.CourierNo=@pCourierNo
	--ORDER BY EXF.InvoiceNo ASC
	ORDER BY convert(datetime, EXF.CurrentDate,120) DESC
  END
END
GO
/****** Object:  Table [dbo].[Excel]    Script Date: 03/08/2015 11:37:40 ******/
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
/****** Object:  Default [DF_BEInfo_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[BEInfo] ADD  CONSTRAINT [DF_BEInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_BillingExcel_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[BillingExcel] ADD  CONSTRAINT [DF_BillingExcel_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_BillingInfo_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[BillingInfo] ADD  CONSTRAINT [DF_BillingInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Category_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Categoryitem_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Categoryitem] ADD  CONSTRAINT [DF_Categoryitem_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ConsigneeDetails_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[ConsigneeDetails] ADD  CONSTRAINT [DF_ConsigneeDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_CustomAuditDetails_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[CustomAuditDetails] ADD  CONSTRAINT [DF_CustomAuditDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_DestCountry_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[DestCountry] ADD  CONSTRAINT [DF_DestCountry_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExcelImport_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[ExcelImport] ADD  CONSTRAINT [DF_ExcelImport_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExporterDetails_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[ExporterDetails] ADD  CONSTRAINT [DF_ExporterDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExportformDetails_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[ExportformDetails] ADD  CONSTRAINT [DF_ExportformDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ExportformDetailsBAK_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[ExportformDetailsBAK] ADD  CONSTRAINT [DF_ExportformDetailsBAK_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Group_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_GSPformDetails_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[GSPformDetails] ADD  CONSTRAINT [DF_GSPformDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_GSPItemInfo_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[GSPItemInfo] ADD  CONSTRAINT [DF_GSPItemInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_GSPItemInfo_GSPQty]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[GSPItemInfo] ADD  CONSTRAINT [DF_GSPItemInfo_GSPQty]  DEFAULT (N'V') FOR [GSPQty]
GO
/****** Object:  Default [DF_HSCodeDetails_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[HSCodeDetails] ADD  CONSTRAINT [DF_HSCodeDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Importinfo_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Importinfo] ADD  CONSTRAINT [DF_Importinfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Invoice_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Invoice] ADD  CONSTRAINT [DF_Invoice_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Invoiceinfo_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Invoiceinfo] ADD  CONSTRAINT [DF_Invoiceinfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_LicenceVerify_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[LicenceVerify] ADD  CONSTRAINT [DF_LicenceVerify_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Location_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_LogisticsInfo_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[LogisticsInfo] ADD  CONSTRAINT [DF_LogisticsInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_NotifyDetails_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[NotifyDetails] ADD  CONSTRAINT [DF_NotifyDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_SalesContract_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[SalesContract] ADD  CONSTRAINT [DF_SalesContract_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_SalesExcel_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[SalesExcel] ADD  CONSTRAINT [DF_SalesExcel_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_SalesinfoDetails_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[SalesinfoDetails] ADD  CONSTRAINT [DF_SalesinfoDetails_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_ShippingInfo_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[ShippingInfo] ADD  CONSTRAINT [DF_ShippingInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Transhipment_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Transhipment] ADD  CONSTRAINT [DF_Transhipment_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Transport_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Transport] ADD  CONSTRAINT [DF_Transport_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_TTInformation_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[TTInformation] ADD  CONSTRAINT [DF_TTInformation_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_UDInfo_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[UDInfo] ADD  CONSTRAINT [DF_UDInfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Unitinfo_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Unitinfo] ADD  CONSTRAINT [DF_Unitinfo_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_User_ID]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  ForeignKey [FK__Categoryi__Categ__300424B4]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Categoryitem]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
/****** Object:  ForeignKey [FK__Invoicein__Locat__4CA06362]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[Invoiceinfo]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([ID])
GO
/****** Object:  ForeignKey [FK__TTInforma__Expor__73852659]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[TTInformation]  WITH CHECK ADD  CONSTRAINT [FK__TTInforma__Expor__73852659] FOREIGN KEY([ExporterDetailsID])
REFERENCES [dbo].[ExporterDetails] ([ID])
GO
ALTER TABLE [dbo].[TTInformation] CHECK CONSTRAINT [FK__TTInforma__Expor__73852659]
GO
/****** Object:  ForeignKey [FK_User_Group]    Script Date: 03/08/2015 11:37:40 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Group]
GO
