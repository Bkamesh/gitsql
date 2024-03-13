CREATE TABLE [sample].[dbo].[Drug Master](
"Drug Id" int PRIMARY KEY IDENTITY(1,1),
"Drug Name" VARCHAR(100)
);

ALTER TABLE [sample].[dbo].[Drug Master]
ADD "Drug Type" VARCHAR(100);