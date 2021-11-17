USE [siged]
GO

/****** Object:  Table [dbo].[documentoxcliente]    Script Date: 19/10/2021 13:21:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentoxcliente](
	[idcliente] [int] NOT NULL,
	[iddocumento] [int] NOT NULL,
	[tipo] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC,
	[iddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[documentoxcliente]  WITH CHECK ADD  CONSTRAINT [FKBBC1ED36614686F1] FOREIGN KEY([idcliente])
REFERENCES [dbo].[cliente] ([idcliente])
GO

ALTER TABLE [dbo].[documentoxcliente] CHECK CONSTRAINT [FKBBC1ED36614686F1]
GO

ALTER TABLE [dbo].[documentoxcliente]  WITH CHECK ADD  CONSTRAINT [FKBBC1ED367D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[documentoxcliente] CHECK CONSTRAINT [FKBBC1ED367D375525]
GO


