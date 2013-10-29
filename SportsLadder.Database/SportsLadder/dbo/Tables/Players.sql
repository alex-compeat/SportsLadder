CREATE TABLE [dbo].[Players] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (50)  NOT NULL,
    [Rank]      INT           NOT NULL,
    [AD_Lookup] VARCHAR (100) NULL,
    CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED ([ID] ASC)
);

