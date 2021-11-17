USE [siged]
GO

/****** Object:  Table [dbo].[gridcolumnaxusuario]    Script Date: 19/10/2021 18:56:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gridcolumnaxusuario](
	[idgridcolumna] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[hidden] [int] NOT NULL,
	[ordenado] [char](1) NOT NULL,
	[position] [int] NOT NULL,
	[width] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idgridcolumna] ASC,
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[gridcolumnaxusuario]  WITH CHECK ADD  CONSTRAINT [FK8225587B54952CC5] FOREIGN KEY([idgridcolumna])
REFERENCES [dbo].[gridxgridcolumna] ([id])
GO

ALTER TABLE [dbo].[gridcolumnaxusuario] CHECK CONSTRAINT [FK8225587B54952CC5]
GO

ALTER TABLE [dbo].[gridcolumnaxusuario]  WITH CHECK ADD  CONSTRAINT [FK8225587BEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[gridcolumnaxusuario] CHECK CONSTRAINT [FK8225587BEAD96159]
GO


