USE [siged]
GO

/****** Object:  Table [dbo].[reportealerta]    Script Date: 19/10/2021 19:26:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[reportealerta](
	[idPK] [int] NOT NULL,
	[areadestino] [varchar](255) NULL,
	[areaorigen] [varchar](255) NULL,
	[asunto] [varchar](255) NULL,
	[destinatario] [int] NULL,
	[documento] [varchar](255) NULL,
	[fechalimiteatencion] [datetime] NULL,
	[iddocumento] [int] NULL,
	[indtable] [varchar](255) NULL,
	[remitente] [int] NULL,
	[userdestinatario] [int] NULL,
	[userremitente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


