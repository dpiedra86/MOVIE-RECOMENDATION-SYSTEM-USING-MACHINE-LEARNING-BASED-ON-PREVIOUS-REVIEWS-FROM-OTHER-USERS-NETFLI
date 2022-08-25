-- Creating tables for Final_Project
CREATE TABLE Netflix_Dataset_Movie (
     Movie_ID INT NOT NULL,
     Year INT NOT NULL,
	 Name VARCHAR NOT NULL,
	 PRIMARY KEY (Movie_ID)
);

CREATE TABLE Netflix_Dataset_Rating (
     User_ID INT NOT NULL,
     Rating INT NOT NULL,
	 Movie_ID INT NOT NULL,
	 FOREIGN KEY (Movie_ID) REFERENCES Netflix_Dataset_Movie (Movie_ID)
);

-- Joining both tables
SELECT ndm.movie_id,
ndm.year,
ndm.name,
ndr.user_id,
ndr.rating
INTO netflix_dataset_movie_rating
FROM netflix_dataset_movie AS ndm
INNER JOIN netflix_dataset_rating AS ndr
ON (ndm.movie_id = ndr.movie_id);

