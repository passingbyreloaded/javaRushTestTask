DROP SCHEMA IF EXISTS test;
CREATE SCHEMA IF NOT EXISTS test;
USE test;
DROP TABLE IF EXISTS books;
CREATE TABLE books(
  id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(255) NOT NULL,
  author VARCHAR(100) NOT NULL,
  isbn VARCHAR(100) NOT NULL,
  printYear INT(4) NOT NULL,
  readAlready BOOLEAN NOT NULL
);

INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (1, 'Alice''s Adventures in Wonderland & Through the Looking-Glass',
        'In 1862 Charles Lutwidge Dodgson, a shy Oxford mathematician with a stammer, created a story about a little girl tumbling down a rabbit hole.',
        'Lewis Carroll', '0553213458', 1984, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (2, 'A Brief History of Time',
        'With exciting images and profound imagination, Stephen Hawking brings us closer to the ultimate secrets at the very heart of creation.',
        'Stephen Hawking', '0553380168', 1998, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (3, 'The Bad Beginning: Or, Orphans!',
        'Are you made fainthearted by death? Does fire unnerve you? Is a villain something that might crop up in future nightmares of yours?',
        'Lemony Snicket', '0061146307', 2007, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (4, 'Charlie and the Chocolate Factory',
        'Fifty years ago, Roald Dahl created a world that captured the imagination of millions of readers, and a boy who captured their hearts.',
        'Roald Dahl', '0375815260', 2001, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (5, 'Charlotte''s Web',
        'Charlotte''s spiderweb tells of her feelings for a little pig named Wilbur, who simply wants a friend.',
        'E. B White', '0061124958', 2012, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (6, 'Cutting for Stone',
        'Moving from Addis Ababa to New York City and back again, Cutting for Stone is an unforgettable story of love and betrayal, medicine and ordinary miracles--and two brothers whose fates are forever intertwined.',
        'Abraham Verghese', '0375714367', 2010, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (7, 'Fahrenheit 451',
        'Ray Bradbury’s internationally acclaimed novel Fahrenheit 451 is a masterwork of twentieth-century literature set in a bleak, dystopian future.',
        'Ray Bradbury', '1451673310', 2012, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (8, 'Fear and Loathing in Las Vegas: A Savage Journey to the Heart of the American Dream',
        'This cult classic of gonzo journalism is the best chronicle of drug-soaked, addle-brained, rollicking good times ever committed to the printed page.',
        'Hunter S. Thompson', '0679785892', 1998, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (9, 'Harry Potter and the Sorcerer''s Stone',
        'Harry Potter has no idea how famous he is. That''s because he''s being raised by his miserable aunt and uncle who are terrified Harry will learn that he''s really a wizard, just as his parents were.',
        'J.K. Rowling', '0439708184', 1998, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (10, 'Little House on the Prairie',
        'Based on the real-life adventures of Laura Ingalls Wilder, Little House on the Prairie is the third book in the award-winning Little House series, which has captivated generations of readers.',
        'Laura Ingalls Wilder', '0061958271', 2010, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (11, 'Lolita',
        'When it was published in 1955, Lolita immediately became a cause célèbre because of the freedom and sophistication with which it handled the unusual erotic predilections of its protagonist.',
        'Vladimir Nabokov', '0679410430', 1993, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (12, 'Pride and Prejudice',
        'Pride and Prejudice has delighted generations of readers with its unforgettable cast of characters, carefully choreographed plot, and a hugely entertaining view of the world and its absurdities.',
        'Jane Austen', '0199535566', 2008, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (13, 'Slaughterhouse-Five: A Novel',
        'Slaughterhouse-Five, an American classic, is one of the world’s great antiwar books.',
        'Kurt Vonnegut', '0385333846', 1999, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (14, 'The Catcher in the Rye',
        'The hero-narrator of The Catcher in the Rye is an ancient child of sixteen, a native New Yorker named Holden Caulfield.',
        'J. D. Salinger', '0316769177', 2001, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (15, 'The House at Pooh Corner',
        'Here you will rediscover all the characters you met in Winnie-the-Pooh: Christopher Robin, Eeyore, Owl, Piglet, Kanga, tiny Roo, and, of course, Pooh himself.',
        'A. A. Milne', '0140361227', 1992, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (16, 'The Hunger Games',
        'The terrain, rules, and level of audience participation may change but one thing is constant: kill or be killed.',
        'Suzanne Collins', '9780439023528', 2010, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (17, 'The Lord of the Rings',
        'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them',
        'J.R.R. Tolkien', '0544003411', 2012, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (18, 'To Kill a Mockingbird',
        'Compassionate, dramatic, and deeply moving, To Kill A Mockingbird takes readers to the roots of human behavior - to innocence and experience, kindness and cruelty, love and hatred, humor and pathos.',
        'Harper Lee', '0446310786', 1988, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (19, 'Are You There God? It''s Me, Margaret',
        'A twelve-year-old talks to God about her ardent desire to be grown up.',
        'Judy Blume', '0385739869', 2010, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (20, 'Diary of a Wimpy Kid',
        'The launch of an exciting and innovatively illustrated new series narrated by an unforgettable kid every family can relate to',
        'Jeff Kinney', '0810993139', 2007, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (21, 'Interpreter of Maladies',
        'Navigating between the Indian traditions they''ve inherited and the baffling new world, the characters in Jhumpa Lahiri''s elegant, touching stories seek love beyond the barriers of culture and generations.',
        'Jhumpa Lahiri', '039592720X', 1999, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (22, 'Love in the Time of Cholera',
        'A love story of astonishing power.',
        'Gabriel Garcia Marquez', '0307389731', 2007, FALSE);
INSERT INTO books (id, title, description, author, isbn, printYear, readAlready)
VALUES (23, 'Silent Spring',
        'Carson’s passionate concern for the future of our planet reverberated powerfully throughout the world, and her eloquent book was instrumental in launching the environmental movement.',
        'Rachel Carson', '0618249060', 2002, FALSE);
