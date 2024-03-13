USE sample
Go
CREATE PROCEDURE Ins_pat
@Name VARCHAR(50),
@DrugId1 INT, @DrugId2 INT, @DrugId3 INT, @DrugId4 INT, @DrugId5 INT
AS
BEGIN
INSERT INTO [sample].[dbo].[Patients]([patient name],[Drug Id 1],[Drug Id 2],[Drug Id 3],[Drug Id 4],[Drug Id 5])
VALUES (@Name,@DrugId1,@DrugId2,@DrugId3,@DrugId4,@DrugId5);
END

EXEC Ins_pat @Name='test_SAMPLE',@DrugId1=5,@DrugId2=NULL,@DrugId3=NULL,@DrugId4=NULL,@DrugId5=NULL;