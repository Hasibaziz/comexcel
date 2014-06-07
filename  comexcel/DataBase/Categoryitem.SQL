use Commercial

/****** Object:  Table [dbo].[Categoryitem]  Script Date: 18/05/2014 19:07:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Categoryitem](
	[ID]                   [uniqueidentifier] NOT NULL,        
        [CategoryID]           [uniqueidentifier] NOT NULL,         
        [Item]                 [nvarchar] (MAX)   NOT NULL, 
        
	
		
 CONSTRAINT [PK_Categoryitem] PRIMARY KEY CLUSTERED 
([ID] ASC) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Categoryitem] ADD  CONSTRAINT [DF_Categoryitem_ID]  DEFAULT (newid()) FOR [ID]
GO

/****** Object:  ForeignKey [FK_Categoryitem_Category]    Script Date: 05/18/2014 10:37:51 ******/
ALTER TABLE [dbo].[Categoryitem]  WITH CHECK ADD  CONSTRAINT [FK_Categoryitem_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Categoryitem] CHECK CONSTRAINT [FK_Categoryitem_Category]
GO
