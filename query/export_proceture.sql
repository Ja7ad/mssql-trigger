exec sp_executesql N'SELECT K.Name, K.Info, K.Code, K.Barcode, P.Price, P.FinalPrice, M.Mojoodi, G.GroupKala
FROM dbo.Mojoodi_All(@P1,@P2,DEFAULT,DEFAULT,DEFAULT) M
INNER JOIN KalaList K ON M.ID_Kala=K.ID
INNER JOIN KalaPrice P ON K.ID=P.KalaID AND P.PriceID=1 AND P.[Type]=2
LEFT OUTER JOIN GroupKala G ON K.GroupID=G.ID
',N'@P1 varchar(10),@P2 varchar(10)','1398/01/01','1400/12/29'