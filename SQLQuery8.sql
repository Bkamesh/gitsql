INSERT INTO [sample].[dbo].[Patients]([patient name],[Drug Id 1],[Drug Id 2],[Drug Id 3],[Drug Id 4],[Drug Id 5])
VALUES ('test2',1,NULL,NULL,NULL,NULL),
('test3',4,5,NULL,NULL,NULL),
('test4',1,2,5,NULL,NULL),
('test5',4,5,3,2,NULL),
('test6',1,2,3,4,5);

SELECT * FROM [sample].[dbo].[Patients];