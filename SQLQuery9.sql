CREATE PROCEDURE ret_pat_details
@patient_id int 
AS
BEGIN
SELECT p.[Patient Id],p.[patient name],CONCAT_WS('-',d.[Drug Id],SUBSTRING(d.[Drug Name],1,2)) as drug_id,Lower(d.[Drug Type]) "drug_type",UPPER(d.[Drug Type]) "drug_type" FROM [sample].[dbo].[Patients] AS p
JOIN [sample].[dbo].[Drug Master] AS d ON p.[Drug Id 1] = d.[Drug Id] or p.[Drug Id 2] = d.[Drug Id] or p.[Drug Id 3] = d.[Drug Id] or p.[Drug Id 4] = d.[Drug Id] or p.[Drug Id 5] = d.[Drug Id]
WHERE [Patient Id]=@patient_id;
END

EXEC ret_pat_details @patient_id=4;