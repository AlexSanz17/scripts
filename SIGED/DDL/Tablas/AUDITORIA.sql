USE [siged]
GO

/****** Object:  Table [dbo].[auditoria]    Script Date: 18/10/2021 23:42:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[auditoria](
	[idauditoria] [int] IDENTITY(1,1) NOT NULL,
	[oldvalor] [varchar](255) NULL,
	[oldvalor_] [varchar](255) NULL,
	[campo] [varchar](255) NULL,
	[fechaaudioria] [datetime] NULL,
	[modulo] [varchar](255) NULL,
	[nuevovalor] [varchar](255) NULL,
	[nuevovalor_] [varchar](255) NULL,
	[opcion] [varchar](255) NULL,
	[tipoauditoria] [varchar](255) NULL,
	[usuario] [varchar](255) NULL,
	[documento] [int] NULL,
	[expediente] [int] NULL,
	[proceso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idauditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[auditoria]  WITH CHECK ADD  CONSTRAINT [FKB8A649671C2A94E] FOREIGN KEY([proceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[auditoria] CHECK CONSTRAINT [FKB8A649671C2A94E]
GO

ALTER TABLE [dbo].[auditoria]  WITH CHECK ADD  CONSTRAINT [FKB8A6496FEB9D3E0] FOREIGN KEY([documento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[auditoria] CHECK CONSTRAINT [FKB8A6496FEB9D3E0]
GO

ALTER TABLE [dbo].[auditoria]  WITH CHECK ADD  CONSTRAINT [FKB8A6496FFABA616] FOREIGN KEY([expediente])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[auditoria] CHECK CONSTRAINT [FKB8A6496FFABA616]
GO


