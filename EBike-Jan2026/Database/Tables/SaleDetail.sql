-- Table: SaleDetail
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleDetail](
	[SaleDetailID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SellingPrice] [money] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_SaleDetail_SaleDetailID] PRIMARY KEY CLUSTERED 
(
	[SaleDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for SaleDetail

ALTER TABLE [dbo].[SaleDetail] ADD  CONSTRAINT [DF_SaleDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_Part_PartID] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO

ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_Part_PartID]
GO

ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_Sale_SaleID] FOREIGN KEY([SaleID])
REFERENCES [dbo].[Sale] ([SaleID])
GO

ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_Sale_SaleID]
GO
