USE [siged]
GO

/****** Object:  Table [dbo].[trazabilidadunificada]    Script Date: 19/10/2021 22:33:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[trazabilidadunificada](
	[id] [int] NOT NULL,
	[tipo] [varchar](255) NOT NULL,
	[accion] [varchar](255) NULL,
	[cantidadhoja] [varchar](255) NULL,
	[contenido] [varchar](255) NULL,
	[destinatario] [varchar](255) NULL,
	[documento] [int] NULL,
	[estado] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[filas] [varchar](255) NULL,
	[idremitente] [varchar](255) NULL,
	[idunidadremitente] [varchar](255) NULL,
	[nombrepc] [varchar](255) NULL,
	[nrodocumento] [varchar](255) NULL,
	[proveido] [varchar](255) NULL,
	[remitente] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


