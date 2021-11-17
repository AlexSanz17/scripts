USE [siged]
GO

/****** Object:  Table [dbo].[documentoreferencia]    Script Date: 19/10/2021 13:18:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentoreferencia](
	[idref] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](255) NULL,
	[fechacreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[iddocumento] [int] NULL,
	[iddocumentoreferencia] [int] NULL,
	[respondido] [varchar](255) NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
	[verDocumento] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[documentoreferencia]  WITH CHECK ADD  CONSTRAINT [FK14992CA67D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[documentoreferencia] CHECK CONSTRAINT [FK14992CA67D375525]
GO

ALTER TABLE [dbo].[documentoreferencia]  WITH CHECK ADD  CONSTRAINT [FK14992CA6810A1CD7] FOREIGN KEY([iddocumentoreferencia])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[documentoreferencia] CHECK CONSTRAINT [FK14992CA6810A1CD7]
GO


