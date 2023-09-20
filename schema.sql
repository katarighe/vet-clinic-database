/* Create a database named vet_clinic. */
CREATE DATABASE vet_clinic;

/* Create a table named animals */
CREATE TABLE animals (  
    id INT GENERATED ALWAYS AS IDENTITY,
    create_time DATE,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(5,2),
    PRIMARY KEY(id)
);

/* Add the species column of the table */
ALTER TABLE animals
ADD COLUMN species VARCHAR(255);

/* Add the species column of the table */
CREATE TABLE owners (
    id serial PRIMARY KEY,
    full_name varchar(255),
    age integer
);

/* Add the species column of the table */
CREATE TABLE species (
    id serial PRIMARY KEY,
    name varchar(255)
);

/* Add the species column of the table */
ALTER TABLE animals
ALTER COLUMN id SET DATA TYPE serial;

/* Add the species column of the table */
ALTER TABLE animals
DROP COLUMN species;

/* Add the species column of the table */
ALTER TABLE animals
ADD COLUMN species_id integer REFERENCES species(id);

/* Add the species column of the table */
ALTER TABLE animals
ADD COLUMN owner_id integer REFERENCES owners(id);