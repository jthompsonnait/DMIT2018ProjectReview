-- Table: ReceiveOrderDetail
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveOrderDetail](
	[ReceiveOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiveOrderID] [int] NOT NULL,
	[PurchaseOrderDetailID] [int] NOT NULL,
	[QuantityReceived] [int] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_ReceiveOrderDetail_ReceiveOrderDetailID] PRIMARY KEY CLUSTERED 
(
	[ReceiveOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for ReceiveOrderDetail

ALTER TABLE [dbo].[ReceiveOrderDetail] ADD  CONSTRAINT [DF_ReceiveOrderDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[ReceiveOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiveOrderDetail_PurchaseOrderDetail_OrderDetailID] FOREIGN KEY([PurchaseOrderDetailID])
REFERENCES [dbo].[PurchaseOrderDetail] ([PurchaseOrderDetailID])
GO

ALTER TABLE [dbo].[ReceiveOrderDetail] CHECK CONSTRAINT [FK_ReceiveOrderDetail_PurchaseOrderDetail_OrderDetailID]
GO

ALTER TABLE [dbo].[ReceiveOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiveOrderDetail_ReceiveOrder_ReceiveOrderID] FOREIGN KEY([ReceiveOrderID])
REFERENCES [dbo].[ReceiveOrder] ([ReceiveOrderID])
GO

ALTER TABLE [dbo].[ReceiveOrderDetail] CHECK CONSTRAINT [FK_ReceiveOrderDetail_ReceiveOrder_ReceiveOrderID]
GO
