USE [siged]
GO

/****** Object:  Table [dbo].[VISTAGRIDUSUARIOFINAL]    Script Date: 19/10/2021 22:48:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VISTAGRIDUSUARIOFINAL](
	[iddocumento] [int] NOT NULL,
	[actividad] [varchar](255) NULL,
	[cliente] [varchar](255) NULL,
	[concesionario] [varchar](255) NULL,
	[documento] [varchar](255) NULL,
	[estadodocumento] [char](1) NULL,
	[estadoexpediente] [char](1) NULL,
	[etapa] [varchar](255) NULL,
	[fechaaccion] [datetime] NULL,
	[fechacreacion] [datetime] NULL,
	[fechalimiteatencion] [datetime] NULL,
	[historico] [char](1) NULL,
	[idaccion] [int] NULL,
	[idproceso] [int] NULL,
	[idpropietario] [int] NULL,
	[leido] [char](1) NULL,
	[nombreproceso] [varchar](255) NULL,
	[nroexpediente] [varchar](255) NULL,
	[nromesapartes] [varchar](255) NULL,
	[porcentajealerta1] [varchar](255) NULL,
	[porcentajealerta2] [varchar](255) NULL,
	[principal] [char](1) NULL,
	[razonsocialcliente] [varchar](255) NULL,
	[remitente] [varchar](255) NULL,
	[sede] [int] NULL,
	[tipoidentificacion] [varchar](255) NULL,
	[ultimoasunto] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


