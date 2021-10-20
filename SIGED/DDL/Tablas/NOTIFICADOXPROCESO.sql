USE [siged]
GO

/****** Object:  Table [dbo].[notificadoxproceso]    Script Date: 19/10/2021 19:11:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[notificadoxproceso](
	[idproceso] [int] NOT NULL,
	[idusuario] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[notificadoxproceso]  WITH CHECK ADD  CONSTRAINT [FKD5AB115D5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[notificadoxproceso] CHECK CONSTRAINT [FKD5AB115D5C9B7D3]
GO

ALTER TABLE [dbo].[notificadoxproceso]  WITH CHECK ADD  CONSTRAINT [FKD5AB115EAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[notificadoxproceso] CHECK CONSTRAINT [FKD5AB115EAD96159]
GO


