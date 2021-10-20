USE [siged]
GO

/****** Object:  Table [dbo].[documentopendiente]    Script Date: 19/10/2021 13:17:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentopendiente](
	[iddocumentopendiente] [int] IDENTITY(1,1) NOT NULL,
	[cargopropietario] [int] NULL,
	[estado] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[fechamodificacion] [datetime] NULL,
	[idTipoTrazabilidad] [varchar](255) NULL,
	[idTrazabilidad] [int] NULL,
	[iddocumento] [int] NULL,
	[iddocumentorespuesta] [int] NULL,
	[idusuario] [int] NULL,
	[unidadpropietario] [int] NULL,
	[usuariocreacion] [int] NULL,
	[usuariomodificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumentopendiente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


