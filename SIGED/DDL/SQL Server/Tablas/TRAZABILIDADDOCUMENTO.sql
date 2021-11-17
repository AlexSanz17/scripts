USE [siged]
GO

/****** Object:  Table [dbo].[trazabilidaddocumento]    Script Date: 19/10/2021 22:31:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[trazabilidaddocumento](
	[idtrazabilidaddocumento] [int] IDENTITY(1,1) NOT NULL,
	[actividad] [varchar](255) NULL,
	[asunto] [varchar](255) NULL,
	[cargodestinatario] [int] NULL,
	[cargoremitente] [int] NULL,
	[contenido] [text] NULL,
	[fechacreacion] [datetime] NOT NULL,
	[fechacreacionmonth] [int] NULL,
	[fechacreacionyear] [int] NULL,
	[fechalimiteatencion] [datetime] NULL,
	[idactividad] [int] NULL,
	[idproveido] [int] NULL,
	[indalerta] [varchar](255) NULL,
	[nombrepc] [varchar](255) NULL,
	[nroregistro] [int] NULL,
	[observacion] [text] NULL,
	[plazo] [int] NULL,
	[prioridad] [int] NULL,
	[unidaddestinatario] [int] NULL,
	[unidadremitente] [int] NULL,
	[usuariocreacion] [int] NULL,
	[verseguimiento] [char](1) NULL,
	[accion] [int] NOT NULL,
	[compartido] [int] NULL,
	[destinatario] [int] NOT NULL,
	[documento] [int] NOT NULL,
	[idetapa] [int] NULL,
	[idproceso] [int] NULL,
	[remitente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idtrazabilidaddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[trazabilidaddocumento]  WITH CHECK ADD  CONSTRAINT [FK69F0B51B3CBC0577] FOREIGN KEY([destinatario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[trazabilidaddocumento] CHECK CONSTRAINT [FK69F0B51B3CBC0577]
GO

ALTER TABLE [dbo].[trazabilidaddocumento]  WITH CHECK ADD  CONSTRAINT [FK69F0B51B5B2BAC56] FOREIGN KEY([accion])
REFERENCES [dbo].[accion] ([idaccion])
GO

ALTER TABLE [dbo].[trazabilidaddocumento] CHECK CONSTRAINT [FK69F0B51B5B2BAC56]
GO

ALTER TABLE [dbo].[trazabilidaddocumento]  WITH CHECK ADD  CONSTRAINT [FK69F0B51B5C6D24E6] FOREIGN KEY([compartido])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[trazabilidaddocumento] CHECK CONSTRAINT [FK69F0B51B5C6D24E6]
GO

ALTER TABLE [dbo].[trazabilidaddocumento]  WITH CHECK ADD  CONSTRAINT [FK69F0B51BD0D3D145] FOREIGN KEY([remitente])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[trazabilidaddocumento] CHECK CONSTRAINT [FK69F0B51BD0D3D145]
GO

ALTER TABLE [dbo].[trazabilidaddocumento]  WITH CHECK ADD  CONSTRAINT [FK69F0B51BD5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[trazabilidaddocumento] CHECK CONSTRAINT [FK69F0B51BD5C9B7D3]
GO

ALTER TABLE [dbo].[trazabilidaddocumento]  WITH CHECK ADD  CONSTRAINT [FK69F0B51BE58472D3] FOREIGN KEY([idproveido])
REFERENCES [dbo].[proveido] ([idproveido])
GO

ALTER TABLE [dbo].[trazabilidaddocumento] CHECK CONSTRAINT [FK69F0B51BE58472D3]
GO

ALTER TABLE [dbo].[trazabilidaddocumento]  WITH CHECK ADD  CONSTRAINT [FK69F0B51BECE70C43] FOREIGN KEY([idetapa])
REFERENCES [dbo].[etapa] ([idetapa])
GO

ALTER TABLE [dbo].[trazabilidaddocumento] CHECK CONSTRAINT [FK69F0B51BECE70C43]
GO

ALTER TABLE [dbo].[trazabilidaddocumento]  WITH CHECK ADD  CONSTRAINT [FK69F0B51BFEB9D3E0] FOREIGN KEY([documento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[trazabilidaddocumento] CHECK CONSTRAINT [FK69F0B51BFEB9D3E0]
GO


