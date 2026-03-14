-- Table: Vendor
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](12) NOT NULL,
	[Address] [nvarchar](30) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[ProvinceID] [char](2) NOT NULL,
	[PostalCode] [nchar](6) NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Vendor_VendorID] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for Vendor

ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF_Vendor_ProvinceID]  DEFAULT ('AB') FOR [ProvinceID]
GO

ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF_Vendor_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
