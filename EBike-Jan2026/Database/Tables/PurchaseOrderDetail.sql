-- Table: PurchaseOrderDetail
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetail](
	[PurchaseOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[PurchasePrice] [money] NOT NULL,
	[VendorPartNumber] [nvarchar](50) NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_PurchaseOrderDetail_PurchaseOrderDetailID] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for PurchaseOrderDetail

ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  CONSTRAINT [DF_PurchaseOrderDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_Part_PartID] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO

ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_Part_PartID]
GO

ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrder_PurchaseOrderID] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrderID])
GO

ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrder_PurchaseOrderID]
GO
