SELECT 
    U.IsActive,
    COUNT(F.UserID) AS TotalParticipants
FROM 
    FactEventParticipation F
JOIN 
    DimUsers U ON F.UserID = U.UserID
GROUP BY 
    U.IsActive;
