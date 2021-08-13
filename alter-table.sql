-- Question 2
ALTER TABLE animals 
ADD COLUMN location VARCHAR(75)

-- Question 3 
-- 1
INSERT INTO animals (name, location, age, type)
VALUES ('MOTO MOTO', 'Africa', 13,'Hippo')

-- 2
INSERT INTO animals (name, location, age, type)
VALUES ('Marvin', 'Salida', 10,'Cat')
  
-- 3
INSERT INTO animals (name, location, age, type)
VALUES ('Fox', 'Salida', 5,'Dog')

-- Question 4 
ALTER TABLE animals
RENAME COLUMN type to species 
-- RENAME COLUMN OldColumnName to NewColumnName

-- Question 5 
ALTER TABLE animals
ALTER species 
SET DATA TYPE VARCHAR(75)