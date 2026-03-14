-- Table: ReturnedOrderDetail
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnedOrderDetail](
	[ReturnedOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiveOrderID] [int] NOT NULL,
	[PurchaseOrderDetailID] [int] NULL,
	[ItemDescription] [nvarchar](50) NULL,
	[Quantity] [int] NOT NULL,
	[Reason] [nvarchar](50) NOT NULL,
	[VendorPartNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReturnedOrderDetail_ReturnOrderDetailID] PRIMARY KEY CLUSTERED 
(
	[ReturnedOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for ReturnedOrderDetail

ALTER TABLE [dbo].[ReturnedOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReturnedOrderDetail_PurchaseOrderDetail_OrderDetailID] FOREIGN KEY([PurchaseOrderDetailID])
REFERENCES [dbo].[PurchaseOrderDetail] ([PurchaseOrderDetailID])
GO

ALTER TABLE [dbo].[ReturnedOrderDetail] CHECK CONSTRAINT [FK_ReturnedOrderDetail_PurchaseOrderDetail_OrderDetailID]
GO

ALTER TABLE [dbo].[ReturnedOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReturnedOrderDetail_ReceiveOrder_ReceiveOrderID] FOREIGN KEY([ReceiveOrderID])
REFERENCES [dbo].[ReceiveOrder] ([ReceiveOrderID])
GO

ALTER TABLE [dbo].[ReturnedOrderDetail] CHECK CONSTRAINT [FK_ReturnedOrderDetail_ReceiveOrder_ReceiveOrderID]
GO
