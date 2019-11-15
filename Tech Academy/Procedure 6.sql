USE db_library;
GO

Create Procedure getBorrowerInfo
As
Begin
	SELECT tbl_Borrower.Name, tbl_Borrower.Address, COUNT(*)
	FROM tbl_Borrower, tbl_Book_Loans
	WHERE tbl_Borrower.CardNo = tbl_Book_Loans.CardNo
	Group By tbl_Borrower.Name, tbl_Borrower.Address, tbl_Borrower.CardNo
	HAVING COUNT(*) > 5 
End