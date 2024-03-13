CREATE TABLE [sample].[dbo].[Patients](
"Patient id" int PRIMARY KEY IDENTITY(1,1),
"patient name" VARCHAR(50),
"Drug Id 1" INT CONSTRAINT FK_PATEINT FOREIGN KEY REFERENCES [sample].[dbo].[Drug Master]("Drug Id"),
"Drug Id 2" INT CONSTRAINT FK_PATEINT_1 FOREIGN KEY REFERENCES [sample].[dbo].[Drug Master]("Drug Id"),
"Drug Id 3" INT CONSTRAINT FK_PATEINT_2 FOREIGN KEY REFERENCES [sample].[dbo].[Drug Master]("Drug Id"),
"Drug Id 4" INT CONSTRAINT FK_PATEINT_3 FOREIGN KEY REFERENCES [sample].[dbo].[Drug Master]("Drug Id"),
"Drug Id 5" INT CONSTRAINT FK_PATEINT_4 FOREIGN KEY REFERENCES [sample].[dbo].[Drug Master]("Drug Id"),
);
ALTER TABLE [sample].[dbo].[Patients]
ADD "Drug Id 6" INT CONSTRAINT FK_PATEINT_5 FOREIGN KEY REFERENCES [sample].[dbo].[Drug Master]("Drug Id");

ALTER TABLE [sample].[dbo].[Patients]
DROP CONSTRAINT "FK_PATEINT_5";

ALTER TABLE [sample].[dbo].[Patients]
DROP COLUMN "Drug Id 6";