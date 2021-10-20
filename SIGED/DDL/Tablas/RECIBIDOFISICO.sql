USE [siged]
GO

/****** Object:  Table [dbo].[recibidofisico]    Script Date: 19/10/2021 19:22:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[recibidofisico](
	[idrecibidofisico] [int] IDENTITY(1,1) NOT NULL,
	[fechaenvio] [datetime] NOT NULL,
	[fecharegistro] [datetime] NULL,
	[nroregistro] [int] NOT NULL,
	[observacion] [text] NULL,
	[idusuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idrecibidofisico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[recibidofisico]  WITH CHECK ADD  CONSTRAINT [FK45F97CB0EAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[recibidofisico] CHECK CONSTRAINT [FK45F97CB0EAD96159]
GO


