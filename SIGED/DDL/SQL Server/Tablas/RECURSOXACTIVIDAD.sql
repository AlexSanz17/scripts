USE [siged]
GO

/****** Object:  Table [dbo].[recursoxactividad]    Script Date: 19/10/2021 19:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[recursoxactividad](
	[idactividad] [int] NOT NULL,
	[idrecurso] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[recursoxactividad]  WITH CHECK ADD  CONSTRAINT [FKAD5789CE25211037] FOREIGN KEY([idactividad])
REFERENCES [dbo].[actividad] ([idactividad])
GO

ALTER TABLE [dbo].[recursoxactividad] CHECK CONSTRAINT [FKAD5789CE25211037]
GO

ALTER TABLE [dbo].[recursoxactividad]  WITH CHECK ADD  CONSTRAINT [FKAD5789CE7BC32F8F] FOREIGN KEY([idrecurso])
REFERENCES [dbo].[recurso] ([idrecurso])
GO

ALTER TABLE [dbo].[recursoxactividad] CHECK CONSTRAINT [FKAD5789CE7BC32F8F]
GO


