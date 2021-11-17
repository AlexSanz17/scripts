USE [siged]
GO

/****** Object:  Table [dbo].[gridcolumnaxperfil]    Script Date: 19/10/2021 18:56:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gridcolumnaxperfil](
	[idperfil] [int] NOT NULL,
	[idgridcolumna] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[gridcolumnaxperfil]  WITH CHECK ADD  CONSTRAINT [FK55BAA6DF54952CC5] FOREIGN KEY([idgridcolumna])
REFERENCES [dbo].[gridxgridcolumna] ([id])
GO

ALTER TABLE [dbo].[gridcolumnaxperfil] CHECK CONSTRAINT [FK55BAA6DF54952CC5]
GO

ALTER TABLE [dbo].[gridcolumnaxperfil]  WITH CHECK ADD  CONSTRAINT [FK55BAA6DFD3ED84FB] FOREIGN KEY([idperfil])
REFERENCES [dbo].[perfil] ([idperfil])
GO

ALTER TABLE [dbo].[gridcolumnaxperfil] CHECK CONSTRAINT [FK55BAA6DFD3ED84FB]
GO


