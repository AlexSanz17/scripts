USE [siged]
GO

/****** Object:  Table [dbo].[vistabandejalegajos]    Script Date: 19/10/2021 22:46:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vistabandejalegajos](
	[id] [int] NOT NULL,
	[asunto] [varchar](255) NULL,
	[desTipo] [varchar](255) NULL,
	[desUnidad] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[fechaCreacion] [datetime] NULL,
	[idMetodo] [varchar](255) NULL,
	[idProcedimiento] [varchar](255) NULL,
	[idTipo] [int] NULL,
	[idUnidad] [int] NULL,
	[nroLegajo] [varchar](255) NULL,
	[usuarioCreacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


