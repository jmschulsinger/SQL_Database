USE db_library;
GO

Create Procedure getTitleInventory
As
Begin
	Select Number_Of_Copies
	FROM tbl_Book_Copies, tbl_Books, tbl_Library_Branch
	WHERE Title='The Lost Tribe' AND BranchName='Sharpstown'
End

