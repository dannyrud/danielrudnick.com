-- Create the database
CREATE DATABASE IF NOT EXISTS dannyrudnick;

USE dannyrudnick;

CREATE TABLE IF NOT EXISTS projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    github_url VARCHAR(255),
    date DATE,
    info JSON
);

CREATE TABLE IF NOT EXISTS experiences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    company VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    description TEXT,
    start DATE NOT NULL,
    end DATE NULL
);

INSERT INTO projects (title, description, image_url, github_url, date, info)
VALUES 
(
    'GroceryListApp', 
    'Developed a macOS grocery list app using SwiftUI, featuring the ability to manage multiple lists, add, delete, and toggle the completion status of items. Integrated the OpenAI API to enhance functionality, enabling users to input a recipe and receive parsed grocery items with the option to easily add them to their lists.', 
    'https://d1273lu6bgll08.cloudfront.net/GroceryList.png',
    'https://github.com/dannyrud/GroceryListApp',
    '2024-07-01', '["Swift", "Open AI API"]'),
(
    'Snake Game', 
    'This C++ project is a text-based implementation of the classic Snake game, developed using the ncurses library for the game interface. The game features a snake that the player controls, navigating through a defined window area to eat fruits (apples) and increase in size. The primary objective is to eat as many fruits as possible without hitting the walls or the snake''s own body. The project uses object-oriented programming principles, and a linked list data structure.',
    'https://d1273lu6bgll08.cloudfront.net/SnakeGame.png',
    'https://github.com/dannyrud/SnakeGame',
    '2023-07-01',
    '["C++", "Data Structures", "Object Oriented Programming"]');
(
    'Instagram Clone', 
    'Built a full-stack Instagram clone combining server-side and client-side dynamic pages. It uses Flask for REST APIs and server-side dynamic page routes, while React powers the client-side dynamic features like infinite scrolling, live updates for likes and comments, and user interactions. The app supports user login, posting, and other core Instagram-like functionalities. Deployed on AWS EC2.', 
    'https://d1273lu6bgll08.cloudfront.net/Insta485.png', 
    '', 
    '2024-10-13', 
    '["EECS 485", "Python", "Flask", "JavaScript", "React", "HTML", "CSS", "AWS", "SQL", "APIs"]'
);

INSERT INTO experiences (company, position, description, start, end)
VALUES 
(
    'Repacket Inc',
    'Software Engineer Intern', 
    'As a Software Engineer Intern at Repacket, Inc., I contributed significantly to the development of the company''s Secure Web Gateway (SWG). My work focused on building and optimizing features for the SWG, a low-latency proxy server written in C++ and hosted directly on users'' laptops. One of my primary contributions was implementing advanced malware detection to inspect HTTP responses and proactively block harmful downloads before they were written to disk. I also collaborated with a team of engineers to enhance session security by encrypting cookies for critical sites. Beyond core development, I designed and built Python-based test servers using Flask and Quart and integrated web APIs to log and analyze user traffic, enabling companies to make data-driven decisions and strengthen their security strategies.',
    '2024-05-13', 
    '2024-08-08'
);
