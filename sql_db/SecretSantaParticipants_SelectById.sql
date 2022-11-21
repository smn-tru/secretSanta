USE [C118_sandrat1790_gmail]
GO
/****** Object:  StoredProcedure [dbo].[SecretSantaParticipants_SelectById]    Script Date: 11/14/2022 9:16:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SecretSantaParticipants_SelectById]
		@Id int

/*

	DECLARE @Id int = 1;

	EXECUTE [dbo].[SecretSantaParticipants_SelectById] @Id

*/

AS

BEGIN

	SELECT 
		 [Id]
		,[Name]
		,[Email]

	FROM dbo.SecretSantaParticipants

	WHERE Id = @Id

END