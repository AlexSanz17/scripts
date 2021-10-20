USE [siged]
GO

/****** Object:  Table [dbo].[documentofedateado]    Script Date: 19/10/2021 13:17:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentofedateado](
	[idoperacion] [int] IDENTITY(1,1) NOT NULL,
	[asunto] [varchar](255) NULL,
	[desunidad] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[fechadocumento] [datetime] NULL,
	[idcertfirmas] [varchar](255) NULL,
	[iddocumentofedateado] [int] NULL,
	[idtipodocumentofedateado] [int] NULL,
	[idunidadsolicitante] [int] NULL,
	[idusuario] [int] NULL,
	[nombrepc] [varchar](255) NULL,
	[nrocopiasfedateadas] [int] NULL,
	[nrodocumento] [varchar](255) NULL,
	[nrofoliosdocumento] [int] NULL,
	[servicio] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idoperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


