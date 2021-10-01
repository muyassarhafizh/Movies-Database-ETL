CREATE DATABASE movies;
USE movies;
CREATE TABLE movie(
    ID  int NOT NULL AUTO_INCREMENT,
    title varchar(120) NOT NULL,
    year year,
    rating decimal(3,1),
	description TEXT,
    vote_count int,
    running_time_minutes int,
    gross_millions float,
    PRIMARY KEY(ID)
);
CREATE TABLE person(
    ID  int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE movie_people(
    movieID  int NOT NULL,
    personID int NOT NULL,
    profession enum('director','cast'),
    FOREIGN KEY(movieID) REFERENCES movie(ID),
    FOREIGN KEY(personID) REFERENCES person(ID),
    PRIMARY KEY(movieID,personID,profession)
);
CREATE TABLE genre(
    ID  int NOT NULL auto_increment,
    genre_name varchar(100) NOT NULL,
    PRIMARY KEY(ID)
);
CREATE TABLE movie_genre(
    movieID  int NOT NULL,
    genreID int NOT NULL,
    FOREIGN KEY(movieID) REFERENCES movie(ID),
    FOREIGN KEY(genreID) REFERENCES genre(ID),
    PRIMARY KEY(movieID,genreID)
);