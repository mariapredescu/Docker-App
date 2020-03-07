CREATE DATABASE mydb;
use mydb;

CREATE TABLE books (
	name VARCHAR(255) NOT NULL,
	author_name VARCHAR(255) NOT NULL,
	author_movement VARCHAR(255) NOT NULL,
	gendre VARCHAR(255) NOT NULL
);

INSERT INTO books
  (name, author_name, author_movement, gendre)
VALUES
  ('1', 'Vanna Bonta', 'romantic', 'sf'),
  ('2', 'Vanna Bonta', 'rom', 'actiune'),
  ('Mountains Beyond Mountains', 'Tracy Kidder', 'Creative nonfiction', 'Biography'),
  ('Sztafeta', 'Melchior Wa?kowicz','Modernism', 'Creative nonfiction'),
  ('The Dogs Bark (anthology)', 'Truman Capote', 'Southern Gothic', 'Anthology'),
  ('Only Begotten Daughter', 'James K. Morrow', 'Humanism', 'Fantasy literature'),
  ('Only Begotten Daughter', 'James K. Morrow', 'Transrealism (literature)', 'Fantasy literature'),
  ('In Cold Blood', 'Truman Capote', 'Southern Gothic', 'Literature'),
  ('The Muses Are Heard', 'Truman Capote', 'Southern Gothic','Travel literature'),
  ('Local Color (book)', 'Truman Capote', 'Southern Gothic', 'Travel literature'),
  ('Children on Their Birthdays (short story)', 'Truman Capote', 'Southern Gothic', 'Southern literature'),
  ('The Grass Harp', 'Truman Capote', 'Southern Gothic', 'Southern literature'),
  ('The Architecture of Fear', 'Kathryn Cramer', 'Hard science fiction', 'Fantasy'),
  ('Other Voices, Other Rooms (novel)', 'Truman Capote', 'Southern Gothic', 'Southern Gothic'),
  ('1982, Janine', 'Alasdair Gray', 'Postmodern literature', 'Erotic literature'),
  ('Sartor Resartus', 'Thomas Carlyle', 'Romanticism', 'Comic novel'),
  ('Sartor Resartus', 'Thomas Carlyle', 'Victorian literature', 'Comic novel'),
  ('Mountains Beyond Mountains', 'Tracy Kidder', 'Creative nonfiction', 'Health care'),
  ('A Tree of Night and Other Stories', 'Truman Capote', 'Southern Gothic', 'Short story collection'),
  ('Music for Chameleons', 'Truman Capote', 'Southern Gothic', 'Short story collection'),
  ('Other Voices, Other Rooms (novel)', 'Truman Capote', 'Southern Gothic', 'Bildungsroman'),
  ('How to Be Alone', 'Jonathan Franzen', 'Social realism', 'Essay'),
  ('Farther Away (book)', 'Jonathan Franzen', 'Social realism', 'Essay'),
  ('The Architecture of Fear', 'Kathryn Cramer', 'Hard science fiction', 'Horror fiction'),
  ('Mountains Beyond Mountains','Tracy Kidder', 'Creative nonfiction', 'Non-fiction'),
  ('In Cold Blood', 'Truman Capote', 'Southern Gothic', 'Non-fiction'),
  ('Mountains Beyond Mountains', 'Tracy Kidder', 'Creative nonfiction', 'Physician'),
  ('Answered Prayers: The Unfinished Novel', 'Truman Capote', 'Southern Gothic', 'Political fiction'),
  ('Year\'s Best SF 10', 'Kathryn Cramer', 'Hard science fiction', 'Science fiction'),
  ('Year\'s Best SF 12', 'Kathryn Cramer', 'Hard science fiction', 'Science fiction'),
  ('Year\'s Best SF 11', 'Kathryn Cramer', 'Hard science fiction', 'Science fiction'),
  ('Year\'s Best SF 7', 'Kathryn Cramer', 'Hard science fiction', 'Science fiction'),
  ('Year\'s Best SF 8', 'Kathryn Cramer', 'Hard science fiction', 'Science fiction'),
  ('Year\'s Best SF 9', 'Kathryn Cramer', 'Hard science fiction', 'Science fiction'),
  ('Year\'s Best SF 14', 'Kathryn Cramer', 'Hard science fiction', 'Science fiction'),
  ('Year\'s Best SF 13', 'Kathryn Cramer', 'Hard science fiction', 'Science fiction');