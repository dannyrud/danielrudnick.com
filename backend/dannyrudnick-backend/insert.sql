
USE danielrudnick;

/*
UPDATE projects
SET 
    title= 'Graph Problem Solver'
WHERE title = 'Graph problem solver';
*/
INSERT INTO projects (title, description, image_url, github_url, date, info)
VALUES
(
    'Chat App', 
    'Developed a real-time terminal chat application in Java using Spring Boot and WebSockets. Supports multiple chat rooms and user authentication (JWT). The server was deployed on AWS Elastic Beanstalk and is accessible through a terminal Java application', 
    'https://d1273lu6bgll08.cloudfront.net/ChatApp.png',
    'https://github.com/dannyrud/chat-app',
    '2025-03-12',
    '["Java", "Spring Boot", "WebSockets", "AWS Elastic Beanstalk", "JWT", "Maven", "REST API''s"]'
);
