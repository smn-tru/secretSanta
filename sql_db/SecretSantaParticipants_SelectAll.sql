USE [C118_sandrat1790_gmail]
GO
/****** Object:  StoredProcedure [dbo].[SecretSantaParticipants_SelectAll]    Script Date: 11/14/2022 9:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SecretSantaParticipants_SelectAll]

/*

	EXECUTE dbo.SecretSantaParticipants_SelectAll

*/


AS

BEGIN

	SELECT 
		 [Id]
		,[Name]
		,[Email]

	FROM dbo.SecretSantaParticipants

END