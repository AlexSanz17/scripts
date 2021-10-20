USE [siged]
GO

/****** Object:  Table [dbo].[vistabandejaseguimiento]    Script Date: 19/10/2021 22:47:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vistabandejaseguimiento](
	[id] [int] NOT NULL,
	[asunto] [varchar](255) NULL,
	[asuntoExpediente] [varchar](255) NULL,
	[cargoPropietario] [int] NULL,
	[cliente] [varchar](255) NULL,
	[codEstado] [varchar](255) NULL,
	[documento] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[expediente] [varchar](255) NULL,
	[fechaCreacion] [datetime] NULL,
	[idDocumento] [int] NULL,
	[idUsuario] [int] NULL,
	[tipodocumento] [int] NULL,
	[nroTramite] [int] NULL,
	[unidadPropietario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


