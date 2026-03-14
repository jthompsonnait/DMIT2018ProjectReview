-- Table: DatabaseVersion
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatabaseVersion](
	[Major] [int] NOT NULL,
	[Minor] [int] NOT NULL,
	[Build] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DatabaseVersion_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys for DatabaseVersion

ALTER TABLE [dbo].[DatabaseVersion] ADD  DEFAULT (getdate()) FOR [DateTime]
GO
