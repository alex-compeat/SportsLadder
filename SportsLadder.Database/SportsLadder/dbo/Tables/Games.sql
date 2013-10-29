CREATE TABLE [dbo].[Games] (
    [ID]              INT IDENTITY (1, 1) NOT NULL,
    [ChallengerScore] INT NOT NULL,
    [OppenantScore]   INT NOT NULL,
    CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED ([ID] ASC)
);

