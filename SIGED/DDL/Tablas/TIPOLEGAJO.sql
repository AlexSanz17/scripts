USE [siged]
GO

/****** Object:  Table [dbo].[tipolegajo]    Script Date: 19/10/2021 22:26:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tipolegajo](
	[idTipo] [int] NOT NULL,
	[acronimo] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[numeracion] [varchar](255) NULL,
	[secuencia] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


