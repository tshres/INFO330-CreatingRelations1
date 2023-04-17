CREATE TABLE timeslots (
    id INTEGER PRIMARY KEY,
    start,
    end
);

CREATE TABLE schedule(
    coursecode TEXT,
    roomid INTEGER,
    timeslotid INTEGER,
    FOREIGN KEY (roomid) REFERENCES room(id),
    FOREIGN KEY (timeslotid) REFERENCES timeslots(id)
);