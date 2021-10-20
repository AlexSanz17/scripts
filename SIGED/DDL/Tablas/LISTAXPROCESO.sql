USE [siged]
GO

/****** Object:  Table [dbo].[listaxproceso]    Script Date: 19/10/2021 19:05:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[listaxproceso](
	[idproceso] [int] NOT NULL,
	[idlista] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[listaxproceso]  WITH CHECK ADD  CONSTRAINT [FK282F5776D5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[listaxproceso] CHECK CONSTRAINT [FK282F5776D5C9B7D3]
GO

ALTER TABLE [dbo].[listaxproceso]  WITH CHECK ADD  CONSTRAINT [FK282F5776EDA2DD43] FOREIGN KEY([idlista])
REFERENCES [dbo].[lista] ([idlista])
GO

ALTER TABLE [dbo].[listaxproceso] CHECK CONSTRAINT [FK282F5776EDA2DD43]
GO


