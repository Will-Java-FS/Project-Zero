CREATE TABLE users (
    id INT PRIMARY KEY,
    login VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    type VARCHAR(255)
);

CREATE TABLE cities (
    id INT PRIMARY KEY,
    city VARCHAR(255),
    country VARCHAR(255),
    UNIQUE (city, country)  -- Ensure uniqueness of city-country pairs
);

CREATE TABLE user_cities (
    user_id INT,
    city_id INT,
    PRIMARY KEY (user_id, city_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (city_id) REFERENCES cities(id) ON DELETE CASCADE
);