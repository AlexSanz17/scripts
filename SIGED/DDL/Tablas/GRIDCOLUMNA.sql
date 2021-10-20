USE [siged]
GO

/****** Object:  Table [dbo].[gridcolumna]    Script Date: 19/10/2021 18:55:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gridcolumna](
	[idgridcolumna] [int] IDENTITY(1,1) NOT NULL,
	[field] [varchar](255) NOT NULL,
	[formater] [varchar](255) NULL,
	[hidden] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[noresize] [int] NOT NULL,
	[position] [int] NOT NULL,
	[width] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idgridcolumna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


