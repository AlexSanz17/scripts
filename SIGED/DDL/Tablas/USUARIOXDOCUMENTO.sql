USE [siged]
GO

/****** Object:  Table [dbo].[usuarioxdocumento]    Script Date: 19/10/2021 22:38:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usuarioxdocumento](
	[iddocumento] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[sololectura] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC,
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[usuarioxdocumento]  WITH CHECK ADD  CONSTRAINT [FK8083AAEA7D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[usuarioxdocumento] CHECK CONSTRAINT [FK8083AAEA7D375525]
GO

ALTER TABLE [dbo].[usuarioxdocumento]  WITH CHECK ADD  CONSTRAINT [FK8083AAEAEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[usuarioxdocumento] CHECK CONSTRAINT [FK8083AAEAEAD96159]
GO


