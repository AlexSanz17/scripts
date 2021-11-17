USE [siged]
GO

/****** Object:  Table [dbo].[resolucionjaru]    Script Date: 19/10/2021 19:31:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[resolucionjaru](
	[idresolucion] [int] IDENTITY(1,1) NOT NULL,
	[fechaaprobacion] [datetime] NULL,
	[fechacumplimiento] [datetime] NULL,
	[fechaelevacion] [datetime] NULL,
	[fechanotificacionconcesionario] [datetime] NULL,
	[fechanotificacionreclamante] [datetime] NULL,
	[fechasesion] [datetime] NULL,
	[nroresolucion] [varchar](255) NULL,
	[plazo] [int] NULL,
	[expediente] [int] NULL,
	[resultado] [int] NULL,
	[idvocal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idresolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[resolucionjaru]  WITH CHECK ADD  CONSTRAINT [FK26DAF19757CCF8A2] FOREIGN KEY([resultado])
REFERENCES [dbo].[tiporesultado] ([idtiporesultado])
GO

ALTER TABLE [dbo].[resolucionjaru] CHECK CONSTRAINT [FK26DAF19757CCF8A2]
GO

ALTER TABLE [dbo].[resolucionjaru]  WITH CHECK ADD  CONSTRAINT [FK26DAF19774F16E9A] FOREIGN KEY([expediente])
REFERENCES [dbo].[expedientestor] ([idexpediente])
GO

ALTER TABLE [dbo].[resolucionjaru] CHECK CONSTRAINT [FK26DAF19774F16E9A]
GO

ALTER TABLE [dbo].[resolucionjaru]  WITH CHECK ADD  CONSTRAINT [FK26DAF197EEC1AB27] FOREIGN KEY([idvocal])
REFERENCES [dbo].[VOCAL] ([idvocal])
GO

ALTER TABLE [dbo].[resolucionjaru] CHECK CONSTRAINT [FK26DAF197EEC1AB27]
GO


