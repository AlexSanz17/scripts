USE [siged]
GO

/****** Object:  Table [dbo].[vistabandeja]    Script Date: 19/10/2021 22:42:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vistabandeja](
	[id] [int] NOT NULL,
	[actividad] [varchar](255) NULL,
	[archivos] [int] NULL,
	[asunto] [varchar](255) NULL,
	[asuntoexpediente] [varchar](255) NULL,
	[cargopropietario] [int] NULL,
	[chrestado] [char](1) NULL,
	[cliente] [varchar](255) NULL,
	[concesionario] [varchar](255) NULL,
	[despachado] [char](1) NOT NULL,
	[despacho] [varchar](255) NULL,
	[desunidadautor] [varchar](255) NULL,
	[desunidadremitente] [varchar](255) NULL,
	[documento] [varchar](255) NULL,
	[documentoreferencia] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[estadorecepcionvirtual] [varchar](255) NULL,
	[etapa] [varchar](255) NULL,
	[expediente] [varchar](255) NULL,
	[externo] [varchar](255) NULL,
	[fechaaccion] [datetime] NULL,
	[fechacreaciontraza] [datetime] NULL,
	[fechalimite] [datetime] NULL,
	[fechalimitetraza] [datetime] NULL,
	[firmado] [varchar](255) NULL,
	[flagatendido] [varchar](255) NULL,
	[flagmultiple] [varchar](255) NULL,
	[idcliente] [int] NULL,
	[tipodocumento] [int] NULL,
	[iniciales] [varchar](255) NULL,
	[leido] [varchar](255) NULL,
	[llave] [varchar](255) NULL,
	[nroTramite] [int] NULL,
	[numerotrazabilidad] [int] NULL,
	[numeromesapartes] [varchar](255) NULL,
	[origen] [int] NULL,
	[pendiente] [varchar](255) NULL,
	[porcentaje_a] [varchar](255) NULL,
	[porcentaje_r] [varchar](255) NULL,
	[prioridad] [varchar](255) NULL,
	[prioridadtraza] [varchar](255) NULL,
	[tipoalerta] [varchar](255) NULL,
	[unidadautor] [int] NULL,
	[unidadpropietario] [int] NULL,
	[unidadremitente] [int] NULL,
	[urlarchivo] [varchar](255) NULL,
	[virtual] [varchar](255) NULL,
	[idaccion] [int] NULL,
	[idautor] [int] NULL,
	[idproceso] [int] NULL,
	[propietario] [int] NULL,
	[idremitente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[vistabandeja]  WITH CHECK ADD  CONSTRAINT [FKD1E782DA4F51528A] FOREIGN KEY([idremitente])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[vistabandeja] CHECK CONSTRAINT [FKD1E782DA4F51528A]
GO

ALTER TABLE [dbo].[vistabandeja]  WITH CHECK ADD  CONSTRAINT [FKD1E782DA9D07F2D2] FOREIGN KEY([propietario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[vistabandeja] CHECK CONSTRAINT [FKD1E782DA9D07F2D2]
GO

ALTER TABLE [dbo].[vistabandeja]  WITH CHECK ADD  CONSTRAINT [FKD1E782DAA0763931] FOREIGN KEY([idaccion])
REFERENCES [dbo].[accion] ([idaccion])
GO

ALTER TABLE [dbo].[vistabandeja] CHECK CONSTRAINT [FKD1E782DAA0763931]
GO

ALTER TABLE [dbo].[vistabandeja]  WITH CHECK ADD  CONSTRAINT [FKD1E782DAD5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[vistabandeja] CHECK CONSTRAINT [FKD1E782DAD5C9B7D3]
GO

ALTER TABLE [dbo].[vistabandeja]  WITH CHECK ADD  CONSTRAINT [FKD1E782DAF15E240E] FOREIGN KEY([idautor])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[vistabandeja] CHECK CONSTRAINT [FKD1E782DAF15E240E]
GO


