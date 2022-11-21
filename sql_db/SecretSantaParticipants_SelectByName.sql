USE [C118_sandrat1790_gmail]
GO
/****** Object:  StoredProcedure [dbo].[SecretSantaParticipants_SelectByName]    Script Date: 11/14/2022 9:16:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SecretSantaParticipants_SelectByName]
		@Name nvarchar(50)

/*

	DECLARE @Name nvarchar(50) = 'Test User';

	EXECUTE [dbo].[SecretSantaParticipants_SelectByName] @Name

*/

AS

BEGIN

 	SELECT 
		 [Id]
		,[Name]
		,[Email]

	FROM dbo.SecretSantaParticipants

	WHERE [Name] = @Name

END