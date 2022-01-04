-- Create new user bag
CREATE ROLE bag WITH LOGIN PASSWORD 'wellekome';

-- Create new database bagv2 with owner postgres
CREATE DATABASE bagv2 OWNER postgres;
GRANT ALL PRIVILEGES ON DATABASE bagv2 TO postgres;
\connect bagv2;

-- Install the postgis extension
CREATE EXTENSION postgis;
