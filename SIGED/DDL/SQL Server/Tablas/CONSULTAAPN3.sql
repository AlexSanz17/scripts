USE [siged]
GO

/****** Object:  Table [dbo].[consultaapn3]    Script Date: 18/10/2021 23:52:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[consultaapn3](
	[idc3] [int] NOT NULL,
	[accionta] [varchar](255) NULL,
	[acciontc] [varchar](255) NULL,
	[acciontd] [varchar](255) NULL,
	[areadestinota] [varchar](255) NULL,
	[areadestinotc] [varchar](255) NULL,
	[areadestinotd] [varchar](255) NULL,
	[areaorigenta] [varchar](255) NULL,
	[areaorigentc] [varchar](255) NULL,
	[areaorigentd] [varchar](255) NULL,
	[asuntodocumento] [varchar](255) NULL,
	[asuntoexpediente] [varchar](255) NULL,
	[cliente] [varchar](255) NULL,
	[estadodocumento] [varchar](255) NULL,
	[fechacreacionta] [datetime] NULL,
	[fechacreaciontc] [datetime] NULL,
	[fechacreaciontd] [datetime] NULL,
	[fechalimiteatencionta] [datetime] NULL,
	[fechalimiteatenciontd] [datetime] NULL,
	[iddocumento] [int] NULL,
	[idareadestinota] [int] NULL,
	[idareadestinotc] [int] NULL,
	[idareadestinotd] [int] NULL,
	[idareaorigenta] [int] NULL,
	[idareaorigentc] [int] NULL,
	[idareaorigentd] [int] NULL,
	[idexpediente] [int] NULL,
	[idproceso] [int] NULL,
	[idtipodocumento] [int] NULL,
	[idtrazabilidadapoyo] [int] NULL,
	[idtrazabilidadcopia] [varchar](255) NULL,
	[idtrazabilidaddocumento] [int] NULL,
	[nrodocumento] [varchar](255) NULL,
	[nroexpediente] [varchar](255) NULL,
	[prioridad] [varchar](255) NULL,
	[proceso] [varchar](255) NULL,
	[remitenteta] [varchar](255) NULL,
	[remitentetc] [varchar](255) NULL,
	[remitentetd] [varchar](255) NULL,
	[tipodocumento] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idc3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


