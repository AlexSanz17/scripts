USE [siged]
GO

/****** Object:  Table [dbo].[recursoxperfil]    Script Date: 19/10/2021 19:24:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[recursoxperfil](
	[idperfil] [int] NOT NULL,
	[idrecurso] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[recursoxperfil]  WITH CHECK ADD  CONSTRAINT [FKB391E1DB7BC32F8F] FOREIGN KEY([idrecurso])
REFERENCES [dbo].[recurso] ([idrecurso])
GO

ALTER TABLE [dbo].[recursoxperfil] CHECK CONSTRAINT [FKB391E1DB7BC32F8F]
GO

ALTER TABLE [dbo].[recursoxperfil]  WITH CHECK ADD  CONSTRAINT [FKB391E1DBD3ED84FB] FOREIGN KEY([idperfil])
REFERENCES [dbo].[perfil] ([idperfil])
GO

ALTER TABLE [dbo].[recursoxperfil] CHECK CONSTRAINT [FKB391E1DBD3ED84FB]
GO


