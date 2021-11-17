USE [siged]
GO

/****** Object:  Table [dbo].[participantexlista]    Script Date: 19/10/2021 19:13:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[participantexlista](
	[idlista] [int] NOT NULL,
	[idusuario] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[participantexlista]  WITH CHECK ADD  CONSTRAINT [FKF021701DEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[participantexlista] CHECK CONSTRAINT [FKF021701DEAD96159]
GO

ALTER TABLE [dbo].[participantexlista]  WITH CHECK ADD  CONSTRAINT [FKF021701DEDA2DD43] FOREIGN KEY([idlista])
REFERENCES [dbo].[lista] ([idlista])
GO

ALTER TABLE [dbo].[participantexlista] CHECK CONSTRAINT [FKF021701DEDA2DD43]
GO


