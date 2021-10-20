USE [siged]
GO

/****** Object:  Table [dbo].[mes]    Script Date: 19/10/2021 19:08:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[mes](
	[idmes] [int] IDENTITY(1,1) NOT NULL,
	[mesferiado] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idmes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

