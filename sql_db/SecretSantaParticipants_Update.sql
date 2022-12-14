USE [C118_sandrat1790_gmail]
GO
/****** Object:  StoredProcedure [dbo].[SecretSantaParticipants_Update]    Script Date: 11/14/2022 9:16:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SecretSantaParticipants_Update]
		 @Name nvarchar(50)
		,@Email nvarchar(50)
		,@Id int
/*

	DECLARE @Id int = 1;

	DECLARE  @Name nvarchar(50) = 'Test User'
			,@Email nvarchar(50) = 'different@email.com'

	
	SELECT *
	FROM dbo.SecretSantaParticipants
	WHERE Id = @Id

			

	EXECUTE [dbo].[SecretSantaParticipants_Update]
			 @Name
			,@Email
			,@Id 

	SELECT *
	FROM dbo.SecretSantaParticipants
	WHERE Id = @Id

	(calling SELECT * twice to see updates being made)

*/

AS

BEGIN

	UPDATE dbo.SecretSantaParticipants
		SET  [Name] = @Name
			,[Email] = @Email

	WHERE Id = @Id

END