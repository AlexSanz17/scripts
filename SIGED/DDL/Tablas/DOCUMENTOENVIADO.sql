USE [siged]
GO

/****** Object:  Table [dbo].[documentoenviado]    Script Date: 19/10/2021 13:16:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentoenviado](
	[iddocumentoenviado] [int] IDENTITY(1,1) NOT NULL,
	[cargopropietario] [int] NULL,
	[estado] [varchar](1) NULL,
	[idtrazabilidaddocumento] [int] NULL,
	[tipoenvio] [varchar](255) NULL,
	[unidadpropietario] [int] NULL,
	[usuariocreacion] [int] NULL,
	[idusuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumentoenviado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[documentoenviado]  WITH CHECK ADD  CONSTRAINT [FK451078DCEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[documentoenviado] CHECK CONSTRAINT [FK451078DCEAD96159]
GO


