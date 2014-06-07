use Commercial

/****** Object:  Table [dbo].[Location]  Script Date: 09/03/2012 19:07:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Location](
	[ID]            [uniqueidentifier]    NOT NULL,
        [Location]      [nvarchar] (MAX)      NOT NULL, 
        
	
		
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
([ID] ASC) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_ID]  DEFAULT (newid()) FOR [ID]
GO