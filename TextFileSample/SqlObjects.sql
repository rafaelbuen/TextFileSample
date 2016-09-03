

if not exists(select table_name from information_schema.tables where table_name = 'FilesImport') 
begin 
	create table dbo.FilesImport 
		( ID bigint identity primary key clustered 
		, FilePath varchar(1000) 
		, DateCreated datetime 
		, FileStatus varchar(50)
		)
end 


if not exists(select table_name from information_schema.tables where table_name = 'FilesDataRaw') 
begin 
	create table dbo.FilesDataRaw 
		( ID bigint
		, FilesImportID int
		, Content varchar(max)
		, Result varchar(50)
		)
end 

--select * from dbo.FilesImport 

--select * from dbo.FilesDataRaw