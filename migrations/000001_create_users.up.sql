START TRANSACTION;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR (50) UNIQUE NOT NULL,
    encr_pass VARCHAR (100) NOT NULL,
    registered TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO users (id, email, encr_pass)
VALUES (1, "admin@mail.ru", "$2a$04$7At/1q2aHzwdfQ7iT3NooO8ATxsQSKFPlLrdi4qgGxJbN3FOG5X6y");
/* 1337 */

COMMIT;
/* ROLLBACK; */