USE [siged]
GO

/****** Object:  Table [dbo].[unidadxprocedimiento]    Script Date: 19/10/2021 22:35:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[unidadxprocedimiento](
	[idprocedimiento] [int] NOT NULL,
	[idunidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idprocedimiento] ASC,
	[idunidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[unidadxprocedimiento]  WITH CHECK ADD  CONSTRAINT [FK23A858F3A1E82D65] FOREIGN KEY([idprocedimiento])
REFERENCES [dbo].[procedimiento] ([idprocedimiento])
GO

ALTER TABLE [dbo].[unidadxprocedimiento] CHECK CONSTRAINT [FK23A858F3A1E82D65]
GO

ALTER TABLE [dbo].[unidadxprocedimiento]  WITH CHECK ADD  CONSTRAINT [FK23A858F3E5F36291] FOREIGN KEY([idunidad])
REFERENCES [dbo].[unidad] ([idunidad])
GO

ALTER TABLE [dbo].[unidadxprocedimiento] CHECK CONSTRAINT [FK23A858F3E5F36291]
GO


