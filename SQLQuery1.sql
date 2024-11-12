CREATE DATABASE LibraryManagementSystem;
USE LibraryManagementSystem;

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(150),
    AuthorID INT,
    PublicationYear INT,
    Genre VARCHAR(50),
    CopiesAvailable INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    JoinDate DATE,
    MembershipStatus VARCHAR(20)
);

CREATE TABLE BorrowingRecords (
    RecordID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

CREATE TABLE LateFees (
    FeeID INT PRIMARY KEY,
    MemberID INT,
    Amount DECIMAL(5,2),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);


-- Authors
INSERT INTO Authors (AuthorID, Name, Country) VALUES
(1, 'J.K. Rowling', 'United Kingdom'),
(2, 'George Orwell', 'United Kingdom'),
(3, 'J.R.R. Tolkien', 'United Kingdom');

-- Books
INSERT INTO Books (BookID, Title, AuthorID, PublicationYear, Genre, CopiesAvailable) VALUES
(1, 'Harry Potter and the Philosopher''s Stone', 1, 1997, 'Fantasy', 5),
(2, '1984', 2, 1949, 'Dystopian', 3),
(3, 'The Hobbit', 3, 1937, 'Fantasy', 2);

-- Members
INSERT INTO Members (MemberID, Name, JoinDate, MembershipStatus) VALUES
(1, 'Alice Johnson', '2023-01-15', 'Active'),
(2, 'Bob Smith', '2023-02-20', 'Active'),
(3, 'Charlie Brown', '2022-11-05', 'Inactive');

-- Borrowing Records
INSERT INTO BorrowingRecords (RecordID, BookID, MemberID, BorrowDate, ReturnDate, Status) VALUES
(1, 1, 1, '2023-05-10', '2023-05-20', 'Returned'),
(2, 2, 2, '2023-05-12', NULL, 'Borrowed'),
(3, 3, 3, '2023-04-15', '2023-05-01', 'Returned');

-- Late Fees
INSERT INTO LateFees (FeeID, MemberID, Amount, PaymentStatus) VALUES
(1, 1, 5.00, 'Paid'),
(2, 3, 2.50, 'Unpaid');

select * from LateFees;
select * from BorrowingRecords;
select * from Authors;
select * from Members;
select * from Books;


### SQL Practice Questions

1. **List all books available in the library, along with their genres and available copies.**
   SELECT Title, Genre, CopiesAvailable
   FROM Books;
   


2. **Show the names of all authors and their countries.**
   SELECT Name, Country
   FROM Authors;
 

3. **Retrieve the names of members who joined in 2023.**
   SELECT Name
   FROM Members
   WHERE JoinDate >= '2023-01-01' AND JoinDate <= '2023-12-31';
   


4. **Find all books by the author 'George Orwell'.**
   SELECT Title
   FROM Books B
   JOIN Authors A ON B.AuthorID = A.AuthorID
   WHERE A.Name = 'George Orwell';
 

5. **Display a list of all borrowed books that have not been returned yet.**
   SELECT BookID, MemberID, BorrowDate
   FROM BorrowingRecords
   WHERE Status = 'Borrowed';
   

6. **Count the total number of active library members.**
   SELECT COUNT(MemberID) AS TotalActiveMembers
   FROM Members
   WHERE MembershipStatus = 'Active';
  

7. **Retrieve the details of all books published before the year 2000.**
   SELECT Title, PublicationYear
   FROM Books
   WHERE PublicationYear < 2000;

8. **Find the total number of books available by genre.**
   SELECT Genre, SUM(CopiesAvailable) AS TotalCopies
   FROM Books
   GROUP BY Genre;

9.  **List all books along with their respective author names.**
   SELECT B.Title, A.Name AS AuthorName
   FROM Books B
   JOIN Authors A ON B.AuthorID = A.AuthorID;
   


10. **Show the names of members and the titles of the books they have borrowed.**
   SELECT M.Name AS MemberName, B.Title AS BookTitle
   FROM Members M
   JOIN BorrowingRecords BR ON M.MemberID = BR.MemberID
   JOIN Books B ON BR.BookID = B.BookID;



 11.**Retrieve the details of books published between 1980 and 2000 using the `BETWEEN` clause.**
   SELECT Title, PublicationYear
   FROM Books
   WHERE PublicationYear BETWEEN 1980 AND 2000;
   


12. **List all books sorted by `PublicationYear` in descending order using the `ORDER BY` clause.**
   SELECT Title, PublicationYear
   FROM Books
   ORDER BY PublicationYear DESC;
   
