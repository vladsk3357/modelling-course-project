SELECT
    E.EventName,
    E.EventDate,
    COUNT(F.UserID) AS TotalParticipants
FROM 
    FactEventParticipation F
JOIN 
    DimEvents E ON F.EventID = E.EventID
GROUP BY 
    E.EventName, E.EventDate
ORDER BY 
    E.EventDate;
