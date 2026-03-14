-- Table: Part
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Part](
	[PartID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](40) NOT NULL,
	[PurchasePrice] [smallmoney] NOT NULL,
	[SellingPrice] [smallmoney] NOT NULL,
	[QuantityOnHand] [int] NOT NULL,
	[ReorderLevel] [int] NOT NULL,
	[QuantityOnOrder] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Refundable] [char](1) NOT NULL,
	[Discontinued] [bit] NOT NULL,
	[VendorID] [int] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Part_PartID] PRIMARY KEY CLUSTERED 
(
	[PartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for Part

ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Parts_Refundable]  DEFAULT ('Y') FOR [Refundable]
GO

ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Part_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
GO

ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Part_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[Part]  WITH CHECK ADD  CONSTRAINT [FK_Part_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO

ALTER TABLE [dbo].[Part] CHECK CONSTRAINT [FK_Part_Category_CategoryID]
GO

ALTER TABLE [dbo].[Part]  WITH CHECK ADD  CONSTRAINT [FK_Part_Vendor_VendorID] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([VendorID])
GO

ALTER TABLE [dbo].[Part] CHECK CONSTRAINT [FK_Part_Vendor_VendorID]
GO
