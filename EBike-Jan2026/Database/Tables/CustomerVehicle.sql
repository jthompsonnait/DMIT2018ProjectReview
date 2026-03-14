-- Table: CustomerVehicle
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerVehicle](
	[CustomerVehicleID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[VehicleIdentification] [nchar](13) NOT NULL,
	[Make] [nchar](20) NOT NULL,
	[Model] [nchar](30) NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerVehicle_CustomerVehicleID] PRIMARY KEY CLUSTERED 
(
	[CustomerVehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for CustomerVehicle

ALTER TABLE [dbo].[CustomerVehicle] ADD  CONSTRAINT [D_CustomerVehicle_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[CustomerVehicle]  WITH CHECK ADD  CONSTRAINT [FK_CustomerVehicle_Customer_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO

ALTER TABLE [dbo].[CustomerVehicle] CHECK CONSTRAINT [FK_CustomerVehicle_Customer_CustomerID]
GO
