USE db_library;
GO

Create Procedure getBorrower
As
Begin
	SELECT Name
	FROM tbl_Borrower
	WHERE NOT EXIST ( SELECT *
		FROM tbl_Book_Loans 
		WHERE tbl_Borrower.CardNo = tbl_Book_Loans.CardNo  
End
	