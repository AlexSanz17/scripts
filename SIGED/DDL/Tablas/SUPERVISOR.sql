USE [siged]
GO

/****** Object:  Table [dbo].[supervisor]    Script Date: 19/10/2021 19:44:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[supervisor](
	[idsupervisor] [int] IDENTITY(1,1) NOT NULL,
	[caja] [varchar](255) NULL,
	[estado] [char](1) NULL,
	[fechadentrega] [datetime] NULL,
	[fechadevolucion] [datetime] NULL,
	[fechadsolicitud] [datetime] NULL,
	[documento] [int] NULL,
	[expediente] [int] NULL,
	[usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idsupervisor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[supervisor]  WITH CHECK ADD  CONSTRAINT [FK9AD6536886D252D4] FOREIGN KEY([usuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[supervisor] CHECK CONSTRAINT [FK9AD6536886D252D4]
GO

ALTER TABLE [dbo].[supervisor]  WITH CHECK ADD  CONSTRAINT [FK9AD65368FEB9D3E0] FOREIGN KEY([documento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[supervisor] CHECK CONSTRAINT [FK9AD65368FEB9D3E0]
GO

ALTER TABLE [dbo].[supervisor]  WITH CHECK ADD  CONSTRAINT [FK9AD65368FFABA616] FOREIGN KEY([expediente])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[supervisor] CHECK CONSTRAINT [FK9AD65368FFABA616]
GO


