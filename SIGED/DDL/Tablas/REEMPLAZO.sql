USE [siged]
GO

/****** Object:  Table [dbo].[reemplazo]    Script Date: 19/10/2021 19:24:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[reemplazo](
	[idreemplazo] [int] IDENTITY(1,1) NOT NULL,
	[estado] [char](1) NOT NULL,
	[fechafinalreemplazo] [datetime] NULL,
	[fechainicialreemplazo] [datetime] NULL,
	[idproceso] [int] NOT NULL,
	[idreemplazado] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idreemplazo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[reemplazo]  WITH CHECK ADD  CONSTRAINT [FKA1829A9FEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[reemplazo] CHECK CONSTRAINT [FKA1829A9FEAD96159]
GO


