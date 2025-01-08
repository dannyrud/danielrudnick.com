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

CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    site_url VARCHAR(255)
    description TEXT,
    date DATE NOT NULL,
    skills JSON
);

INSERT INTO projects (title, description, image_url, github_url, date, info)
VALUES 
(
    'GroceryListApp', 
    'Developed a macOS grocery list app using SwiftUI, featuring the ability to manage multiple lists, add, delete, and toggle the completion status of items. Integrated the OpenAI API to enhance functionality, enabling users to input a recipe and receive parsed grocery items with the option to easily add them to their lists.', 
    'https://d1273lu6bgll08.cloudfront.net/GroceryList.png',
    'https://github.com/dannyrud/GroceryListApp',
    '2024-07-01', '["Swift", "Open AI API"]'
)
(
    'Snake Game', 
    'This C++ project is a text-based implementation of the classic Snake game, developed using the ncurses library for the game interface. The game features a snake that the player controls, navigating through a defined window area to eat fruits (apples) and increase in size. The primary objective is to eat as many fruits as possible without hitting the walls or the snake''s own body. The project uses object-oriented programming principles, and a linked list data structure.',
    'https://d1273lu6bgll08.cloudfront.net/SnakeGame.png',
    'https://github.com/dannyrud/SnakeGame',
    '2023-07-01',
    '["C++", "Data Structures", "Object Oriented Programming"]'
)
(
    'Instagram Clone', 
    'Built a full-stack Instagram clone combining server-side and client-side dynamic pages. It uses Flask for REST APIs and server-side dynamic page routes, while React powers the client-side dynamic features like infinite scrolling, live updates for likes and comments, and user interactions. The app supports user login, posting, and other core Instagram-like functionalities. Deployed on AWS EC2.', 
    'https://d1273lu6bgll08.cloudfront.net/Insta485.png', 
    '', 
    '2024-10-13', 
    '["EECS 485", "Python", "Flask", "JavaScript", "React", "HTML", "CSS", "AWS", "SQL", "APIs"]'
)
(
    'Personal Website', 
    'Built and deployed a fully responsive personal portfolio website to showcase projects, skills, and experience. The frontend was developed using React and hosted on an AWS S3 bucket, with image storage and delivery optimized through AWS CloudFront (CDN) for low latency. It uses HTTPS with a TLS certificate to ensure secure communication. The serverless backend was implemented with Express.js and deployed on AWS Lambda and API Gateway to provide scalable REST API endpoints. A MySQL database hosted on AWS RDS handles efficient storage and retrieval of portfolio data.', 
    'https://d1273lu6bgll08.cloudfront.net/danielrudnick.com.png',
    'https://github.com/dannyrud/danielrudnick.com',
    '2025-01-07', 
    '["JavaScript", "React", "Node.js", "Express.js", "AWS S3", "AWS CloudFront", "AWS Lambda", "AWS API Gateway", "AWS RDS", "AWS Route53", "MySQL", "TLS/HTTPS", "REST APIs"]'
)
(
    'Map Reduce', 
    'Developed a Python-based MapReduce framework inspired by Google’s original paper. The framework consists of two major components: a Manager that listens for user-submitted jobs and distributes tasks among multiple Workers, and Workers that execute map and reduce tasks to complete a MapReduce program. Utilized TCP and UDP sockets for communication between the Manager and Workers, implementing features like task assignment, heartbeat monitoring for fault tolerance, and Worker registration. Strengthened understanding of distributed systems, networking, and multithreading.',
    'https://d1273lu6bgll08.cloudfront.net/MapReduce.png',
    '',
    '2024-11-10', 
    '["EECS 485", "Python", "Distributed Systems", "Networking", "TCP/UDP", "Sockets", "Multithreading"]'
)
(
    'Search Engine', 
    'Developed a scalable search engine inspired by Google and Bing. The project consisted of three main components: an inverted index pipeline built with Python MapReduce programs to process large-scale HTML document collections and calculate TF-IDF scores; an Index Server, implemented as a REST API backend, that calculates weighted scores using TF-IDF and PageRank while serving JSON-formatted search results; and a Search Server, offering a dynamic web interface for query submission and ranked result display.',
    'https://d1273lu6bgll08.cloudfront.net/SearchEngine.png',
    '',
    '2024-12-4', 
    '["EECS 485", "Python", "Flask", "REST API", "MapReduce", "PageRank", "TF-IDF", "Information Retrieval", "Parallel Processing", "Multithreading"]'
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


INSERT INTO courses (title, site_url, description, date, skills)
VALUES 
(
    'EECS 485: Web Systems',
    'https://eecs485.org/',
    'A holistic course of modern web systems and technologies, covering front end and back end. Build an Instagram clone in the first half of the semester and a Google clone in the second.',
    '2024-09-01',
    '["University of Michigan", "Fall 2024", "REST APIs", "HTML", "CSS", "Python", "JavaScript", "Flask", "React", "SQL", "AWS", "Search Engines"]'
),
(
    'EECS 388:  Computer Security',
    'https://eecs388.org/',
    'Introduction to the principles and practices of computer security as applied to software, host systems, and networks. Covers the foundations of building, using, and managing secure systems. Topics include standard cryptographic functions and protocols, threats and defenses for real-world systems, include response, and computer forensics.',
    '2024-09-01',
    '["University of Michigan", "Fall 2024", "C", "x86", "GDB", "Wireshark", "Docker", "XSS", "SQL Injections", "CSRF", "Cryptography", "Buffer Overflow", "Autopsy"]'
);
(
    'EECS 376: Foundations of Computer Science',
    'https://eecs376.org/',
    'An introduction to theory of computation. Models of computation: finite state machines, Turing machines. Decidable and undecidable problems. Polynomial time computability and paradigms of algorithm design. Computational complexity emphasizing NP-hardness. Coping with intractability. Exploiting intractability: cryptography.',
    '2024-01-01',
    '["University of Michigan", "Winter 2024", "Proofs", "Runtime Analysis", "Algorithms", "P vs NP", "Undecidability"]'
);
(
    'EECS 370: Introduction to Computer Organization',
    'https://eecs370.github.io/',
    'Basic concepts of computer organization and hardware. Instructions executed by a processor and how to use these instructions in simple assembly-language programs. Stored-program concept. Data-path and control for multiple implementations of a processor. Performance evaluation, pipelining, caches, virtual memory, input/output.',
    '2024-01-01',
    '["University of Michigan", "Winter 2024", "C", "Assembly", "ARMv8", "Caching", "Virtual Memory"]'
);
(
    'EECS 281: Data Structures and Algorithms',
    'https://eecs281staff.github.io/eecs281.org/',
    'Introduction to the algorithm analysis and O-notation; Fundamental data structures including lists, stacks, queues, priority queues, hash tables, binary trees, search trees, balanced trees, and graphs; searching and sorting algorithms; recursive algorithms; basic graph algorithms; introduction to greedy algorithms and divide and conquer strategy. Several programming assignments.',
    '2023-09-01',
    '["University of Michigan", "Fall 2023", "C++", "Data Structures", "Runtime Efficiency", "Memory Management"]'
);
(
    'EECS 280: Programming and Introductory Data Structures',
    'https://eecs280.org/',
    'Computer science fundamentals, with programming in C++. Build a satistical analysis tool, an image processing program, a Euchre card game, a machine learning algorithm, and a text editor. Analyze and implement foundational data structures.',
    '2023-01-01',
    '["University of Michigan", "Winter 2023", "C++", "Object Oriented Programming"]'
);
(
    'EECS 203: Discrete Math',
    'https://eecs203.github.io/eecs203.org/',
    'Introduction to the mathematical foundations of computer science. Topics covered include: prepositional and predicate logic, set theory, function and relations, growth of functions and asymptotic notation, introduction to algorithms, elementary combinatorics, and graph theory, and discrete probability theory.',
    '2023-01-01',
    '["University of Michigan", "Winter 2023", "Proofs", "Math"]'
);
(
    'EECS 183: Elementary Programming Concepts',
    'https://eecs183.github.io/eecs183.org/',
    'EECS 183 is an introductory course to computer science and programming, covering the basics of computing as well as problem-solving and algorithmic thinking.',
    '2022-09-01',
    '["University of Michigan", "Fall 2022", "C++"]'
);