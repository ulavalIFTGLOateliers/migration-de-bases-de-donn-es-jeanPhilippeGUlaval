CREATE TABLE band (bandName varchar(50), creation year, genre varchar(50), PRIMARY KEY (bandName));
INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna",2009,"classical"), ("Mysterio", 2019, "pop");


ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician ADD role varchar(50) AFTER age;

UPDATE musician SET role = "vocals" WHERE musicianName = "Alina";
UPDATE musician SET role = "guitar" WHERE musicianName = "Mysterio";
UPDATE musician SET role = "percussion" WHERE musicianName = "Rainbow";
UPDATE musician SET role = "piano" WHERE musicianName = "Luna";

ALTER TABLE musician ADD bandName varchar(50) after role;
ALTER TABLE musician ADD FOREIGN KEY (bandName) REFERENCES band(bandName);
UPDATE musician SET bandName = "Crazy Duo" WHERE musicianName = "Alina";
UPDATE musician SET bandName = "Crazy Duo" WHERE musicianName = "Rainbow";
UPDATE musician SET bandName = "Mysterio" WHERE musicianName = "Mysterio";
UPDATE musician SET bandName = "Luna" WHERE musicianName = "Luna";

