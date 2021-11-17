USE [siged]
GO

/****** Object:  Table [dbo].[region]    Script Date: 19/10/2021 19:26:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[region](
	[idregion] [int] IDENTITY(1,1) NOT NULL,
	[nombreregion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idregion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


