USE [siged]
GO

/****** Object:  Table [dbo].[firmaarchivo]    Script Date: 19/10/2021 18:53:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[firmaarchivo](
	[idFirmaArchivo] [int] IDENTITY(1,1) NOT NULL,
	[accion] [varchar](255) NULL,
	[alias] [varchar](255) NULL,
	[cargoPropietario] [int] NULL,
	[estado] [varchar](255) NULL,
	[fechaCreacion] [datetime] NULL,
	[fechaFirma] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[idArchivo] [int] NULL,
	[idProceso] [varchar](255) NULL,
	[idUsuario] [int] NULL,
	[unidadPropietario] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idFirmaArchivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


