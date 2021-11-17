USE [siged]
GO

/****** Object:  Table [dbo].[participantexproceso]    Script Date: 19/10/2021 19:14:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[participantexproceso](
	[idproceso] [int] NOT NULL,
	[idusuario] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[participantexproceso]  WITH CHECK ADD  CONSTRAINT [FK503A6C85D5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[participantexproceso] CHECK CONSTRAINT [FK503A6C85D5C9B7D3]
GO

ALTER TABLE [dbo].[participantexproceso]  WITH CHECK ADD  CONSTRAINT [FK503A6C85EAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[participantexproceso] CHECK CONSTRAINT [FK503A6C85EAD96159]
GO


