-- Create the database
CREATE DATABASE IF NOT EXISTS dannyrudnick;

USE dannyrudnick;

-- Create the projects table
CREATE TABLE IF NOT EXISTS projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(255)
);

-- Insert sample data
INSERT INTO projects (title, description, image_url)
VALUES 
('Project 1', 'Description for Project 1', 'https://example.com/image1.jpg'),
('Project 2', 'Description for Project 2', 'https://example.com/image2.jpg');
