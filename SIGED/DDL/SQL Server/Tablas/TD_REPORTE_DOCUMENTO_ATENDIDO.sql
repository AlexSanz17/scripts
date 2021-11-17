USE [siged]
GO

/****** Object:  Table [dbo].[td_reporte_documento_atendido]    Script Date: 19/10/2021 19:45:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[td_reporte_documento_atendido](
	[idr1] [int] NOT NULL,
	[areas] [varchar](255) NULL,
	[asunto] [varchar](255) NULL,
	[asuntoat] [varchar](255) NULL,
	[cliente] [varchar](255) NULL,
	[desunidadorigen] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[fechacreacionat] [datetime] NULL,
	[iddocumento] [int] NULL,
	[iddocumentoat] [int] NULL,
	[idunidadorigen] [int] NULL,
	[nrodocumento] [varchar](255) NULL,
	[nrodocumentoat] [varchar](255) NULL,
	[nroexpediente] [varchar](255) NULL,
	[tipodocumento] [varchar](255) NULL,
	[tipodocumentoat] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idr1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


