SELECT
    E.EventName,
    E.EventDate,
    COUNT(F.UserID) AS DeclinedCount
FROM 
    FactEventParticipation F
JOIN 
    DimEvents E ON F.EventID = E.EventID
WHERE 
    F.ParticipationStatus = 'Declined'
GROUP BY 
    E.EventName, E.EventDate
ORDER BY 
    DeclinedCount DESC;
