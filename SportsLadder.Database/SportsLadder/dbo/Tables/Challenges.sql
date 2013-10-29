CREATE TABLE [dbo].[Challenges] (
    [ID]           INT  IDENTITY (1, 1) NOT NULL,
    [CreateDate]   DATE CONSTRAINT [DF_Challenges_CreateDate] DEFAULT (getdate()) NOT NULL,
    [DatePlayed]   DATE NULL,
    [ChallengerID] INT  NOT NULL,
    [OpponentID]   INT  NOT NULL,
    [Game1ID]      INT  NOT NULL,
    [Game2ID]      INT  NOT NULL,
    [Game3ID]      INT  NULL,
    CONSTRAINT [PK_Challenges] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Challenges_Games_Game1ID] FOREIGN KEY ([Game1ID]) REFERENCES [dbo].[Games] ([ID]),
    CONSTRAINT [FK_Challenges_Players_ChallengerID] FOREIGN KEY ([ChallengerID]) REFERENCES [dbo].[Players] ([ID]),
    CONSTRAINT [FK_Challenges_Players_OpponentID] FOREIGN KEY ([OpponentID]) REFERENCES [dbo].[Players] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_Challenges]
    ON [dbo].[Challenges]([ID] ASC);

