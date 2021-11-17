USE [siged]
GO

/****** Object:  Table [dbo].[referenciaarchivo]    Script Date: 19/10/2021 19:25:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[referenciaarchivo](
	[idRefArc] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[idarchivo] [int] NULL,
	[iddocumento] [int] NULL,
	[iddocumentoreferencia] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idRefArc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[referenciaarchivo]  WITH CHECK ADD  CONSTRAINT [FK8605619A7D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[referenciaarchivo] CHECK CONSTRAINT [FK8605619A7D375525]
GO

ALTER TABLE [dbo].[referenciaarchivo]  WITH CHECK ADD  CONSTRAINT [FK8605619A810A1CD7] FOREIGN KEY([iddocumentoreferencia])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[referenciaarchivo] CHECK CONSTRAINT [FK8605619A810A1CD7]
GO


