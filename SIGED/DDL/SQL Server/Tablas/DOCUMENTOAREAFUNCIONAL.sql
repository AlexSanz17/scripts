USE [siged]
GO

/****** Object:  Table [dbo].[documentoareafuncional]    Script Date: 19/10/2021 13:13:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentoareafuncional](
	[iddocumentoareafuncional] [int] NOT NULL,
	[accion] [varchar](255) NULL,
	[areadestino] [varchar](255) NULL,
	[asuntodocumento] [varchar](255) NULL,
	[asuntoexpediente] [varchar](255) NULL,
	[cliente] [varchar](255) NULL,
	[destinatario] [int] NULL,
	[fechacreacion] [datetime] NULL,
	[fechalimiteatencion] [datetime] NULL,
	[iddocumento] [int] NULL,
	[idareacreacion] [int] NULL,
	[idareadestino] [int] NULL,
	[idareafuncionalcreacion] [int] NULL,
	[idareafuncionalrecepcion] [int] NULL,
	[idarearecepcion] [int] NULL,
	[idexpediente] [int] NULL,
	[idprioridad] [int] NULL,
	[idproceso] [int] NULL,
	[idremitente] [int] NULL,
	[nrodocumento] [varchar](255) NULL,
	[nroexpediente] [varchar](255) NULL,
	[prioridad] [varchar](255) NULL,
	[propietario] [varchar](255) NULL,
	[remitente] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumentoareafuncional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


