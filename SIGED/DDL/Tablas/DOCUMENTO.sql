USE [siged]
GO

/****** Object:  Table [dbo].[documento]    Script Date: 19/10/2021 00:01:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documento](
	[iddocumento] [int] NOT NULL,
	[ID_CLIENTE] [int] NULL,
	[ID_CODIGO] [int] NULL,
	[ID_EXTERNO] [int] NULL,
	[aniofiscal] [int] NULL,
	[asunto] [varchar](255) NULL,
	[bandeja] [int] NULL,
	[cargopropietario] [int] NOT NULL,
	[codCargoRemitente] [int] NULL,
	[codinfraestructura] [int] NULL,
	[codmateria] [int] NULL,
	[codRemitente] [int] NULL,
	[codTipoInstitucion] [int] NULL,
	[confidencial] [char](1) NULL,
	[contenido] [text] NULL,
	[creaexpediente] [char](1) NULL,
	[delexpediente] [varchar](255) NULL,
	[desCargoRemitente] [varchar](255) NULL,
	[desRemitente] [varchar](255) NULL,
	[desUnidadRemitente] [varchar](255) NULL,
	[despachado] [char](1) NOT NULL,
	[documentoasociado] [int] NULL,
	[documentoreferencia] [int] NULL,
	[enumerado] [char](1) NULL,
	[estaenflujo] [char](1) NULL,
	[estado] [char](1) NOT NULL,
	[estadoalarma] [char](1) NULL,
	[estadoplazo] [char](1) NULL,
	[fechaaccion] [datetime] NOT NULL,
	[fechacargo] [datetime] NULL,
	[fechacreacion] [datetime] NOT NULL,
	[fechacreacionmonth] [int] NULL,
	[fechacreacionyear] [int] NULL,
	[fechadocumento] [datetime] NULL,
	[fechalecturadocumento] [datetime] NULL,
	[fechalimiteatencion] [datetime] NULL,
	[fechamodificacion] [datetime] NULL,
	[fechareunion] [datetime] NULL,
	[firmado] [char](1) NULL,
	[flagMultiple] [varchar](255) NULL,
	[flagatendido] [varchar](255) NULL,
	[flaginicioflujo] [varchar](255) NULL,
	[flagsideco] [varchar](255) NULL,
	[idConcesionario] [int] NULL,
	[imagenesdigitalizadas] [int] NULL,
	[leido] [char](1) NULL,
	[lugar] [varchar](255) NULL,
	[nombrepclecturadocumento] [varchar](255) NULL,
	[nroVirtual] [int] NULL,
	[nrocaja] [varchar](255) NULL,
	[nrodocumento] [varchar](255) NULL,
	[nrofolios] [int] NULL,
	[nrofolioscopias] [int] NULL,
	[nrofoliosoriginales] [int] NULL,
	[nrofoliospide] [int] NULL,
	[nromesapartes] [varchar](255) NULL,
	[objetivo] [varchar](255) NULL,
	[observacion] [text] NULL,
	[observaciondigitalizador] [varchar](255) NULL,
	[observacionrechazo] [varchar](255) NULL,
	[origen] [int] NULL,
	[plazo] [int] NULL,
	[principal] [char](1) NOT NULL,
	[prioridad] [int] NULL,
	[proyecto] [int] NULL,
	[recepcionado] [varchar](255) NULL,
	[referenciados] [varchar](255) NULL,
	[remitente] [varchar](255) NULL,
	[ultimoasunto] [varchar](255) NULL,
	[unidadautor] [int] NOT NULL,
	[unidadenumera] [int] NULL,
	[unidadpropietario] [int] NOT NULL,
	[usuariomodificacion] [int] NULL,
	[usuariocreacion] [int] NULL,
	[accion] [int] NOT NULL,
	[autor] [int] NOT NULL,
	[enumerador] [int] NULL,
	[expediente] [int] NOT NULL,
	[firmante] [int] NULL,
	[propietario] [int] NULL,
	[tipodocumento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B457DCFB5A] FOREIGN KEY([enumerador])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B457DCFB5A]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B45B2BAC56] FOREIGN KEY([accion])
REFERENCES [dbo].[accion] ([idaccion])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B45B2BAC56]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B46D99CA42] FOREIGN KEY([firmante])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B46D99CA42]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B46E269032] FOREIGN KEY([codRemitente])
REFERENCES [dbo].[detalleCliente] ([idDetalleCliente])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B46E269032]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B4944B3849] FOREIGN KEY([autor])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B4944B3849]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B49D07F2D2] FOREIGN KEY([propietario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B49D07F2D2]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B49E6C984] FOREIGN KEY([codCargoRemitente])
REFERENCES [dbo].[cargoadministrado] ([idCargoAdministrado])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B49E6C984]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B4A6A9E148] FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[cliente] ([idcliente])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B4A6A9E148]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B4CBC51B4A] FOREIGN KEY([codTipoInstitucion])
REFERENCES [dbo].[tipoinstitucion] ([cod_tipoinstitucion])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B4CBC51B4A]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B4EC51E678] FOREIGN KEY([tipodocumento])
REFERENCES [dbo].[tipodocumento] ([idtipodocumento])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B4EC51E678]
GO

ALTER TABLE [dbo].[documento]  WITH CHECK ADD  CONSTRAINT [FK383D52B4FFABA616] FOREIGN KEY([expediente])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[documento] CHECK CONSTRAINT [FK383D52B4FFABA616]
GO


