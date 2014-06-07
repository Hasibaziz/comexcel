use Commercial


/****** Object:  Table [dbo].[User]    Script Date: 105/18/2014 16:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID]        [uniqueidentifier]                         NOT NULL,
	[UserName]  [nvarchar](100)                            NOT NULL,
	[Password]  [nvarchar](100)                            NOT NULL,
	[FullName]  [nvarchar](100)                            NOT NULL,
	[Email]     [nvarchar](100)                            NOT NULL,
	[IsActive]  [bit]                                      NOT NULL,
	[Created]   [nvarchar](50)                             NOT NULL,
	[GroupID]   [uniqueidentifier]                         NOT NULL,
	

       
	
 CONSTRAINT [PK_USER_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  ForeignKey [FK_User_Group]    Script Date: 05/18/2014 10:37:51 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Group]
GO