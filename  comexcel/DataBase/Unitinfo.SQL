use Commercial

/****** Object:  Table [dbo].[Unitinfo]  Script Date: 18/05/2014 19:07:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Unitinfo](
	[ID]          [uniqueidentifier] NOT NULL,
        [Name]        [nvarchar] (MAX)   NOT NULL, 
        
	
		
 CONSTRAINT [PK_Unitinfo] PRIMARY KEY CLUSTERED 
([ID] ASC) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Unitinfo] ADD  CONSTRAINT [DF_Unitinfo_ID]  DEFAULT (newid()) FOR [ID]
GO


