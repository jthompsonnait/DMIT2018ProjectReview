-- Table: UnorderedPurchaseItemCart
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnorderedPurchaseItemCart](
	[UnorderedItemID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiveOrderID] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[VendorPartNumber] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_UnorderedPurchaseItemCart_CartID] PRIMARY KEY CLUSTERED 
(
	[UnorderedItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for UnorderedPurchaseItemCart

ALTER TABLE [dbo].[UnorderedPurchaseItemCart] ADD  CONSTRAINT [D_UnorderedPurchaseItemCart_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[UnorderedPurchaseItemCart]  WITH CHECK ADD  CONSTRAINT [FK_UnorderedPurchaseItemCart_ReceiveOrder] FOREIGN KEY([ReceiveOrderID])
REFERENCES [dbo].[ReceiveOrder] ([ReceiveOrderID])
GO

ALTER TABLE [dbo].[UnorderedPurchaseItemCart] CHECK CONSTRAINT [FK_UnorderedPurchaseItemCart_ReceiveOrder]
GO
