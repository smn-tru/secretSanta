USE [C118_sandrat1790_gmail]
GO
/****** Object:  StoredProcedure [dbo].[SecretSantaParticipants_Insert]    Script Date: 11/14/2022 9:15:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SecretSantaParticipants_Insert]
		 @Name nvarchar(50)
		,@Email nvarchar(50)
		,@Id int OUTPUT
	

/* --------Test Code------

	DECLARE  @Id int = 0;

	DECLARE  @Name nvarchar(50) = 'Another User'
			,@Email nvarchar(50) = 'another@email.com'

			

	EXECUTE dbo.SecretSantaParticipants_Insert
			 @Name
			,@Email
			,@Id OUTPUT


	SELECT *
	FROM dbo.SecretSantaParticipants


*/

AS

BEGIN

	INSERT INTO dbo.SecretSantaParticipants
		([Name]
		,[Email])

	VALUES
		(@Name
		,@Email)

	SET @Id = SCOPE_IDENTITY()

END