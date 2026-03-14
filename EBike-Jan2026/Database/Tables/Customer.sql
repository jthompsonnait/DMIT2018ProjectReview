-- Table: Customer
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[Address] [varchar](40) NULL,
	[City] [varchar](20) NULL,
	[Province] [char](2) NULL,
	[PostalCode] [char](6) NULL,
	[ContactPhone] [char](12) NOT NULL,
	[Textable] [bit] NOT NULL,
	[EmailAddress] [varchar](30) NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for Customer

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Textable_0]  DEFAULT ((0)) FOR [Textable]
GO

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [D_Customer_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
