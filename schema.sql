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

/* Create a table named owners */
CREATE TABLE owners (
    id serial PRIMARY KEY,
    full_name varchar(255),
    age integer
);

/* Make sure that id is set as autoincremented into the PRIMARY KEY */
CREATE TABLE species (
    id serial PRIMARY KEY,
    name varchar(255)
);

/* Modify the animals table */
ALTER TABLE animals
ALTER COLUMN id SET DATA TYPE serial;

/* Remove species column inside the table */
ALTER TABLE animals
DROP COLUMN species;

/* Add column species_id which is a foreign key referencing species table */
ALTER TABLE animals
ADD COLUMN species_id integer REFERENCES species(id);

/* Add column owner_id which is a foreign key referencing the owners table */
ALTER TABLE animals
ADD COLUMN owner_id integer REFERENCES owners(id);