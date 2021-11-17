USE [siged]
GO

/****** Object:  Table [dbo].[trazabilidadmovimiento]    Script Date: 19/10/2021 22:33:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[trazabilidadmovimiento](
	[idtrazabilidadmovimiento] [int] IDENTITY(1,1) NOT NULL,
	[accion] [int] NULL,
	[documento] [int] NULL,
	[fechacreacion] [datetime] NULL,
	[idexpdestino] [int] NULL,
	[idexporigen] [int] NULL,
	[idusuario] [int] NULL,
	[nombrepc] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtrazabilidadmovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


