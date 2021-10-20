USE [siged]
GO

/****** Object:  Table [dbo].[mensajeria]    Script Date: 19/10/2021 19:07:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[mensajeria](
	[idmensajeria] [int] IDENTITY(1,1) NOT NULL,
	[asunto] [varchar](255) NULL,
	[aviso] [char](1) NULL,
	[departamento] [varchar](255) NULL,
	[destinatario] [varchar](255) NULL,
	[direcciondestino] [varchar](255) NULL,
	[distrito] [varchar](255) NULL,
	[docprincipal] [char](1) NULL,
	[estado] [char](1) NULL,
	[estadoingreso] [char](1) NULL,
	[fechaderivacion] [datetime] NULL,
	[idambitoenvio] [int] NULL,
	[idcliente] [int] NULL,
	[iddocumento] [int] NULL,
	[idmensajeriaprincipal] [int] NULL,
	[numerodocumento] [varchar](255) NULL,
	[numerointerno] [varchar](255) NULL,
	[provincia] [varchar](255) NULL,
	[referenciadireccioncliente] [varchar](255) NULL,
	[tipodocumento] [varchar](255) NULL,
	[idtipoenvio] [int] NULL,
	[idusuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idmensajeria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[mensajeria]  WITH CHECK ADD  CONSTRAINT [FK93FE4DCB7145E7FB] FOREIGN KEY([idtipoenvio])
REFERENCES [dbo].[tipoenvio] ([idtipoenvio])
GO

ALTER TABLE [dbo].[mensajeria] CHECK CONSTRAINT [FK93FE4DCB7145E7FB]
GO

ALTER TABLE [dbo].[mensajeria]  WITH CHECK ADD  CONSTRAINT [FK93FE4DCBEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[mensajeria] CHECK CONSTRAINT [FK93FE4DCBEAD96159]
GO


