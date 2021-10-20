USE [siged]
GO

/****** Object:  Table [dbo].[anio]    Script Date: 18/10/2021 23:39:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[anio](
	[idAnio] [int] IDENTITY(1,1) NOT NULL,
	[anioferiado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idAnio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


