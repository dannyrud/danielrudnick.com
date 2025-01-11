
USE dannyrudnick;

/*
UPDATE projects
SET 
    title= 'Graph Problem Solver'
WHERE title = 'Graph problem solver';
*/

INSERT INTO projects (title, description, image_url, github_url, date, info)
VALUES 
(
    'AI Piazza Post Classifier', 
    'Created a command-line tool in C++ that identified the subject of student questions using natural language processing and machine learning techniques. Implementation consisted of recursion, binary trees, templates, comparators, and the map data structure.',
    'https://d1273lu6bgll08.cloudfront.net/ML.png',
    '',
    '2023-4-13', 
    '["EECS 280", "C++", "Recursion", "Binary Search Trees", "Machine Learning"]'
);