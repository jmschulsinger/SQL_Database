Use db_library;
Go

/* There is a library branch called 'Sharpstown' and one called 'Central'.
   There are at least 4 branches in the tbl_LIBRARY_BRANCH */

SET IDENTITY_INSERT tbl_Library_Branch ON

Insert Into tbl_Library_Branch
	(BranchID, BranchName, Address)
	Values
	(1, 'Sharpstown', '55342 Beaverton Lane'),
	(2, 'Central', '76 Nallywood Blvd'),
	(3, 'Fountain Hills', '88 Qeens Rd'),
	(4, 'Paradise Valley', '44 Twinkle Star Court')
;
Select * From tbl_Library_Branch;

SET IDENTITY_INSERT tbl_Library_Branch OFF

Insert Into tbl_Publisher
	(PublisherName, Address, Phone)
	Values
	('Crown Business Publishing Group', '222 Rosewood Drive, Danvers, MA 01923', '978-750-8400'),				
	('Hachette Book Group', '1290 6th Ave, New York, NY', '212-364-1100'),										
	('Random House Publishing Group', '1745 Broadway, New York, NY 10019', '212-782-9000'),						
	('Macmillan Publishers', '120 Broadway, New York, NY', '615-889-9000'),										
	('Simon & Schuster', '1230 6th Ave, New York, NY 10020', '212-698-7000'),									
	('HarperCollins Leadership', '195 Broadway, New York, NY 10007', '212-207-7000'),							
	('Candlewick Press', '99 Dover St, Somerville, MA 02144', '617-661-3330'),									
	('Taylor & Francis', '530 Walnut St, Suite # 850, Philadelphia, PA 19106', '215-625-8900')													-- 14
;
Select * From tbl_Publisher;

/* There are at least 20 books in tbl_BOOK. Some of my favorite's plus the required Stephen King and The Lost Tribe books */
Insert Into tbl_Books
	(Title, PublisherName)
	Values
	('The Hitchhikers Guide to the Galaxy', 'Macmillan Publishers'),							
	('High Fidelity', 'Hachette Book Group'),												
	('The Lightning Theif', 'Hachette Book Group'),											
	('Mythology', 'Hachette Book Group'),													
	('The Lost Tribe', 'Random House Publishing Group'),												
	('The Dead Zone', 'Random House Publishing Group'),												
	('The Alchemist', 'HarperCollins Leadership'),												
	('The Doors of Perception', 'HarperCollins Leadership'),										
	('The Electric Kool-Aid Acid Test', 'Macmillan Publishers'),								
	('The Subtle Art of Not Giving a F*ck', 'HarperCollins Leadership'),							
	('On the Road', 'Random House Publishing Group'),													
	('Fear and Loathing in Las Vegas', 'Random House Publishing Group'),								
	('Guess How Much I Love You', 'Candlewick Press'),									
	('The Lean Startup', 'Crown Business Publishing Group'),											
	('The Sacred Mushroom and the Cross', 'Hachette Book Group'),							
	('The Last of the Really Great Whangdoodles', 'HarperCollins Leadership'),					
	('Grit', 'Simon & Schuster'),														
	('I, Robot', 'Random House Publishing Group'),													
	('The Gulag Archipelago', 'Hachette Book Group'),										
	('Maps of Meaning', 'Taylor & Francis')												
;
Select * From tbl_Books;

/* There are at least 10 authors in tbl_BOOK_AUTHORS */
Insert Into tbl_Book_Authors
	(BookID, AuthorName)
	Values
	(1, 'Douglas Adams'),									
	(2, 'Nick Hornby'),									
	(3, 'Rick Riordan'),									
	(4, 'Edith Hamilton'),									
	(11, 'Jack Kerouac'),									
	(7, 'Paulo Coelho'),									
	(8, 'Aldous Huxley'),									
	(9, 'Tom Wolfe'),										
	(10, 'Mark Manson'),									
	(12, 'Hunter S. Thompson'),								
	(13, 'Sam McBratney'),									
	(14, 'Eric Ries'),										
	(15, 'John Allegro'),									
	(16, 'Julie Andrews Edwards'),							
	(17, 'Angela Duckworth'),								
	(18, 'Isaac Asimov'),									
	(19, 'Aleksandr Solzhenitsyn'),							
	(20, 'Jordan P. Peterson'),								
	(5, 'Stephen King'),
	(6, 'Stephen King')									
;
Select * From tbl_Book_Authors;

/* Each library branch has at least 10 book titles, and at least two copies of each of those titles.
   There is a book called 'The Lost Tribe' found in the 'Sharpstown' branch.
   There must be at least two books written by 'Stephen King' located at the 'Central' branch. */

Insert Into tbl_Book_Copies
	(BookID, BranchID, Number_Of_Copies)
	Values
	-- Sharptown
	(4, 1, 3),				
	(5, 1, 2),				
	(7, 1, 2),				
	(8, 1, 3),				
	(10, 1, 4),				
	(11, 1, 6),				
	(13, 1, 5),				
	(14, 1, 2),				
	(19, 1, 7),				
	(20, 1, 8),				

	-- Central
	(3, 2, 3),				
	(5, 2, 2),				
	(6, 2, 6),				
	(7, 2, 7),				 
	(9, 2, 2),				
	(12, 2, 4),				
	(16, 2, 2),				
	(17, 2, 3),				
	(18, 2, 5),				
	(20, 2, 2),				

	-- Fountain Hills
	(1, 3, 3),				
	(2, 3, 5),				
	(6, 3, 2),				
	(8, 3, 4),				
	(10, 3, 4),				
	(15, 3, 3),				
	(17, 3, 2),				
	(18, 3, 5),				
	(19, 3, 6),				
	(20, 3, 3),				

	-- Paradise Valley
	(1, 4, 3),				
	(3, 4, 4),				
	(5, 4, 2),				
	(9, 4, 2),				
	(11, 4, 4),				
	(15, 4, 4),				
	(17, 4, 6),				
	(18, 4, 5),				
	(19, 4, 3),				
	(20, 4, 2)				
;
Select * From tbl_Book_Copies;

/* There are at least 8 borrowers in tbl_Borrower */

SET IDENTITY_INSERT tbl_Borrower ON

Insert Into tbl_Borrower
	(CardNo, Name, Address, Phone)
	Values
	(1, 'Thor Odinson', '1820 Asgard Drive', '177-754-4430'),				
	(2, 'Harry Potter', '4 Privet Drive', '603-827-4013'),					
	(3, 'Billy Bob', '69420 Dope Avenue', '555-443-6921'),					
	(4, 'David Goliath', '21 Jerusalum Place', '666-112-6432'),			
	(5, 'Ringo Starsky', '303 Liverpool Lane', '303-540-6543'),			
	(6, 'Tooth Fairy', '506 Gum Court', '402-534-5321'),					
	(7, 'Christopher Robin', '100 Acre Woods Place', '540-423-5212'),		
	(8, 'Sterling Archer', '1 Danger Zone Drive', '909-689-8000')			
;
Select * From tbl_Borrower;

SET IDENTITY_INSERT tbl_Borrower OFF

/* There are at least 50 loans in tbl_Book_Loans at least 2 of those borrowers have more than 5 books loaned to them */
Insert Into tbl_Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	Values
	-- Sharptown
	(1, 1, 1, '10/27/2019', '11/15/2019'),			
	(5, 1, 1, '10/21/2019', '11/01/2019'),				
	(6, 1, 1, '09/06/2019', '10/01/2019'),				
	(11, 1, 1, '08/31/2019', '09/07/2019'),				
	(19, 1, 1, '09/15/2019', '10/11/2019'),				
	(20, 1, 1, '10/28/2019', '11/10/2019'),				
	(2, 1, 3, '09/19/2019', '10/08/2019'),				
	(3, 1, 3, '09/24/2019', '10/13/2019'),				
	(7, 1, 3, '10/27/2019', '11/06/2019'),				
	(8, 1, 3, '03/21/2019', '04/13/2019'),				
	(9, 1, 3, '07/14/2019', '08/14/2019'),				
	(10, 1, 3, '06/16/2019', '07/01/2019'),				
	(11, 1, 3, '11/03/2019', '12/05/2019'),				
	(6, 1, 5, '09/14/2019', '10/09/2019'),				
	(11, 1, 5, '08/14/2019', '09/03/2019'),				
	(15, 1, 5, '07/19/2019', '08/12/2019'),				
	(20, 1, 5, '06/13/2019', '07/05/2019'),				
	(17, 1, 7, '04/26/2019', '05/10/2019'),				
	(1, 1, 8, '02/07/2019', '03/15/2019'),				
	(2, 1, 8, '08/30/2019', '09/01/2019'),				
	(5, 1, 8, '09/20/2019', '10/01/2019'),				
	(13, 1, 8, '10/29/2019', '11/07/2019'),				

	-- Central
	(2, 2, 2, '09/15/2019', '10/10/2019'),				
	(4, 2, 2, '09/30/2019', '10/13/2019'),				
	(7, 2, 2, '08/24/2019', '09/01/2019'),				
	(9, 2, 2, '08/29/2019', '09/11/2019'),				
	(10, 2, 2, '07/15/2019', '08/07/2019'),				
	(13, 2, 2, '06/14/2019', '07/04/2019'),				
	(11, 2, 4, '03/07/2019', '04/05/2019'),				
	(12, 2, 4, '02/28/2019', '03/15/2019'),				
	(13, 2, 4, '10/22/2019', '11/10/2019'),				
	(14, 2, 4, '09/29/2019', '10/13/2019'),				
	(15, 2, 4, '08/30/2019', '09/03/2019'),				
	(16, 2, 4, '08/17/2019', '09/03/2019'),				
	(1, 2, 6, '08/13/2019', '09/13/2019'),				
	(2, 2, 6, '11/08/2019', '11/27/2019'),				
	(10, 2, 6, '10/28/2019', '11/06/2019'),				
	
	-- Fountain Hills
	(1, 3, 7, '07/30/2019', '08/12/2019'),				
	(3, 3, 7, '08/24/2019', '09/15/2019'),				
	(5, 3, 7, '09/22/2019', '10/06/2019'),				
	(10, 3, 7, '06/14/2019', '07/09/2019'),				
	(11, 3, 7, '08/10/2019', '09/12/2019'),				
	(5, 3, 8, '10/09/2019', '11/03/2019'),				
	(18, 3, 8, '09/18/2019', '10/02/2019'),				
	(20, 3, 8, '08/03/2019', '09/01/2019'),				

	-- Paradise Valley
	(4, 4, 6, '04/20/2019', '05/06/2019'),				
	(12, 4, 6, '07/19/2019', '08/07/2019'),				
	(13, 4, 6, '11/01/2019', '11/10/2019'),				
	(19, 4, 6, '10/17/2019', '11/08/2019'),				
	(19, 4, 7, '05/19/2019', '06/05/2019'),				
	(20, 4, 7, '07/16/2019', '08/04/2019'),				
	(4, 4, 8, '06/29/2019', '07/03/2019'),				
	(8, 4, 8, '08/16/2019', '09/09/2019')				
;
Select * From tbl_Book_Loans;