
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/29/2023 13:34:53
-- Generated from EDMX file: C:\Users\opilane\source\repos\chernykh kyrylo\Chernykh Kyrylo anbasi model\Самостоятельня работа на уроке\Компьтерные заказы.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [targv23kiril];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ArvutitellemusedSet'
CREATE TABLE [dbo].[ArvutitellemusedSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Customer] nvarchar(max)  NOT NULL,
    [Kirjeldus] nvarchar(max)  NOT NULL,
    [Korpus] nvarchar(max)  NOT NULL,
    [Kuvar] nvarchar(max)  NOT NULL,
    [Pakitud] nvarchar(max)  NOT NULL,
    [Entity1_Id] int  NOT NULL
);
GO

-- Creating table 'WhopackedSet'
CREATE TABLE [dbo].[WhopackedSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Chernykh_Kyrylo] nvarchar(max)  NOT NULL,
    [Matvii_Savchenko] nvarchar(max)  NOT NULL,
    [Oleksii_Rudenkox] nvarchar(max)  NOT NULL,
    [Egor_Nedozim] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ArvutitellemusedSet'
ALTER TABLE [dbo].[ArvutitellemusedSet]
ADD CONSTRAINT [PK_ArvutitellemusedSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WhopackedSet'
ALTER TABLE [dbo].[WhopackedSet]
ADD CONSTRAINT [PK_WhopackedSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Entity1_Id] in table 'ArvutitellemusedSet'
ALTER TABLE [dbo].[ArvutitellemusedSet]
ADD CONSTRAINT [FK_Entity1Arvutitellemused]
    FOREIGN KEY ([Entity1_Id])
    REFERENCES [dbo].[WhopackedSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Entity1Arvutitellemused'
CREATE INDEX [IX_FK_Entity1Arvutitellemused]
ON [dbo].[ArvutitellemusedSet]
    ([Entity1_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------