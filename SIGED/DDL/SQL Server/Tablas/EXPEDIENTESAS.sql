USE [siged]
GO

/****** Object:  Table [dbo].[expedientesas]    Script Date: 19/10/2021 18:47:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[expedientesas](
	[idexpediente] [int] NOT NULL,
	[fechaampd] [datetime] NULL,
	[fechacargoficio] [datetime] NULL,
	[idtrazabilidad] [int] NULL,
	[observaciondesc] [varchar](255) NULL,
	[analista] [int] NULL,
	[idunidad] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[idprocedimiento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idexpediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[expedientesas]  WITH CHECK ADD  CONSTRAINT [FK61326FBE50DE4D71] FOREIGN KEY([idexpediente])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[expedientesas] CHECK CONSTRAINT [FK61326FBE50DE4D71]
GO

ALTER TABLE [dbo].[expedientesas]  WITH CHECK ADD  CONSTRAINT [FK61326FBE51A64DD5] FOREIGN KEY([analista])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[expedientesas] CHECK CONSTRAINT [FK61326FBE51A64DD5]
GO

ALTER TABLE [dbo].[expedientesas]  WITH CHECK ADD  CONSTRAINT [FK61326FBEA1E82D65] FOREIGN KEY([idprocedimiento])
REFERENCES [dbo].[procedimiento] ([idprocedimiento])
GO

ALTER TABLE [dbo].[expedientesas] CHECK CONSTRAINT [FK61326FBEA1E82D65]
GO

ALTER TABLE [dbo].[expedientesas]  WITH CHECK ADD  CONSTRAINT [FK61326FBEE5F36291] FOREIGN KEY([idunidad])
REFERENCES [dbo].[unidad] ([idunidad])
GO

ALTER TABLE [dbo].[expedientesas] CHECK CONSTRAINT [FK61326FBEE5F36291]
GO

ALTER TABLE [dbo].[expedientesas]  WITH CHECK ADD  CONSTRAINT [FK61326FBEEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[expedientesas] CHECK CONSTRAINT [FK61326FBEEAD96159]
GO


