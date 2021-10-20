USE [siged]
GO

/****** Object:  Table [dbo].[reporteapn3]    Script Date: 19/10/2021 19:28:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[reporteapn3](
	[iddocumento] [int] NOT NULL,
	[areadestino] [varchar](255) NULL,
	[areaexterna] [varchar](255) NULL,
	[areaorigen] [varchar](255) NULL,
	[documento] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[fechacreacionexterna] [datetime] NULL,
	[fechalimite] [datetime] NULL,
	[fechatransferencia] [datetime] NULL,
	[idareadestino] [int] NULL,
	[idareaexterna] [int] NULL,
	[idareaorigen] [int] NULL,
	[idexpediente] [int] NULL,
	[prioridad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


