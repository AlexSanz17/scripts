USE [siged]
GO

/****** Object:  Table [dbo].[proveido]    Script Date: 19/10/2021 19:20:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[proveido](
	[idproveido] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](255) NULL,
	[grupo] [varchar](255) NULL,
	[nombre] [varchar](255) NULL,
	[pendiente] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idproveido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


