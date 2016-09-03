
drop table [dbo].[FilesImport]
go
drop table [dbo].[FilesDataRaw]
go
select * from [dbo].[FilesImport]
go
select * from [dbo].[FilesDataRaw] 
go

/*
insert into [dbo].[FilesImport] (FilePath, DateCreated, FileStatus) 
values (?, getdate(), 'FileNameRead')
*/