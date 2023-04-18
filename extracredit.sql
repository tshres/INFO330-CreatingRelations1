CREATE TABLE IF NOT EXISTS timeslots (
    id INTEGER PRIMARY KEY,
    start,
    end
);

CREATE TABLE IF NOT EXISTS schedule(
    coursecode TEXT,
    roomid INTEGER,
    timeslotid INTEGER,
    FOREIGN KEY (roomid) REFERENCES room(id),
    FOREIGN KEY (timeslotid) REFERENCES timeslots(id)
);