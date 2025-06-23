-- Create the database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Create Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Country VARCHAR(50)
);

-- Create Genres table
CREATE TABLE Genres (
    GenreID INT PRIMARY KEY AUTO_INCREMENT,
    GenreName VARCHAR(50)
);

-- Create Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200),
    AuthorID INT,
    GenreID INT,
    ISBN VARCHAR(20),
    Year INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

-- Create Members table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

-- Create Borrowings table
CREATE TABLE Borrowings (
    BorrowID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
INSERT INTO Authors (Name, Country) VALUES ('J.K. Rowling', 'UK');
INSERT INTO Genres (GenreName) VALUES ('Fantasy');
INSERT INTO Books (Title, AuthorID, GenreID, ISBN, Year) VALUES ('Harry Potter and the Sorcerer\'s Stone', 1, 1, '9780439554930', 1997);
INSERT INTO Members (Name, Email, Phone) VALUES ('Nimisha Patil', 'nimisha@example.com', '9876543210');
INSERT INTO Borrowings (BookID, MemberID, BorrowDate, ReturnDate) VALUES (1, 1, '2025-06-01', '2025-06-15');
