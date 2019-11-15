USE db_library;
GO

Create Procedure getBookNumber
As
Begin
	SELECT tbl_Library_Branch.BranchName, COUNT(*)
	FROM tbl_Book_Loans, tbl_Library_Branch
	WHERE tbl_Book_Copies.BranchId = tbl_Library_Branch.BranchId
	GROUP BY tbl_Library_Branch.BranchName 
End