USE [siged]
GO

/****** Object:  Table [dbo].[carpetareferencia]    Script Date: 18/10/2021 23:48:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[carpetareferencia](
	[idCarpRef] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[iddocumento] [int] NULL,
	[iddocumentoreferencia] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCarpRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[carpetareferencia]  WITH CHECK ADD  CONSTRAINT [FKD21858687D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[carpetareferencia] CHECK CONSTRAINT [FKD21858687D375525]
GO

ALTER TABLE [dbo].[carpetareferencia]  WITH CHECK ADD  CONSTRAINT [FKD2185868810A1CD7] FOREIGN KEY([iddocumentoreferencia])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[carpetareferencia] CHECK CONSTRAINT [FKD2185868810A1CD7]
GO


