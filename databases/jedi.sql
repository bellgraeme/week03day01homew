DROP TABLE lightsabers;
DROP TABLE jedi;


/*
Multi line comment
*/
--single line comment

CREATE TABLE jedi(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  age INT,
  dark_side BOOLEAN

);

INSERT INTO jedi (name, age, dark_side) VALUES ('Obi Wan', 60, false);
INSERT INTO jedi (name, age, dark_side) VALUES ('Darth Vader', 60, true);
INSERT INTO jedi (name, age) VALUES ('Yoda', 9000);

UPDATE jedi SET dark_side = true WHERE name = 'Darth Vader' AND age = 233;

INSERT INTO jedi (name,age, dark_side) VALUES ('Anakin', 13, false);

UPDATE jedi SET dark_side = true WHERE name = 'Anakin';
UPDATE jedi SET age = 22 WHERE name = 'Anakin';

DELETE FROM jedi WHERE name = 'Anakin';

INSERT INTO jedi (name, age, dark_side) VALUES ('Mace Windoo', 20, true);

DELETE FROM jedi WHERE name = 'Mace Windoo';

INSERT INTO jedi (name, age, dark_side) VALUES ('Luke', 60, false);
INSERT INTO jedi (name, age, dark_side) VALUES ('Luke', 61, false);


CREATE TABLE lightsabers(
id SERIAL8 PRIMARY KEY,
hilt_metal VARCHAR(255) NOT NULL,
colour VARCHAR(255) NOT NULL,
owner_id INT8 REFERENCES jedi(id)
);




-- INSERT INTO lightsabers (hilt_metal, colour, owner) VALUES ('Tungsten', 'green', 'yoda');

-- INSERT INTO lightsabers (hilt_metal, colour, owner) VALUES ('gold', 'green', 'luke');
-- INSERT INTO lightsabers (hilt_metal, colour, owner) VALUES ('Vandium', 'red', 'Darth Vader');
-- INSERT INTO lightsabers (owner) VALUES ('Yoda'); wont work because of Null values



 