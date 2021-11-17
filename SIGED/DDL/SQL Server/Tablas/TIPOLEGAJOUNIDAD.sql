USE [siged]
GO

/****** Object:  Table [dbo].[tipolegajounidad]    Script Date: 19/10/2021 22:27:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tipolegajounidad](
	[idTipoLegajoUnidad] [int] IDENTITY(1,1) NOT NULL,
	[accion] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[idTipo] [int] NULL,
	[idUnidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoLegajoUnidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tipolegajounidad]  WITH CHECK ADD  CONSTRAINT [FK828CA063E5F36291] FOREIGN KEY([idUnidad])
REFERENCES [dbo].[unidad] ([idunidad])
GO

ALTER TABLE [dbo].[tipolegajounidad] CHECK CONSTRAINT [FK828CA063E5F36291]
GO


