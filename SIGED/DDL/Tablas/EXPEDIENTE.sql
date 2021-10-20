USE [siged]
GO

/****** Object:  Table [dbo].[expediente]    Script Date: 19/10/2021 18:46:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[expediente](
	[idexpediente] [int] IDENTITY(1,1) NOT NULL,
	[actividad] [varchar](255) NULL,
	[asunto] [varchar](255) NULL,
	[clienteapellidomaterno] [varchar](255) NULL,
	[clienteapellidopaterno] [varchar](255) NULL,
	[clientecorreo] [varchar](255) NULL,
	[clientedireccionalternativa] [varchar](255) NULL,
	[clientedireccionprincipal] [varchar](255) NULL,
	[clientenombres] [varchar](255) NULL,
	[clienterazonsocial] [varchar](255) NULL,
	[clienterepresentantelegal] [varchar](255) NULL,
	[clientetelefono] [varchar](255) NULL,
	[clienteubigeoalternativo] [int] NULL,
	[clienteubigeoprincipal] [int] NULL,
	[contenido] [text] NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [char](1) NOT NULL,
	[estaenflujo] [char](1) NULL,
	[fechaarchivar] [datetime] NULL,
	[fechacreacion] [datetime] NOT NULL,
	[fechamodificacion] [datetime] NULL,
	[historico] [char](1) NULL,
	[idunidad] [int] NULL,
	[nroexpediente] [varchar](255) NOT NULL,
	[NROINTERNO] [varchar](255) NULL,
	[observacion] [varchar](255) NULL,
	[observacionarchivar] [varchar](255) NULL,
	[observacionrechazo] [varchar](255) NULL,
	[oefa] [char](1) NULL,
	[sumilla] [varchar](255) NULL,
	[usuariocreacion] [int] NULL,
	[usuariomodificacion] [int] NULL,
	[cliente] [int] NULL,
	[concesionario] [int] NULL,
	[idactividad] [int] NULL,
	[idetapa] [int] NULL,
	[idpropietario] [int] NOT NULL,
	[serie] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idexpediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[expediente]  WITH CHECK ADD  CONSTRAINT [FKE30282C725211037] FOREIGN KEY([idactividad])
REFERENCES [dbo].[actividad] ([idactividad])
GO

ALTER TABLE [dbo].[expediente] CHECK CONSTRAINT [FKE30282C725211037]
GO

ALTER TABLE [dbo].[expediente]  WITH CHECK ADD  CONSTRAINT [FKE30282C72EC4EFD8] FOREIGN KEY([concesionario])
REFERENCES [dbo].[concesionario] ([idconcesionario])
GO

ALTER TABLE [dbo].[expediente] CHECK CONSTRAINT [FKE30282C72EC4EFD8]
GO

ALTER TABLE [dbo].[expediente]  WITH CHECK ADD  CONSTRAINT [FKE30282C7722A36D7] FOREIGN KEY([idpropietario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[expediente] CHECK CONSTRAINT [FKE30282C7722A36D7]
GO

ALTER TABLE [dbo].[expediente]  WITH CHECK ADD  CONSTRAINT [FKE30282C791518D70] FOREIGN KEY([serie])
REFERENCES [dbo].[serie] ([idserie])
GO

ALTER TABLE [dbo].[expediente] CHECK CONSTRAINT [FKE30282C791518D70]
GO

ALTER TABLE [dbo].[expediente]  WITH CHECK ADD  CONSTRAINT [FKE30282C7ECE70C43] FOREIGN KEY([idetapa])
REFERENCES [dbo].[etapa] ([idetapa])
GO

ALTER TABLE [dbo].[expediente] CHECK CONSTRAINT [FKE30282C7ECE70C43]
GO

ALTER TABLE [dbo].[expediente]  WITH CHECK ADD  CONSTRAINT [FKE30282C7FD3F786C] FOREIGN KEY([cliente])
REFERENCES [dbo].[cliente] ([idcliente])
GO

ALTER TABLE [dbo].[expediente] CHECK CONSTRAINT [FKE30282C7FD3F786C]
GO


