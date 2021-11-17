USE [siged]
GO

/****** Object:  Table [dbo].[datos]    Script Date: 18/10/2021 23:56:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[datos](
	[idmensajeria] [int] NOT NULL,
	[departamento] [varchar](255) NULL,
	[direccion] [varchar](255) NULL,
	[distrito] [varchar](255) NULL,
	[numerointerno] [varchar](255) NULL,
	[provincia] [varchar](255) NULL,
	[referencia] [varchar](255) NULL,
	[usuariodestino] [varchar](255) NULL,
	[idambitoenvio] [int] NULL,
	[idempresadestino] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idmensajeria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[datos]  WITH CHECK ADD  CONSTRAINT [FK5AF07BB80CB2121] FOREIGN KEY([idempresadestino])
REFERENCES [dbo].[empresadestino] ([idempresadestino])
GO

ALTER TABLE [dbo].[datos] CHECK CONSTRAINT [FK5AF07BB80CB2121]
GO

ALTER TABLE [dbo].[datos]  WITH CHECK ADD  CONSTRAINT [FK5AF07BBDC820527] FOREIGN KEY([idambitoenvio])
REFERENCES [dbo].[ambitoenvio] ([idambitoenvio])
GO

ALTER TABLE [dbo].[datos] CHECK CONSTRAINT [FK5AF07BBDC820527]
GO


