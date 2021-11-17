USE [siged]
GO

/****** Object:  Table [dbo].[rol]    Script Date: 19/10/2021 19:34:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[rol](
	[idrol] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[enumerararea] [char](1) NOT NULL,
	[enumerargerencia] [char](1) NOT NULL,
	[enumerarpresidencia] [char](1) NOT NULL,
	[esJefe] [char](1) NOT NULL,
	[estado] [char](1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[idperfil] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idrol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[rol]  WITH CHECK ADD  CONSTRAINT [FK1B9CFD3ED84FB] FOREIGN KEY([idperfil])
REFERENCES [dbo].[perfil] ([idperfil])
GO

ALTER TABLE [dbo].[rol] CHECK CONSTRAINT [FK1B9CFD3ED84FB]
GO


