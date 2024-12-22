COPY INTO DimUsers
FROM 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/data/DimUsers.csv'
WITH (
    FILE_TYPE = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ERRORFILE = 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/errors/'
);
GO

COPY INTO DimEvents
FROM 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/data/DimEvents.csv'
WITH (
    FILE_TYPE = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ERRORFILE = 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/errors/'
);
GO

COPY INTO DimDate
FROM 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/data/DimDate.csv'
WITH (
    FILE_TYPE = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ERRORFILE = 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/errors/'
);
GO

COPY INTO DimCommunities
FROM 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/data/DimCommunities.csv'
WITH (
    FILE_TYPE = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ERRORFILE = 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/errors/'
);
GO

COPY INTO FactEventParticipation
FROM 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/data/FactEventParticipation.csv'
WITH (
    FILE_TYPE = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ERRORFILE = 'https://courseprojectstorage3357.dfs.core.windows.net/course-project-file-system/errors/'
);
GO