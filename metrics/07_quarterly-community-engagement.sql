SELECT 
    D.Year,
    D.Quarter,
    C.CommunityName,
    COUNT(F.UserID) AS TotalParticipants
FROM 
    FactEventParticipation F
JOIN 
    DimEvents E ON F.EventID = E.EventID
JOIN 
    DimDate D ON CONVERT(INT, FORMAT(F.RSVPDate, 'yyyyMMdd')) = D.DateID
JOIN 
    DimCommunities C ON E.CommunityName = C.CommunityName
GROUP BY 
    D.Year, D.Quarter, C.CommunityName
ORDER BY 
    D.Year, D.Quarter, TotalParticipants DESC;
