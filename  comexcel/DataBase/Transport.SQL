use Commercial

/****** Object:  Table [dbo].[Transport]  Script Date: 18/05/2014 19:07:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Transport](
	[ID]          [uniqueidentifier] NOT NULL,
        [Name]        [nvarchar] (MAX)   NOT NULL, 	
        
	
		
 CONSTRAINT [PK_Transport] PRIMARY KEY CLUSTERED 
([ID] ASC) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Transport] ADD  CONSTRAINT [DF_Transport_ID]  DEFAULT (newid()) FOR [ID]
GO


