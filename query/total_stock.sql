declare @P1 varchar(10)
declare @P2 varchar(10)
declare @KalaID int

set @P1='1398/01/01'
set @P2='1400/12/29'
set @KalaID=1

select M.Mojoodi FROM dbo.Mojoodi_All(@P1,@P2,DEFAULT,DEFAULT,@KalaID) M