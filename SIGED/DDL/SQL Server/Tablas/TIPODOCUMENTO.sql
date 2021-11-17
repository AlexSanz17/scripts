USE [siged]
GO

/****** Object:  Table [dbo].[tipodocumento]    Script Date: 19/10/2021 19:47:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tipodocumento](
	[idtipodocumento] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [char](1) NOT NULL,
	[estadoPIDE] [varchar](255) NULL,
	[externo] [varchar](255) NULL,
	[externoQR] [varchar](255) NULL,
	[nombre] [varchar](255) NOT NULL,
	[pide] [varchar](255) NULL,
	[sicor] [varchar](255) NULL,
	[tiponumeracion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtipodocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


