USE [siged]
GO

/****** Object:  Table [dbo].[vistabandejafirmar]    Script Date: 19/10/2021 22:45:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vistabandejafirmar](
	[id] [int] NOT NULL,
	[archivos] [int] NULL,
	[asunto] [varchar](255) NULL,
	[asuntoExpediente] [varchar](255) NULL,
	[cargoPropietario] [int] NULL,
	[cliente] [varchar](255) NULL,
	[codEstado] [varchar](255) NULL,
	[documento] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[expediente] [varchar](255) NULL,
	[fechaCreacion] [datetime] NULL,
	[fechaRecepcion] [datetime] NULL,
	[idDocumento] [int] NULL,
	[idUsuario] [int] NULL,
	[leido] [varchar](255) NULL,
	[nroTramite] [int] NULL,
	[unidadPropietario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


