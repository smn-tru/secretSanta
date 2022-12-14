USE [C118_sandrat1790_gmail]
GO
/****** Object:  StoredProcedure [dbo].[SecretSantaWishLists_Update]    Script Date: 11/14/2022 9:18:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SecretSantaWishLists_Update]
		 @Id int
		,@ItemDescription nvarchar(50)
		,@ItemUrl nvarchar(200)

/*
	DECLARE @Id int = 2

	DECLARE  @ItemDescription nvarchar(50) = 'Phone Stand for Desk'
			,@ItemUrl nvarchar(200) = 'https://www.target.com/p/heyday-8482-desktop-tripod-phone-mount-stone-white/-/A-81504278?ref=tgt_adv_XS000000&AFID=google_pla_df&fndsrc=tgtao&DFA=71700000012510682&CPNG=PLA_Electronics%2BShopping%7CElectronics_Ecomm_Hardlines&adgroup=SC_Electronics&LID=700000001170770pgs&LNM=PRODUCT_GROUP&network=g&device=c&location=9028720&targetid=pla-322016753759&ds_rl=1246978&ds_rl=1248099&gclid=CjwKCAiA68ebBhB-EiwALVC-NlVUDaXSDTlTXydrFe23eVBOxbUqhd33I0kcIQ5Cir6XRkNx1C5GQxoCbFUQAvD_BwE&gclsrc=aw.ds'

	SELECT * 
	FROM dbo.SecretSantaWishLists
	WHERE Id = @Id

	EXECUTE [dbo].[SecretSantaWishLists_Update]
		 @Id
		,@ItemDescription
		,@ItemUrl

	SELECT * 
	FROM dbo.SecretSantaWishLists
	WHERE Id = @Id
*/

AS

BEGIN

	UPDATE [dbo].[SecretSantaWishLists]

      SET [ItemDescription] = @ItemDescription
		 ,[ItemUrl] = @ItemUrl

	WHERE Id = @Id

END
