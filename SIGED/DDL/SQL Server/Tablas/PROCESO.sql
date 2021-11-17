USE [siged]
GO

/****** Object:  Table [dbo].[proceso]    Script Date: 19/10/2021 19:19:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[proceso](
	[idproceso] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](255) NULL,
	[config_notif_mail] [int] NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [char](1) NOT NULL,
	[fechacreacion] [datetime] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[nombreIntalio] [varchar](255) NULL,
	[permitemetadata] [char](1) NULL,
	[permitesumilla] [char](1) NULL,
	[porcentajealerta1] [varchar](255) NULL,
	[porcentajealerta2] [varchar](255) NULL,
	[produccion] [char](1) NULL,
	[tiempoatencion] [int] NULL,
	[tiponumeracion] [char](1) NULL,
	[vigencia] [varchar](255) NULL,
	[idasistente] [int] NULL,
	[idgrupoproceso] [int] NULL,
	[idtipoacceso] [int] NOT NULL,
	[responsable] [int] NULL,
	[tipoproceso] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idproceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[proceso]  WITH CHECK ADD  CONSTRAINT [FKED8D1E6B628DF0DD] FOREIGN KEY([idasistente])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[proceso] CHECK CONSTRAINT [FKED8D1E6B628DF0DD]
GO

ALTER TABLE [dbo].[proceso]  WITH CHECK ADD  CONSTRAINT [FKED8D1E6BA888EB0B] FOREIGN KEY([idtipoacceso])
REFERENCES [dbo].[tipoacceso] ([idtipoacceso])
GO

ALTER TABLE [dbo].[proceso] CHECK CONSTRAINT [FKED8D1E6BA888EB0B]
GO

ALTER TABLE [dbo].[proceso]  WITH CHECK ADD  CONSTRAINT [FKED8D1E6BFAEE81E6] FOREIGN KEY([tipoproceso])
REFERENCES [dbo].[tipoproceso] ([idtipoproceso])
GO

ALTER TABLE [dbo].[proceso] CHECK CONSTRAINT [FKED8D1E6BFAEE81E6]
GO

ALTER TABLE [dbo].[proceso]  WITH CHECK ADD  CONSTRAINT [FKED8D1E6BFCDB03A4] FOREIGN KEY([responsable])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[proceso] CHECK CONSTRAINT [FKED8D1E6BFCDB03A4]
GO

ALTER TABLE [dbo].[proceso]  WITH CHECK ADD  CONSTRAINT [FKED8D1E6BFDAACEE7] FOREIGN KEY([idgrupoproceso])
REFERENCES [dbo].[GRUPOPROCESO] ([IDGRUPOPROCESO])
GO

ALTER TABLE [dbo].[proceso] CHECK CONSTRAINT [FKED8D1E6BFDAACEE7]
GO


