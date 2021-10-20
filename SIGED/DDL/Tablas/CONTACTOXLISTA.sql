USE [siged]
GO

/****** Object:  Table [dbo].[contactoxlista]    Script Date: 18/10/2021 23:53:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[contactoxlista](
	[idlista] [int] NOT NULL,
	[idcontacto] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[contactoxlista]  WITH CHECK ADD  CONSTRAINT [FK449A971A89C58210] FOREIGN KEY([idcontacto])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[contactoxlista] CHECK CONSTRAINT [FK449A971A89C58210]
GO

ALTER TABLE [dbo].[contactoxlista]  WITH CHECK ADD  CONSTRAINT [FK449A971AEDA2DD43] FOREIGN KEY([idlista])
REFERENCES [dbo].[lista] ([idlista])
GO

ALTER TABLE [dbo].[contactoxlista] CHECK CONSTRAINT [FK449A971AEDA2DD43]
GO


