USE [siged]
GO

/****** Object:  Table [dbo].[sala]    Script Date: 19/10/2021 19:34:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sala](
	[idsala] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NULL,
	[nroapelaciones] [int] NULL,
	[nrocautelares] [int] NULL,
	[nroquejas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idsala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


