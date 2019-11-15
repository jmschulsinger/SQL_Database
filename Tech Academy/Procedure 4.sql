USE db_library;
GO

Create Procedure getDueDate
As
Begin
	SELECT tbl_Books.Title, tbl_Borrower.Name, tbl_Borrower.Address
	FROM tbl_Books, tbl_Borrower, tbl_Book_Loans, tbl_Library_Branch
	WHERE tbl_Library_Branch.BranchName='Sharpstown' AND tbl_Library_Branch.BranchId=tbl_Book_Loans.BranchId AND
	tbl_Book_Loans.DateDue='today' AND tbl_Book_Loans.CardNo=tbl_Borrower.CardNo AND tbl_Book_Loans.BookId=tbl_Books.BookId
End