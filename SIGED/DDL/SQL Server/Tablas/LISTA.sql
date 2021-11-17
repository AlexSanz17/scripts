USE [siged]
GO

/****** Object:  Table [dbo].[lista]    Script Date: 19/10/2021 19:04:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lista](
	[idlista] [int] IDENTITY(1,1) NOT NULL,
	[estado] [char](1) NOT NULL,
	[fechacreacion] [datetime] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[idpropietario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idlista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[lista]  WITH CHECK ADD  CONSTRAINT [FK6236383722A36D7] FOREIGN KEY([idpropietario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[lista] CHECK CONSTRAINT [FK6236383722A36D7]
GO


