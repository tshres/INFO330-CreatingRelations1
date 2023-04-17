CREATE TABLE IF NOT EXISTS courses (
    code TEXT(40) PRIMARY KEY NOT NULL CHECK(length(code) >= 7),
    description TEXT(400)
    start DATE NOT NULL
    end DATE NOT NULL CHECK(end > start)
);

INSERT INTO courses(code, description, start, end) VALUES
    ('INFO330A', '1 April 2023', '1 June 2023', 'Data and databases')
    ('INFO314', '1 April 2023', '1 June 2023', 'Networking and distributed Systems')
    ('INFO448A', '25 September 2023', '19 December 2023', 'Introduction to iOS')
    ('INFO449A', '25 September 2023', '19 Dceember 2023', 'Introduction to Android')
    ('BAW010', '1 April 2023', '1 June 2023', 'Introduction to Basket-Weaving')
    ('BAW100A', '1 April 2023', '1 June 2023', 'Underwater Basket-Weaving');
