USE [siged]
GO

/****** Object:  Table [dbo].[expedientestor]    Script Date: 19/10/2021 18:50:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[expedientestor](
	[idexpediente] [int] NOT NULL,
	[nroresolucion] [varchar](255) NULL,
	[reclamanteapellidomaterno] [varchar](255) NULL,
	[reclamanteapellidopaterno] [varchar](255) NULL,
	[reclamantecorreo] [varchar](255) NULL,
	[reclamantedireccionprocesal] [varchar](255) NULL,
	[reclamantedireccionreal] [varchar](255) NULL,
	[reclamantefax] [varchar](255) NULL,
	[reclamantenombres] [varchar](255) NULL,
	[reclamantenrosuministro] [varchar](255) NULL,
	[reclamanterazonsocial] [varchar](255) NULL,
	[reclamanterepresentantelegal] [varchar](255) NULL,
	[reclamantetelefono] [varchar](255) NULL,
	[requiereverificacion] [char](1) NULL,
	[tipoanalisis] [varchar](255) NULL,
	[tipoexpediente] [varchar](255) NULL,
	[analista] [int] NULL,
	[estado] [int] NULL,
	[etapa] [int] NULL,
	[idestadosiged] [int] NULL,
	[idreclamante] [int] NULL,
	[reclamanteubigeoprocesal] [int] NULL,
	[reclamanteubigeoreal] [int] NULL,
	[revisorlegal] [int] NULL,
	[revisortecnico] [int] NULL,
	[sala] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idexpediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4B14E317D] FOREIGN KEY([idestadosiged])
REFERENCES [dbo].[estado] ([idestado])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4B14E317D]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4B242721D3] FOREIGN KEY([revisorlegal])
REFERENCES [dbo].[usuariostor] ([idusuario])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4B242721D3]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4B4F0E5F0A] FOREIGN KEY([reclamanteubigeoprocesal])
REFERENCES [dbo].[distrito] ([iddistrito])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4B4F0E5F0A]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4B50DE4D71] FOREIGN KEY([idexpediente])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4B50DE4D71]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4B6AA49754] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([idestado])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4B6AA49754]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4B6BA86993] FOREIGN KEY([revisortecnico])
REFERENCES [dbo].[usuariostor] ([idusuario])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4B6BA86993]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4B8BC3F833] FOREIGN KEY([idreclamante])
REFERENCES [dbo].[cliente] ([idcliente])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4B8BC3F833]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4B8FD4207E] FOREIGN KEY([etapa])
REFERENCES [dbo].[etapa] ([idetapa])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4B8FD4207E]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4BA197270E] FOREIGN KEY([sala])
REFERENCES [dbo].[sala] ([idsala])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4BA197270E]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4BAB28E079] FOREIGN KEY([reclamanteubigeoreal])
REFERENCES [dbo].[distrito] ([iddistrito])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4BAB28E079]
GO

ALTER TABLE [dbo].[expedientestor]  WITH CHECK ADD  CONSTRAINT [FKC51BCF4BEF2986F9] FOREIGN KEY([analista])
REFERENCES [dbo].[usuariostor] ([idusuario])
GO

ALTER TABLE [dbo].[expedientestor] CHECK CONSTRAINT [FKC51BCF4BEF2986F9]
GO


