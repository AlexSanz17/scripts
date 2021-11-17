USE [siged]
GO

/****** Object:  Table [dbo].[seguimientoxusuario]    Script Date: 19/10/2021 19:39:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[seguimientoxusuario](
	[idseguimientousuario] [int] IDENTITY(1,1) NOT NULL,
	[cargoPropietario] [int] NULL,
	[estado] [varchar](255) NULL,
	[fechaCreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[iddocumento] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[unidadPropietario] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idseguimientousuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


