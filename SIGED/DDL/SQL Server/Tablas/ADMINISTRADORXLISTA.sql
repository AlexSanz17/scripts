USE [siged]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[administradorxlista](
	[idlista] [int] NOT NULL,
	[idusuario] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[administradorxlista]  WITH CHECK ADD  CONSTRAINT [FKA9C5B308EAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[administradorxlista] CHECK CONSTRAINT [FKA9C5B308EAD96159]
GO

ALTER TABLE [dbo].[administradorxlista]  WITH CHECK ADD  CONSTRAINT [FKA9C5B308EDA2DD43] FOREIGN KEY([idlista])
REFERENCES [dbo].[lista] ([idlista])
GO

ALTER TABLE [dbo].[administradorxlista] CHECK CONSTRAINT [FKA9C5B308EDA2DD43]
GO


