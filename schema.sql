/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id BIGSERIAL,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL,
    species varchar(100)
);

ALTER TABLE animals ADD species varchar(100);
