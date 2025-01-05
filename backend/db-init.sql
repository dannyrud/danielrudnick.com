-- Create the database
CREATE DATABASE IF NOT EXISTS dannyrudnick;

USE dannyrudnick;

-- Create the projects table
CREATE TABLE IF NOT EXISTS projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    github_url VARCHAR(255),
    date DATE,
    info JSON
);

-- Insert sample data
INSERT INTO projects (title, description, image_url, github_url, date, info)
VALUES 
('GroceryListApp', 'Developed a macOS grocery list app using SwiftUI, featuring the ability to manage multiple lists, add, delete, and toggle the completion status of items. Integrated the OpenAI API to enhance functionality, enabling users to input a recipe and receive parsed grocery items with the option to easily add them to their lists.', 
'https://d1273lu6bgll08.cloudfront.net/GroceryList.png', 'https://github.com/dannyrud/GroceryListApp', '2024-07-01', '["Swift", "Open AI API"]'),
('Snake Game', 'This C++ project is a text-based implementation of the classic Snake game, developed using the ncurses library for the game interface. The game features a snake that the player controls, navigating through a defined window area to eat fruits (apples) and increase in size. The primary objective is to eat as many fruits as possible without hitting the walls or the snake''s own body. The project uses object-oriented programming principles, and a linked list data structure.',
 'https://d1273lu6bgll08.cloudfront.net/SnakeGame.png', 'https://github.com/dannyrud/SnakeGame', '2023-07-01', '["C++", "Data Structures", "Object Oriented Programming"]');
