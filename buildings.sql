CREATE TABLE IF NOT EXISTS buildings (
    id INTEGER PRIMARY KEY,
    name TEXT(80) NOT NULL,
    shortname TEXT(10) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS rooms (
    number INTEGER,
    buildingid INTEGER REFERENCES buildings(id),
    seating INTEGER,
    PRIMARY KEY (number, buildingid)
);
