USE [siged]
GO

/****** Object:  Table [dbo].[parametro]    Script Date: 19/10/2021 19:13:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[parametro](
	[idparametro] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[tipo] [varchar](255) NULL,
	[valor] [varchar](255) NULL,
	[estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idparametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


