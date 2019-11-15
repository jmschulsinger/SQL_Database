Create Database db_library;
Go

Use db_library;
Go

Create Table tbl_Library_Branch (
	BranchID INT Primary Key Not Null Identity (1, 1),
	BranchName VarChar(100) Not Null,
	Address VarChar(255)
);

Create Table tbl_Publisher (
	PublisherName VarChar(255) Primary Key Not Null,
	Address VarChar(255),
	Phone VarChar(20)
);

Create Table tbl_Books (
	BookID Int Primary Key Not Null Identity (1, 1),
	Title VarChar(255) Not Null,
	PublisherName VarChar(255) Foreign Key References tbl_Publisher(PublisherName)
);

Create Table tbl_Book_Authors (
	BookID Int FOREIGN Key REFERENCES tbl_Books(BookID),
	AuthorName VarChar(255) Not Null
);

Create Table tbl_Borrower (
	CardNo Int Primary Key Not Null Identity (1, 1),
	Name VarChar(255) Not Null,
	Address VarChar(255),
	Phone VarChar(20)
);

Create Table tbl_Book_Copies (
	BookID Int Foreign Key References tbl_Books(BookID),
	BranchID Int Foreign Key References tbl_Library_Branch(BranchID),
	Number_Of_Copies Int
);

Create Table tbl_Book_Loans (
	BookID Int Foreign Key References tbl_Books(BookID),
	BranchID  Int Foreign Key References tbl_Library_Branch(BranchID),
	CardNo Int Foreign Key References tbl_Borrower(CardNo),
	DateOut Date,
	DateDue Date
);


