-- Create a keyspace
CREATE KEYSPACE IF NOT EXISTS user_data WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : '1' };

-- Create a table
CREATE TABLE IF NOT EXISTS user_data.users (
    id int PRIMARY KEY,
    first_name text,
    last_name text,
    email text,
    gender text
);

-- Insert some data with Irish names
INSERT INTO user_data.users (id, first_name, last_name, email, gender) VALUES (1, 'Liam', 'O\'Connor', 'liam.oconnor@example.com', 'Male');
INSERT INTO user_data.users (id, first_name, last_name, email, gender) VALUES (2, 'Aoife', 'Murphy', 'aoife.murphy@example.com', 'Female');
INSERT INTO user_data.users (id, first_name, last_name, email, gender) VALUES (3, 'Sean', 'O\'Neill', 'sean.oneill@example.com', 'Male');
