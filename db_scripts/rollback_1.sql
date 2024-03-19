ALTER TABLE musician DROP role;
ALTER TABLE musician RENAME COLUMN musicianName TO singerName;
ALTER TABLE musician DROP FOREIGN KEY musician_ibfk_1;
DROP TABLE band;
ALTER TABLE musician DROP COLUMN bandName;
ALTER TABLE musician RENAME TO singer;