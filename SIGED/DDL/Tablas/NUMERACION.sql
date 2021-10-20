USE [siged]
GO

/****** Object:  Table [dbo].[numeracion]    Script Date: 19/10/2021 19:11:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[numeracion](
	[idtipodocumento] [int] NOT NULL,
	[idunidad] [int] NOT NULL,
	[aniofiscal] [int] NULL,
	[destinatario] [char](1) NULL,
	[fechamodificacion] [datetime] NULL,
	[firmante] [char](1) NULL,
	[formato] [varchar](255) NULL,
	[numeroactual] [int] NULL,
	[tiponumeracion] [char](1) NULL,
	[usuariomodificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idtipodocumento] ASC,
	[idunidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[numeracion]  WITH CHECK ADD  CONSTRAINT [FK9C98C9D31F33D3D] FOREIGN KEY([idtipodocumento])
REFERENCES [dbo].[tipodocumento] ([idtipodocumento])
GO

ALTER TABLE [dbo].[numeracion] CHECK CONSTRAINT [FK9C98C9D31F33D3D]
GO

ALTER TABLE [dbo].[numeracion]  WITH CHECK ADD  CONSTRAINT [FK9C98C9D3E5F36291] FOREIGN KEY([idunidad])
REFERENCES [dbo].[unidad] ([idunidad])
GO

ALTER TABLE [dbo].[numeracion] CHECK CONSTRAINT [FK9C98C9D3E5F36291]
GO


