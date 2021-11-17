USE [siged]
GO

/****** Object:  Table [dbo].[seguimiento]    Script Date: 19/10/2021 19:36:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[seguimiento](
	[iddocumento] [int] NOT NULL,
	[asunto] [varchar](255) NULL,
	[destinatario] [int] NULL,
	[fechaCreacion] [datetime] NULL,
	[fechalimite] [datetime] NULL,
	[numerodocumento] [varchar](255) NULL,
	[remitente] [int] NULL,
	[responsable] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[seguimiento]  WITH CHECK ADD  CONSTRAINT [FKD78DDB697D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[seguimiento] CHECK CONSTRAINT [FKD78DDB697D375525]
GO


