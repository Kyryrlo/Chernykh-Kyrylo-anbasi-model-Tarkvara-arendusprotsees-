
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/29/2023 11:13:53
-- Generated from EDMX file: C:\Users\opilane\source\repos\chernykh kyrylo\Chernykh Kyrylo anbasi model\Chernykh Kyrylo anbasi model\koolmodel.edmx
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

IF OBJECT_ID(N'[dbo].[FK_Entity1Opilane]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OpilaneSet] DROP CONSTRAINT [FK_Entity1Opilane];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[OpilaneSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OpilaneSet];
GO
IF OBJECT_ID(N'[dbo].[ryhmSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ryhmSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'OpilaneSet'
CREATE TABLE [dbo].[OpilaneSet] (
    [Opilaneid] int IDENTITY(1,1) NOT NULL,
    [Eesnimi] nvarchar(max)  NOT NULL,
    [Perenimi] nvarchar(max)  NOT NULL,
    [Isukukod] nvarchar(max)  NOT NULL,
    [Entity1_Ryhmid] int  NOT NULL
);
GO

-- Creating table 'ryhmSet'
CREATE TABLE [dbo].[ryhmSet] (
    [Ryhmid] int IDENTITY(1,1) NOT NULL,
    [Ryhmanimi] nvarchar(max)  NOT NULL,
    [Osakond] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Opilaneid] in table 'OpilaneSet'
ALTER TABLE [dbo].[OpilaneSet]
ADD CONSTRAINT [PK_OpilaneSet]
    PRIMARY KEY CLUSTERED ([Opilaneid] ASC);
GO

-- Creating primary key on [Ryhmid] in table 'ryhmSet'
ALTER TABLE [dbo].[ryhmSet]
ADD CONSTRAINT [PK_ryhmSet]
    PRIMARY KEY CLUSTERED ([Ryhmid] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Entity1_Ryhmid] in table 'OpilaneSet'
ALTER TABLE [dbo].[OpilaneSet]
ADD CONSTRAINT [FK_Entity1Opilane]
    FOREIGN KEY ([Entity1_Ryhmid])
    REFERENCES [dbo].[ryhmSet]
        ([Ryhmid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Entity1Opilane'
CREATE INDEX [IX_FK_Entity1Opilane]
ON [dbo].[OpilaneSet]
    ([Entity1_Ryhmid]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------