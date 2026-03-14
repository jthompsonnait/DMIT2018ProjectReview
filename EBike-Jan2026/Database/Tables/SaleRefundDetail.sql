-- Table: SaleRefundDetail
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleRefundDetail](
	[SaleRefundDetailID] [int] IDENTITY(1,1) NOT NULL,
	[SaleRefundID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SellingPrice] [money] NOT NULL,
	[Reason] [nvarchar](150) NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_SaleRefundDetail_SaleRefundDetailID] PRIMARY KEY CLUSTERED 
(
	[SaleRefundDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for SaleRefundDetail

ALTER TABLE [dbo].[SaleRefundDetail] ADD  CONSTRAINT [DF_SaleRefundDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[SaleRefundDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleRefundDetail_Part_PartId] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO

ALTER TABLE [dbo].[SaleRefundDetail] CHECK CONSTRAINT [FK_SaleRefundDetail_Part_PartId]
GO

ALTER TABLE [dbo].[SaleRefundDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleRefundDetail_SaleRefund_SaleRefundID] FOREIGN KEY([SaleRefundID])
REFERENCES [dbo].[SaleRefund] ([SaleRefundID])
GO

ALTER TABLE [dbo].[SaleRefundDetail] CHECK CONSTRAINT [FK_SaleRefundDetail_SaleRefund_SaleRefundID]
GO
