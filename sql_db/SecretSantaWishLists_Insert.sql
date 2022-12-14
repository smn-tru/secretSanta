USE [C118_sandrat1790_gmail]
GO
/****** Object:  StoredProcedure [dbo].[SecretSantaWishLists_Insert]    Script Date: 11/14/2022 9:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SecretSantaWishLists_Insert]
			@ParticipantId int
           ,@ItemDescription nvarchar(50)
           ,@ItemUrl nvarchar(200)
		   ,@Id int OUTPUT
/*

	DECLARE @Id int = 0;

	DECLARE @ParticipantId int = 1
           ,@ItemDescription nvarchar(50) = 'Phone Stand for Desk'
           ,@ItemUrl nvarchar(200) = 'https://www.amazon.com/dp/B088H1YDS1/ref=va_live_carousel?pf_rd_r=Q0QSCMC2GW4054SZV61Z&pf_rd_p=93a12f85-1a5e-426c-9596-f07ee890efcf&pf_rd_m=ATVPDKIKX0DER&pf_rd_t=HighVelocityEvent&pf_rd_i=deals_1_desktop&pf_rd_s=slot-13&linkCode=ilv&tag=gracefullyg0c-20&ascsubtag=EARLY_BLACK_FRIDAY_DEALS_221115025841&asc_contentid=amzn1.amazonlive.broadcast.f549147a-ff88-48f2-bf56-f54e8a45dd9a&pd_rd_i=B088H1YDS1&th=1&psc=1'

	EXECUTE [dbo].[SecretSantaWishLists_Insert]
			@ParticipantId
           ,@ItemDescription
           ,@ItemUrl
		   ,@Id

	SELECT *
	FROM dbo.SecretSantaWishLists
	WHERE Id = @Id

		

*/

AS

BEGIN

	INSERT INTO [dbo].[SecretSantaWishLists]
           ([ParticipantId]
           ,[ItemDescription]
           ,[ItemUrl])
     VALUES
           (@ParticipantId
           ,@ItemDescription
           ,@ItemUrl)

	SET @Id = SCOPE_IDENTITY()

END