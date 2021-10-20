USE [siged]
GO

/****** Object:  Table [dbo].[reporteapn4]    Script Date: 19/10/2021 19:29:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[reporteapn4](
	[id] [int] NOT NULL,
	[anndocumento] [varchar](255) NULL,
	[area] [varchar](255) NULL,
	[asunto] [varchar](255) NULL,
	[cliente] [varchar](255) NULL,
	[codArea] [int] NULL,
	[fechaDocumento] [varchar](255) NULL,
	[fechaTransferido] [varchar](255) NULL,
	[iddocumento] [int] NULL,
	[idtipodocumento] [int] NULL,
	[nroDocumento] [varchar](255) NULL,
	[nroExpediente] [varchar](255) NULL,
	[tipoDocumento] [varchar](255) NULL,
	[usuario] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


