
ALTER PROC  [dbo].[SecretSantaParticipants_Delete]
		@Id int

/*

	DECLARE @Id int = 7

	SELECT *
	FROM dbo.SecretSantaParticipants
	WHERE Id = @Id

	EXECUTE [dbo].[SecretSantaParticipants_Delete] @Id

	SELECT *
	FROM dbo.SecretSantaParticipants
	

*/

AS

BEGIN

	DELETE FROM dbo.SecretSantaParticipants
	WHERE Id = @Id

END