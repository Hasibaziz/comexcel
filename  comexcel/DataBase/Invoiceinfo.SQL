use Commercial

/****** Object:  Table [dbo].[Invoiceinfo]  Script Date: 18/05/2014 19:07:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Invoiceinfo](
	[ID]              [uniqueidentifier] NOT NULL,
        [Invoice]         [nvarchar] (MAX)   NOT NULL, 
        [IDate]           [nvarchar] (50)    NOT NULL, 
        [LocationID]      [uniqueidentifier] NOT NULL,

        FOREIGN KEY (LocationID)  REFERENCES Location    (ID),   
        
	
		
 CONSTRAINT [PK_Invoiceinfo] PRIMARY KEY CLUSTERED 
([ID] ASC) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Invoiceinfo] ADD  CONSTRAINT [DF_Invoiceinfo_ID]  DEFAULT (newid()) FOR [ID]
GO


