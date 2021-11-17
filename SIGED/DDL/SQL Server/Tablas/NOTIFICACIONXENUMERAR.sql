USE [siged]
GO

/****** Object:  Table [dbo].[notificacionxenumerar]    Script Date: 19/10/2021 19:10:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[notificacionxenumerar](
	[iddocumento] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[TIPONOTIFICACION] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC,
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[notificacionxenumerar]  WITH CHECK ADD  CONSTRAINT [FK9744B77B7D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[notificacionxenumerar] CHECK CONSTRAINT [FK9744B77B7D375525]
GO

ALTER TABLE [dbo].[notificacionxenumerar]  WITH CHECK ADD  CONSTRAINT [FK9744B77BEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[notificacionxenumerar] CHECK CONSTRAINT [FK9744B77BEAD96159]
GO


