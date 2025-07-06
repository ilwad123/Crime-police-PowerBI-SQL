
USE crime;

CREATE TABLE stop_and_search_cleaned (
    Type VARCHAR(50),
    Date DATETIME,
    Latitude DECIMAL(9,6) NULL,
    Longitude DECIMAL(9,6) NULL
    Gender VARCHAR(20),
    Age_range VARCHAR(20),
    Self_defined_ethnicity VARCHAR(100),
    Officer_defined_ethnicity VARCHAR(100),
    Legislation VARCHAR(255),
    Object_of_search VARCHAR(255),
    Outcome VARCHAR(100),
    Outcome_linked_to_object_of_search VARCHAR(10),
    Removal_of_more_than_outer_clothing VARCHAR(10)
);