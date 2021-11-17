USE [siged]
GO

/****** Object:  Table [dbo].[pconfidencialxproceso]    Script Date: 19/10/2021 19:15:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[pconfidencialxproceso](
	[idproceso] [int] NOT NULL,
	[idusuario] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[pconfidencialxproceso]  WITH CHECK ADD  CONSTRAINT [FKDC63459CD5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[pconfidencialxproceso] CHECK CONSTRAINT [FKDC63459CD5C9B7D3]
GO

ALTER TABLE [dbo].[pconfidencialxproceso]  WITH CHECK ADD  CONSTRAINT [FKDC63459CEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[pconfidencialxproceso] CHECK CONSTRAINT [FKDC63459CEAD96159]
GO


