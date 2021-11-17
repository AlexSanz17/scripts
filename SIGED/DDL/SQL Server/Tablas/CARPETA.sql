USE [siged]
GO

/****** Object:  Table [dbo].[carpeta]    Script Date: 18/10/2021 23:46:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[carpeta](
	[idcarpeta] [int] IDENTITY(1,1) NOT NULL,
	[fechacreacion] [datetime] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[carpetapadre] [int] NULL,
	[idexpediente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcarpeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[carpeta]  WITH CHECK ADD  CONSTRAINT [FK2109E8F650DE4D71] FOREIGN KEY([idexpediente])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[carpeta] CHECK CONSTRAINT [FK2109E8F650DE4D71]
GO

ALTER TABLE [dbo].[carpeta]  WITH CHECK ADD  CONSTRAINT [FK2109E8F662B97C3E] FOREIGN KEY([carpetapadre])
REFERENCES [dbo].[carpeta] ([idcarpeta])
GO

ALTER TABLE [dbo].[carpeta] CHECK CONSTRAINT [FK2109E8F662B97C3E]
GO


