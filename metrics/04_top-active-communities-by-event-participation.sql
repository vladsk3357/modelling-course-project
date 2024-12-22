SELECT
    C.CommunityName,
    COUNT(F.EventID) AS TotalEvents,
    COUNT(F.UserID) AS TotalParticipants
FROM 
    FactEventParticipation F
JOIN 
    DimEvents E ON F.EventID = E.EventID
JOIN 
    DimCommunities C ON E.CommunityName = C.CommunityName
GROUP BY 
    C.CommunityName
ORDER BY 
    TotalParticipants DESC;
