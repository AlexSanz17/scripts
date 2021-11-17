USE [siged]
GO

/****** Object:  Table [dbo].[reporteapn2]    Script Date: 19/10/2021 19:28:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[reporteapn2](
	[iddocumento] [int] NOT NULL,
	[arearegistro] [varchar](255) NULL,
	[asunto] [varchar](255) NULL,
	[cliente] [varchar](255) NULL,
	[destinatario] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[idareadestino] [int] NULL,
	[idarearegistro] [int] NULL,
	[idgrupoproceso] [int] NULL,
	[idproceso] [int] NULL,
	[idtipodocumento] [int] NULL,
	[nrodocumento] [varchar](255) NULL,
	[nroexpediente] [varchar](255) NULL,
	[prioridad] [varchar](255) NULL,
	[proceso] [varchar](255) NULL,
	[tipodocumento] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


