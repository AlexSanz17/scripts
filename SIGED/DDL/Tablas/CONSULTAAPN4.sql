USE [siged]
GO

/****** Object:  Table [dbo].[consultaapn4]    Script Date: 18/10/2021 23:52:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[consultaapn4](
	[iddocumento] [int] NOT NULL,
	[areadestino] [varchar](255) NULL,
	[areaorigen] [varchar](255) NULL,
	[asuntodocumento] [varchar](255) NULL,
	[asuntoexpediente] [varchar](255) NULL,
	[cliente] [varchar](255) NULL,
	[destinatario] [varchar](255) NULL,
	[documentoreferencia] [int] NULL,
	[estadoexpediente] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[idareadestino] [int] NULL,
	[idareaorigen] [int] NULL,
	[idcliente] [int] NULL,
	[idexpediente] [int] NULL,
	[idprioridad] [int] NULL,
	[idproceso] [int] NULL,
	[idtipodocumento] [int] NULL,
	[nrodocumento] [varchar](255) NULL,
	[nroexpediente] [varchar](255) NULL,
	[prioridad] [varchar](255) NULL,
	[proceso] [varchar](255) NULL,
	[remitente] [int] NULL,
	[tipodocumento] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


