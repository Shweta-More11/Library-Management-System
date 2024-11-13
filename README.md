# Library-Management-System
Design a relational database for a library to track books, authors, members, borrowing transactions, and late fees. This project will demonstrate skills in database creation, data manipulation, and SQL querying.

## Steps for the Project
## 1. **Database Creation and Schema Design**

Create a database named "LibraryManagementSystem". Then, design tables to capture relevant information:

- **Books**: Stores information about each book.
- **Authors**: Stores information about authors who wrote the books.
- **Members**: Stores information about library members.
- **BorrowingRecords**: Tracks the borrowing and return status of books.
- **LateFees**: Tracks fees for overdue books.


**Questions Explored**
1. **List all books available in the library, along with their genres and available copies.**
2. **Show the names of all authors and their countries.**
3. **Retrieve the names of members who joined in 2023.**
4. **Find all books by the author 'George Orwell'.**
5. **Display a list of all borrowed books that have not been returned yet.**
6. **Count the total number of active library members.**
7. **Retrieve the details of all books published before the year 2000.**
8. **Find the total number of books available by genre.**
9. **List all books along with their respective author names.**
10. **Show the names of members and the titles of the books they have borrowed.**
11. **Retrieve the details of books published between 1980 and 2000 using the `BETWEEN` clause.**
12. **List all books sorted by `PublicationYear` in descending order using the `ORDER BY` clause.**


Flowchart:
   This flowchart outlines the core steps in the Library Management System's database workflow:
**Step 1**: Start
**Step 2**: Create Database Structure
      - Create tables for Books, Authors, Members, BorrowingRecords, and LateFees
**Step 3**: Insert Initial Data
      - Populate tables with sample data for books, authors, members, and borrowing records
**Step 4**: Execute Queries
      - Queries to list available books, overdue books, or unpaid fees
**Step 5**: Update Database
      - Insert new records, update book availability, or calculate and update late fees
**Step 6**: End

