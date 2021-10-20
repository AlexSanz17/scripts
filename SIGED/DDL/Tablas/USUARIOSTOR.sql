USE [siged]
GO

/****** Object:  Table [dbo].[usuariostor]    Script Date: 19/10/2021 22:37:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usuariostor](
	[nroapelaciones] [int] NULL,
	[nrocautelares] [int] NULL,
	[nroquejas] [int] NULL,
	[responsable] [char](1) NULL,
	[usuariointalio] [varchar](255) NULL,
	[idusuario] [int] NOT NULL,
	[sala] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[usuariostor]  WITH CHECK ADD  CONSTRAINT [FK3121B432A197270E] FOREIGN KEY([sala])
REFERENCES [dbo].[sala] ([idsala])
GO

ALTER TABLE [dbo].[usuariostor] CHECK CONSTRAINT [FK3121B432A197270E]
GO

ALTER TABLE [dbo].[usuariostor]  WITH CHECK ADD  CONSTRAINT [FK3121B432EAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[usuariostor] CHECK CONSTRAINT [FK3121B432EAD96159]
GO


