USE [siged]
GO

/****** Object:  Table [dbo].[ambitoenvio]    Script Date: 18/10/2021 23:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ambitoenvio](
	[idambitoenvio] [int] IDENTITY(1,1) NOT NULL,
	[nomambitoenvio] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idambitoenvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


