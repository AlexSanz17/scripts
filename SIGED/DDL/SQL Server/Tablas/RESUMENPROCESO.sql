USE [siged]
GO

/****** Object:  Table [dbo].[resumenproceso]    Script Date: 19/10/2021 19:33:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[resumenproceso](
	[NROEXPEDIENTE] [varchar](255) NOT NULL,
	[ASUNTO] [varchar](255) NULL,
	[CLIENTE] [varchar](255) NULL,
	[ESTADO] [varchar](255) NULL,
	[FECHACREACION] [datetime] NULL,
	[GRUPOPROCESO] [varchar](255) NULL,
	[NOMBREM] [varchar](255) NULL,
	[NOMBREN] [varchar](255) NULL,
	[NOMBREP] [varchar](255) NULL,
	[PROCESO] [varchar](255) NULL,
	[PROPIETARIO] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[NROEXPEDIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

