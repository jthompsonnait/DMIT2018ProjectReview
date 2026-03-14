-- Table: ReceiveOrder
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveOrder](
	[ReceiveOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [int] NOT NULL,
	[ReceiveDate] [datetime] NULL,
	[EmployeeID] [nvarchar](450) NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_ReceiveOrder_ReceiveOrderID] PRIMARY KEY CLUSTERED 
(
	[ReceiveOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for ReceiveOrder

ALTER TABLE [dbo].[ReceiveOrder] ADD  CONSTRAINT [DF_ReceiveOrder_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[ReceiveOrder]  WITH CHECK ADD  CONSTRAINT [FK_ReceiveOrder_PurchaseOrder_PurchaseOrderID] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrderID])
GO

ALTER TABLE [dbo].[ReceiveOrder] CHECK CONSTRAINT [FK_ReceiveOrder_PurchaseOrder_PurchaseOrderID]
GO
