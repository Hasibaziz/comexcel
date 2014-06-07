use Commercial

/****** Object:  Table [dbo].[Importinfo]  Script Date: 18/05/2014 19:07:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Importinfo](
	[ID]              [uniqueidentifier] NOT NULL,
        [SContract]       [nvarchar] (MAX)   NOT NULL,
        [UDNo]            [nvarchar] (MAX)   NOT NULL,
        [AMDNo]           [nvarchar] (MAX)   NOT NULL,
        [AMDDate]         [nvarchar] (50)    NOT NULL,
        [Location]        [nvarchar] (MAX)   NOT NULL,
        [Invoice]         [nvarchar] (MAX)   NOT NULL, 
        [Category]        [nvarchar] (MAX)   NOT NULL, 
	[Item]            [nvarchar] (MAX)   NOT NULL, 
	[QTY]             [nvarchar] (MAX)   NOT NULL,
	[Unit]            [nvarchar] (MAX)   NOT NULL,
	[TotalValue]      [nvarchar] (MAX)   NOT NULL,
        [BENo]            [nvarchar] (MAX)   NOT NULL,
        [BEDate]          [nvarchar] (50)    NOT NULL,
        [Passbook]        [nvarchar] (MAX)   NOT NULL,
        [Pageno]          [nvarchar] (50)    NOT NULL,
        [BLNo]            [nvarchar] (MAX)   NOT NULL,
	[Mode]            [nvarchar] (50)    NOT NULL,
        [ImportDate]      [nvarchar] (50)    NOT NULL,
		
 CONSTRAINT [PK_Importinfo] PRIMARY KEY CLUSTERED 
([ID] ASC) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Importinfo] ADD  CONSTRAINT [DF_Importinfo_ID]  DEFAULT (newid()) FOR [ID]
GO


