CREATE TABLE IF NOT EXISTS authors(
	id SERIAL PRIMARY KEY,
	author VARCHAR(256) NOT NULL

);

CREATE TABLE IF NOT EXISTS categories(
	id SERIAL PRIMARY KEY,
	category VARCHAR(256) NOT NULL

);

CREATE TABLE IF NOT EXISTS quotes(
	id SERIAL PRIMARY KEY,
	quote VARCHAR(1024) NOT NULL,
	author_id INT NOT NULL, 
	category_id INT NOT NULL,
	CONSTRAINT aid FOREIGN KEY (author_id)
	REFERENCES authors(id),
	CONSTRAINT cid FOREIGN KEY (category_id)
	REFERENCES categories(id)

);

INSERT INTO authors(author) VALUES
('Henry Miller'), 
('Albert Camus'),
('George Sand'),
('Jon Batiste'),
('Thich Nhat Hanh'),
('Gavin Creel'),
('Ann Voskamp'),
('Monica Bellucci'),
('Michael Buble'),
('Susanna Kearsley'),
('John Zimmerman'),
('Madeleine Albright'),
('Oliver Goldsmith'),
('Kevin Faulcouner'),
('Virginia Woolf'),
('Guy Fieri'),
('George Miller'),
('Benjamin Bratt'),
('Rober Orben'),
('George Bernard'),
('Lionel Trilling'),
('Oscar Wilde'),
('Georges Braque'),
('Havelock Ellis');

INSERT INTO categories(category) VALUES
('Experience'),
('Romantic'),
('Time'),
('Food'),
('Art');



INSERT INTO quotes(quote, author_id, category_id) VALUES
('All growth is a leap in the dark, a spontaneous unpremeditated act without benefit of experience.', 1, 1),
('You cannot create experience. You must undergo it.', 2, 1),
('Simplicity is the most difficult thing to secure in this world; it is the last limit of experience and the last effort of genius.', 3, 1),
('With so many ways to communicate at our disposal, we must not forget the transformative power of a live music experience and genuine human exchange', 4, 1),
('We have the tendency to run away from suffering and to look for happiness. But, in fact, if you have not suffered, you have no chance to experience real happiness.', 5, 1),
('The most real thing of all, the only thing any of us wants, is to matter to somebody. To feel and share love, even on a friendship level or as deep as a romantic one. Who doesn’t want that?', 6, 2),
('The real romantics are the boring ones - they let another heart bore a hope deep into theirs.', 7, 2),
('Personally, I find it romantic not to be with someone all the time; you don’t get used to someone or take them for granted.', 8, 2),
('I think empathy is romantic. I think humor is romantic. Kindness is romantic. I think those kinds of gestures of caring and love are romantic.', 9, 2),
('It’s the pursuit of love and happiness that is the driving force of the romantic novel.', 10, 2),
('When in doubt, take more time.', 11, 3),
('It took me quite a long time to develop a voice, and now that I have it, I am not going to be silent.', 12, 3),
('People have a hard time letting go of their suffering. Out of a fear of the unknown, they prefer suffering that is familiar.', 13, 5),
('Success consists of getting up just one more time than you fall.', 14, 3),
('No one is born believing in harmful stereotypes. They are learned over time. The good news is they can be unlearned.', 15, 3),
('One cannot think well, love well, sleep well, if one has not dined well.', 16, 4),
('Cooking is all about people. Food is maybe the only universal thing that really has the power to bring everyone together. No matter what culture, everywhere around the world, people get together to eat.', 17, 4),
('The trouble with eating Italian food is that five or six days later you’re hungry again.', 18, 4),
('Sometimes a little comfort food can go a long way.', 19, 4),
('Older people shouldn’t eat health food, they need all the preservatives they can get.', 20, 4),
('Without art, the crudeness of reality would make the world unbearable.', 21, 5),
('What marks the artist is his power to shape the material of pain we all have.', 22, 5),
('No great artist ever sees things as they really are. If he did, he would cease to be an artist.', 23, 5),
('Once an object has been incorporated in a picture it accepts a new destiny.', 24, 5),
('Every artist writes his own autobiography', 24, 5);