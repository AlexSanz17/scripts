USE [siged]
GO

/****** Object:  Table [dbo].[unidad]    Script Date: 19/10/2021 22:34:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[unidad](
	[idunidad] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[finenvio] [varchar](255) NULL,
	[finrecepcion] [varchar](255) NULL,
	[iniciales] [varchar](255) NULL,
	[inicioenvio] [varchar](255) NULL,
	[iniciorecepcion] [varchar](255) NULL,
	[niveles] [varchar](255) NULL,
	[nombre] [varchar](255) NOT NULL,
	[rutaSite] [varchar](255) NULL,
	[sigla] [varchar](255) NULL,
	[siglaUnidad] [varchar](255) NULL,
	[unidadgrupo] [int] NULL,
	[dependencia] [int] NULL,
	[sede] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idunidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[unidad]  WITH CHECK ADD  CONSTRAINT [FKCDE65897A197432E] FOREIGN KEY([sede])
REFERENCES [dbo].[sede] ([idsede])
GO

ALTER TABLE [dbo].[unidad] CHECK CONSTRAINT [FKCDE65897A197432E]
GO

ALTER TABLE [dbo].[unidad]  WITH CHECK ADD  CONSTRAINT [FKCDE65897A22E11A5] FOREIGN KEY([dependencia])
REFERENCES [dbo].[unidad] ([idunidad])
GO

ALTER TABLE [dbo].[unidad] CHECK CONSTRAINT [FKCDE65897A22E11A5]
GO


