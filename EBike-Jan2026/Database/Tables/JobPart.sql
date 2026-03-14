-- Table: JobPart
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPart](
	[JobPartID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SellingPrice] [smallmoney] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_JobPart_JobPartID] PRIMARY KEY CLUSTERED 
(
	[JobPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for JobPart

ALTER TABLE [dbo].[JobPart] ADD  CONSTRAINT [D_JobPart_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[JobPart]  WITH CHECK ADD  CONSTRAINT [FK_JobPart_Jobs_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO

ALTER TABLE [dbo].[JobPart] CHECK CONSTRAINT [FK_JobPart_Jobs_JobID]
GO

ALTER TABLE [dbo].[JobPart]  WITH CHECK ADD  CONSTRAINT [FK_JobPart_Parts_PartID] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO

ALTER TABLE [dbo].[JobPart] CHECK CONSTRAINT [FK_JobPart_Parts_PartID]
GO
