USE db_library;
GO

Create Procedure getCopies
As
Begin
	SELECT BranchName, Number_Of_Copies
	FROM tbl_Books, tbl_Book_Copies, tbl_Library_Branch 
	WHERE Title='The Lost Tribe'
End