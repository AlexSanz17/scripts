USE [siged]
GO

/****** Object:  Table [dbo].[expedientexprocincumplido]    Script Date: 19/10/2021 18:51:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[expedientexprocincumplido](
	[idexpediente] [int] NOT NULL,
	[idprocedimientoincumplido] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idexpediente] ASC,
	[idprocedimientoincumplido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[expedientexprocincumplido]  WITH CHECK ADD  CONSTRAINT [FKF5B12EA950DE4D71] FOREIGN KEY([idexpediente])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[expedientexprocincumplido] CHECK CONSTRAINT [FKF5B12EA950DE4D71]
GO

ALTER TABLE [dbo].[expedientexprocincumplido]  WITH CHECK ADD  CONSTRAINT [FKF5B12EA953F1E729] FOREIGN KEY([idprocedimientoincumplido])
REFERENCES [dbo].[procedimientoincumplido] ([idprocedimientoincumplido])
GO

ALTER TABLE [dbo].[expedientexprocincumplido] CHECK CONSTRAINT [FKF5B12EA953F1E729]
GO


