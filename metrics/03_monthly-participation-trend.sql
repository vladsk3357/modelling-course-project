SELECT 
    D.Year,
    D.Month,
    COUNT(F.UserID) AS TotalParticipants
FROM 
    FactEventParticipation F
JOIN 
    DimDate D ON CONVERT(INT, FORMAT(F.RSVPDate, 'yyyyMMdd')) = D.DateID
GROUP BY 
    D.Year, D.Month
ORDER BY 
    D.Year, D.Month;
