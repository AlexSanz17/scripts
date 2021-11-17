USE [siged]
GO

/****** Object:  Table [dbo].[seguimientoxfirma]    Script Date: 19/10/2021 19:38:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[seguimientoxfirma](
	[idSeguimientoFirma] [int] IDENTITY(1,1) NOT NULL,
	[cargoPropietario] [int] NULL,
	[estado] [varchar](255) NOT NULL,
	[fechaCreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[idDocumento] [int] NOT NULL,
	[idTipoTrazabilidad] [varchar](255) NULL,
	[idTrazabilidad] [int] NULL,
	[idUsuario] [int] NOT NULL,
	[unidadPropietario] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSeguimientoFirma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


