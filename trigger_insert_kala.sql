create trigger mytrigger
on KalaList
after insert
as

declare @code varchar(255)
declare @name varchar(255)
declare @SQL varchar(255)

select @code=i.Code, @name=i.Name from Inserted as i;
set @SQL='D:\\transaction.exe -action insert -table KalaList -data [' + @code + ',' + @name + ']'
exec xp_cmdshell @SQL