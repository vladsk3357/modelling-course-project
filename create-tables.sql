CREATE TABLE FactEventParticipation
(
    ParticipationId INT NOT NULL,
    EventID INT NOT NULL,
    UserID INT NOT NULL,
    ParticipationStatus NVARCHAR(50),
    RSVPDate DATETIME,
    UNIQUE (ParticipationId) NOT ENFORCED,
    UNIQUE (EventID, UserID) NOT ENFORCED
);
GO

CREATE TABLE DimUsers
(
    UserID INT NOT NULL,
    FullName NVARCHAR(100),
    Role NVARCHAR(50),
    IsActive BIT,
    CreatedAt DATETIME,
    UNIQUE (UserID) NOT ENFORCED
);
GO

CREATE TABLE DimEvents
(
    EventID INT NOT NULL,
    EventName NVARCHAR(100),
    EventDate DATETIME,
    Location NVARCHAR(255),
    CommunityName NVARCHAR(100),
    CreatedAt DATETIME,
    UNIQUE (EventID) NOT ENFORCED
);
GO

CREATE TABLE DimDate
(
    DateID INT NOT NULL,
    Date DATE,
    DayOfWeek NVARCHAR(10),
    Month NVARCHAR(10),
    Quarter NVARCHAR(10),
    Year INT,
    UNIQUE (DateID) NOT ENFORCED
);
GO

CREATE TABLE DimCommunities
(
    CommunityID INT NOT NULL,
    CommunityName NVARCHAR(100),
    Description NVARCHAR(4000),
    CreatedBy INT,
    CreatedAt DATETIME,
    UNIQUE (CommunityID) NOT ENFORCED
);
GO
