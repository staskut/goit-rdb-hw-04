USE LibraryManagement;

INSERT INTO authors (autor_name)
VALUES ('John'), ('Richard'), ('Petro'), ('Oleg'), ('Dereck'), ('Thomas');

INSERT INTO genres (genre_name)
VALUES ('Fantasy'), ('Fiction'), ('Comedy');

INSERT INTO users (username)
VALUES ('user1'), ('user2'), ('user3');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES ('Book1', 2020, 1, 1),
		('Book2', 1919, 2, 1),
		('Book3', 2000, 1, 1),
		('Book4', 2005, 5, 2),
		('Book5', 2001, 3, 2),
		('Book6', 2006, 1, 3);
        
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES (13, 1, '2004-01-22', '2004-02-22'),
		(14, 2, '2004-03-22', '2004-04-22'),
		(15, 1, '2004-05-22', '2004-05-25'),
		(16, 1, '2004-01-22', NULL),
		(17, 3, '2004-01-22', NULL),
		(18, 1, '2004-01-22', NULL)
;
