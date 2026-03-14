-- Table: PurchaseOrder
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[PurchaseOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderNumber] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[TaxAmount] [money] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Closed] [bit] NOT NULL,
	[Notes] [nvarchar](100) NULL,
	[EmployeeID] [nvarchar](450) NOT NULL,
	[VendorID] [int] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_PurchaseOrder_PurchaseOrderID] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for PurchaseOrder

ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_Closed]  DEFAULT ((0)) FOR [Closed]
GO

ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Vendor_VendorID] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([VendorID])
GO

ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_Vendor_VendorID]
GO
