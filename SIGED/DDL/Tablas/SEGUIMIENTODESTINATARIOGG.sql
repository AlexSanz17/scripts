USE [siged]
GO

/****** Object:  Table [dbo].[seguimientodestinatariogg]    Script Date: 19/10/2021 19:37:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[seguimientodestinatariogg](
	[idPK] [int] NOT NULL,
	[asunto] [varchar](255) NULL,
	[destinatario] [int] NULL,
	[fechacreacion] [datetime] NULL,
	[fechalimite] [datetime] NULL,
	[iddocumento] [int] NULL,
	[numerodocumento] [varchar](255) NULL,
	[remitente] [int] NULL,
	[responsable] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


