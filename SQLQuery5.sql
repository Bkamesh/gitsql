USE sample
Go
CREATE PROCEDURE Ins_drug
@Drug_Name VARCHAR(100) , 
@Drug_Type VARCHAR(100)
AS
BEGIN 
INSERT INTO [sample].[dbo].[Drug Master]([Drug Name],[Drug Type])
VALUES (@Drug_Name,@Drug_Type)
END

exec Ins_drug @Drug_Name='timolol',@Drug_Type='Tab';

SELECT * FROM [sample].[dbo].[Drug Master];