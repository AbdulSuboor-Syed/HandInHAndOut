IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211003005644_InitialMigration')
BEGIN
    CREATE TABLE [Book] (
        [id] int NOT NULL IDENTITY,
        [Name] nvarchar(max) NOT NULL,
        [Author] nvarchar(max) NOT NULL,
        [Major] int NOT NULL,
        [BuyingAmount] float NOT NULL,
        [RentingAmount] float NOT NULL,
        [IsAvailable] int NOT NULL,
        [NumberOfBooksAvailable] int NOT NULL,
        CONSTRAINT [PK_Book] PRIMARY KEY ([id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211003005644_InitialMigration')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20211003005644_InitialMigration', N'5.0.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211003012051_SeedBooksTable')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'id', N'Author', N'BuyingAmount', N'IsAvailable', N'Major', N'Name', N'NumberOfBooksAvailable', N'RentingAmount') AND [object_id] = OBJECT_ID(N'[Book]'))
        SET IDENTITY_INSERT [Book] ON;
    EXEC(N'INSERT INTO [Book] ([id], [Author], [BuyingAmount], [IsAvailable], [Major], [Name], [NumberOfBooksAvailable], [RentingAmount])
    VALUES (1, N''Syed Abdul Suboor'', 12.99E0, 0, 1, N''C# For Dummies'', 20, 0.20000000000000001E0)');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'id', N'Author', N'BuyingAmount', N'IsAvailable', N'Major', N'Name', N'NumberOfBooksAvailable', N'RentingAmount') AND [object_id] = OBJECT_ID(N'[Book]'))
        SET IDENTITY_INSERT [Book] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211003012051_SeedBooksTable')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20211003012051_SeedBooksTable', N'5.0.10');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211003013144_Addphotopath')
BEGIN
    ALTER TABLE [Book] ADD [PhotoPath] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211003013144_Addphotopath')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20211003013144_Addphotopath', N'5.0.10');
END;
GO

COMMIT;
GO

