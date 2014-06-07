use Commercial

/****** Object:  Table [dbo].[Group]  Script Date: 18/05/2014 19:07:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Group](
	[ID]          [uniqueidentifier] NOT NULL,
        [Name]        [nvarchar] (MAX)   NOT NULL, 	
        
	
		
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
([ID] ASC) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_ID]  DEFAULT (newid()) FOR [ID]
GO


