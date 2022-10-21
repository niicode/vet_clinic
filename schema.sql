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

CREATE TABLE owners (
    id BIGSERIAL PRIMARY KEY,
    full_name varchar(100),
    age integer
);

CREATE TABLE species (
    id BIGSERIAL PRIMARY KEY,
    name varchar(100)
);

CREATE TABLE vets (
    id BIGSERIAL PRIMARY KEY,
    name varchar(100),
    age integer,
    date_of_graduation date
);

CREATE TABLE specializations (
    species_id integer,
    vet_id integer
);

CREATE TABLE visits (
    animal_id int,
    vet_id int,
    date_of_visit date
);

ALTER TABLE animals ADD PRIMARY KEY (id);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id BIGINT REFERENCES species(id);
ALTER TABLE animals ADD owner_id BIGINT REFERENCES owners(id);

