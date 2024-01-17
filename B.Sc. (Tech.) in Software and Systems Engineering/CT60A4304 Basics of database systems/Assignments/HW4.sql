CREATE TABLE musicrecords (
	band VARCHAR (50),
	band_member  VARCHAR (50),
	member_instrument  VARCHAR (50),
	track  VARCHAR (50),
	track_duration  VARCHAR (50),
	album  VARCHAR (50),
	releaseYear INTEGER
);
CREATE VIEW View_1 AS
SELECT band, band_member, member_instrument FROM musicrecords
WHERE (band_member IS NOT NULL) AND (member_instrument IS NOT NULL);
CREATE VIEW View_2 AS
SELECT band, album, releaseYear FROM musicrecords
WHERE (album IS NOT NULL) AND (releaseYear IS NOT NULL);
CREATE VIEW View_3 AS
SELECT band, album, track, track_duration FROM musicrecords
WHERE (album IS NOT NULL) AND (track IS NOT NULL) AND (track_duration IS NOT NULL);
