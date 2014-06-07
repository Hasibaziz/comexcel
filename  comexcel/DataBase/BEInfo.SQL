use Commercial

/****** Object:  Table [dbo].[BEInfo]  Script Date: 18/05/2014 19:07:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BEInfo](
	[ID]              [uniqueidentifier] NOT NULL,
        [BENo]            [nvarchar] (MAX)   NOT NULL, 
        [BEDate]          [nvarchar] (50)   NOT NULL, 
        
	
		
 CONSTRAINT [PK_BEInfo] PRIMARY KEY CLUSTERED 
([ID] ASC) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[BEInfo] ADD  CONSTRAINT [DF_BEInfo_ID]  DEFAULT (newid()) FOR [ID]
GO


