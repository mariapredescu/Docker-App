CREATE DATABASE mydb;
use mydb;

CREATE TABLE books (
	name VARCHAR(255) NOT NULL,
	author_name VARCHAR(255) NOT NULL,
	book_type VARCHAR(255) NOT NULL,
	gender VARCHAR(255) NOT NULL
);

CREATE TABLE read_books(
    username VARCHAR(255) NOT NULL,
    author_name VARCHAR(255) NOT NULL,
    book_name VARCHAR(255) NOT NULL
);

INSERT INTO read_books
    (username, author_name, book_name)
VALUES
    ('maria', 'Liviu Rebreanu', 'Ion'),
    ('maria', 'Mircea Eliade', 'Maitreyi');

INSERT INTO books
    (name, author_name, gender, book_type)
VALUES
    ('Jacklight','Louise Erdrich','Postmodernism','Poetry'),
    ('Eugene Onegin','Alexander Pushkin','Romanticism','Poetry'),
    ('Poltava (poem)','Alexander Pushkin','Romanticism','Poetry'),
    ('The Bronze Horseman (poem)','Alexander Pushkin','Romanticism','Poetry'),
    ('Rokeby (poem)','Walter Scott','Romanticism','Poetry'),
    ('The Dark Haired Girl','Philip K. Dick','Postmodernism','Poetry'),
    ('The Dark Haired Girl','Philip K. Dick','Postmodernism','Poetry'),
    ('The Gypsies (poem)','Alexander Pushkin','Romanticism','Poetry'),
    ('Tornado Alley (book)','William S. Burroughs','Postmodernism','Poetry'),
    ('Tornado Alley (book)','William S. Burroughs','Postmodern literature','Poetry'),
    ('All Watched Over by Machines of Loving Grace','Richard Brautigan','Postmodernism','Poetry'),
    ('Loading Mercury with a Pitchfork','Richard Brautigan','Postmodernism','Poetry'),
    ('Rommel Drives on Deep into Egypt','Richard Brautigan','Postmodernism','Poetry'),
    ('The Galilee Hitch-Hiker','Richard Brautigan','Postmodernism','Poetry'),
    ('Please Plant This Book','Richard Brautigan','Postmodernism','Poetry'),
    ('The Pill Versus the Springhill Mine Disaster','Richard Brautigan','Postmodernism','Poetry'),
    ('The Auroras of Autumn','Wallace Stevens','Modernism','Poetry'),
    ('Love, Heartache and Other Stories','Cristian Hernandez Gonzalez','Romanticism','Poetry'),
    ('The Songs of Bilitis','Pierre Louis','Symbolism','Poetry'),
    ('Les Fleurs du mal','Charles Baudelaire','Symbolism','Poetry'),
    ('Empire of the Atom','A. E. van Vogt','Science Fiction','Novel'),
    ('The Voyage of the Space Beagle','A. E. van Vogt','Science Fiction','Novels'),
    ('The Book of Ptath','A. E. van Vogt','Science Fiction','Novel'),
    ('The Stars, Like Dust','Isaac Asimov','Science Fiction','Novel'),
    ('Kingdom Come (Ballard novel)','J. G. Ballard','Science fiction','Novel'),
    ('Running Wild (novella)','J. G. Ballard','Science fiction','Novel'),
    ('Inside the Atom','Isaac Asimov','Science Fiction','Novel'),
    ('Foundation and Earth','Isaac Asimov','Science Fiction','Novel'),
    ('Tales of the Black Widowers','Isaac Asimov','Mystery fiction','Novel'),
    ('Puzzles of the Black Widowers','Isaac Asimov','Mystery fiction','Novel'),
    ('The Music of Chance','Paul Auster','Mystery fiction','Novel'),
    ('The New York Trilogy','Paul Auster','Mystery fiction','Novel'),
    ('The Last Words of Dutch Schultz','William S. Burroughs','Biography','Novel'),
    ('The Twelve Caesars','Suetonius','Biography','Novel'),
    ('A History of the Life and Voyages of Christopher Columbus','Washington Irving','Biography','Novel'),
    ('The Yage Letters','William S. Burroughs','Biography','Novel'),
    ('Last Words: The Final Journals of William S. Burroughs','William S. Burroughs','Biography','Novel'),
    ('A Monster at Christmas','Thomas Canty','Fantasy','Novel'),
    ('The Wolf Leader','Alexandre Dumas','Fantasy','Novel'),
    ('The Wolf Leader','Alexandre Dumas','Fantasy','Novel'),
    ('The Little White Bird','J. M. Barrie','Fantasy','Novel'),
    ('Only Revolutions','Mark Z. Danielewski','Literary fiction','Novel'),
    ('The Piazza Tales','Herman Melville','Literary fiction','Novel'),
    ('Tracks (novel)','Louise Erdrich','Literary fiction','Novel'),
    ('The Iron Man & Other Tales of the Ring','Robert E. Howard','Science fiction','Short story'),
    ('The Dancers at the End of Time','Michael Moorcock','Science fiction','Short story'),
    ('Nameless Cults (story collection)','Robert E. Howard','Science fiction','Short story'),
    ('The Piazza Tales','Herman Melville','Romanticism','Short story'),
    ('Under the Sunset','Bram Stoker','Victorian literature','Short story'),
    ('Sartor Resartus','Thomas Carlyle','Victorian literature','Short story'),
    ('1', 'Vanna Bonta', 'Romanticism', 'Short story'),
    ('2', 'Vanna Bonta', 'Romanticism', 'Short story'),
    ('Mountains Beyond Mountains', 'Tracy Kidder', 'Biography', 'Novel'),
    ('Only Begotten Daughter', 'James K. Morrow','Fantasy', 'Novel'),
    ('Only Begotten Daughter', 'James K. Morrow', 'Fantasy', 'Novel'),
    ('The Architecture of Fear', 'Kathryn Cramer', 'Fantasy', 'Novel'),
    ('Sartor Resartus', 'Thomas Carlyle', 'Romanticism', 'Short story'),
    ('Sartor Resartus', 'Thomas Carlyle', 'Victorian literature', 'Short story'),
    ('A Tree of Night and Other Stories', 'Truman Capote', 'Victorian literature', 'Short story'),
    ('Music for Chameleons', 'Truman Capote', 'Victorian literature', 'Short story'),
    ('Years Best SF 10', 'Kathryn Cramer', 'Science fiction', 'Novel'),
    ('Years Best SF 12', 'Kathryn Cramer', 'Science fiction', 'Novel');