USE [siged]
GO

/****** Object:  Table [dbo].[cliente]    Script Date: 18/10/2021 23:49:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cliente](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[apellidomaterno] [varchar](255) NULL,
	[apellidopaterno] [varchar](255) NULL,
	[codCargoCliente] [int] NULL,
	[codtipoinstitucion] [int] NULL,
	[concesion] [varchar](255) NULL,
	[correo] [varchar](255) NULL,
	[direccionalternativa] [varchar](255) NULL,
	[direccionprincipal] [varchar](255) NULL,
	[estado] [char](1) NULL,
	[fechacreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[flagPide] [varchar](255) NULL,
	[idUnidad] [int] NULL,
	[nombres] [varchar](255) NULL,
	[nroidentificacion] [varchar](255) NOT NULL,
	[razonsocial] [varchar](255) NULL,
	[representantelegal] [varchar](255) NULL,
	[telefono] [varchar](255) NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
	[tipoidentificacion] [int] NOT NULL,
	[ubigeoalternativo] [int] NULL,
	[ubigeoprincipal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK334B85FA2154D99] FOREIGN KEY([ubigeoprincipal])
REFERENCES [dbo].[distrito] ([iddistrito])
GO

ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK334B85FA2154D99]
GO

ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK334B85FA89C1F92E] FOREIGN KEY([tipoidentificacion])
REFERENCES [dbo].[tipoidentificacion] ([idtipoidentificacion])
GO

ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK334B85FA89C1F92E]
GO

ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK334B85FAA64FDE62] FOREIGN KEY([ubigeoalternativo])
REFERENCES [dbo].[distrito] ([iddistrito])
GO

ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK334B85FAA64FDE62]
GO

ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK334B85FACBC51B4A] FOREIGN KEY([codtipoinstitucion])
REFERENCES [dbo].[tipoinstitucion] ([cod_tipoinstitucion])
GO

ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK334B85FACBC51B4A]
GO


