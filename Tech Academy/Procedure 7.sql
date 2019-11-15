USE db_library;
GO

Create Procedure getAuthoredList
As
Begin
	SELECT Title, Number_Of_Copies
	FROM tbl_Book_Authors, tbl_Books, tbl_Book_Copies,tbl_Library_Branch
	WHERE AuthorName = 'Stephen King' and BranchName = 'Central'
End