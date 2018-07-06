
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/02/2018 03:09:59
-- Generated from EDMX file: c:\users\mi-pc\documents\visual studio 2015\Projects\PruebaWeb22\PruebaWeb22.Infraestucture\Datos\PruebaWeb22.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [bdLetri];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClienteTrabajo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrabajoSet] DROP CONSTRAINT [FK_ClienteTrabajo];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ClienteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClienteSet];
GO
IF OBJECT_ID(N'[dbo].[TrabajoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrabajoSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ClienteSet'
CREATE TABLE [dbo].[ClienteSet] (
    [IdCliente] int IDENTITY(1,1) NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Mail] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [TrabajoHabitual] nvarchar(max)  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL,
    [Cuit] nvarchar(max)  NOT NULL,
    [Trabajos] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TrabajoSet'
CREATE TABLE [dbo].[TrabajoSet] (
    [IdTrabajo] int IDENTITY(1,1) NOT NULL,
    [Fecha] nvarchar(max)  NOT NULL,
    [Precio] nvarchar(max)  NOT NULL,
    [Tipo] nvarchar(max)  NOT NULL,
    [ClienteIdCliente] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdCliente] in table 'ClienteSet'
ALTER TABLE [dbo].[ClienteSet]
ADD CONSTRAINT [PK_ClienteSet]
    PRIMARY KEY CLUSTERED ([IdCliente] ASC);
GO

-- Creating primary key on [IdTrabajo] in table 'TrabajoSet'
ALTER TABLE [dbo].[TrabajoSet]
ADD CONSTRAINT [PK_TrabajoSet]
    PRIMARY KEY CLUSTERED ([IdTrabajo] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ClienteIdCliente] in table 'TrabajoSet'
ALTER TABLE [dbo].[TrabajoSet]
ADD CONSTRAINT [FK_ClienteTrabajo]
    FOREIGN KEY ([ClienteIdCliente])
    REFERENCES [dbo].[ClienteSet]
        ([IdCliente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteTrabajo'
CREATE INDEX [IX_FK_ClienteTrabajo]
ON [dbo].[TrabajoSet]
    ([ClienteIdCliente]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------