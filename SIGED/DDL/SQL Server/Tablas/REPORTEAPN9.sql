USE [siged]
GO

/****** Object:  Table [dbo].[reporteapn9]    Script Date: 19/10/2021 19:29:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[reporteapn9](
	[iddocumento] [int] NOT NULL,
	[asunto] [varchar](255) NULL,
	[cliente] [varchar](255) NULL,
	[desprioridad] [varchar](255) NULL,
	[destipodocumento] [int] NULL,
	[destinatario] [varchar](255) NULL,
	[fechadocumento] [varchar](255) NULL,
	[nrodocumento] [varchar](255) NULL,
	[tipodocumento] [int] NULL,
	[idr1] [int] NOT NULL,
	[areadestino] [varchar](255) NULL,
	[areaorigen] [varchar](255) NULL,
	[asuntodocumento] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[idareadestino] [int] NULL,
	[idareaorigen] [int] NULL,
	[idareapropietario] [int] NULL,
	[idexpediente] [int] NULL,
	[idprioridad] [varchar](255) NULL,
	[idtipodocumento] [int] NULL,
	[nroexpediente] [varchar](255) NULL,
	[prioridad] [varchar](255) NULL,
	[proceso] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idr1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


