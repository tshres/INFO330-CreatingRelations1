CREATE TABLE buildings (
    name TEXT(80) NOT NULL,
    shortname TEXT(10) UNIQUE,
    id INTEGER PRIMARY KEY AUTOINCREMENT
);

INSERT INTO buildings (name, shortname) VALUES
    ('Mary Gates Hall', 'MGH'),
    ('Architecture Hall', 'ARC');


CREATE TABLE rooms (
    number INTEGER,
    buildingid INTEGER,
    seating INTEGER,
    PRIMARY KEY (number, buildingid),
    FOREIGN KEY (buildingid) REFERENCES buildings(id)
);

INSERT INTO rooms (number, buildingid, seating) VALUES
    (430, (SELECT id FROM buildings WHERE name = 'Mary Gates Hall'), 50),
    (147, (SELECT id FROM buildings WHERE name = 'Architecture Hall'), 100);



