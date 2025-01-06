-- Create the database
CREATE DATABASE IF NOT EXISTS dannyrudnick;

USE dannyrudnick;

-- Create the courses table
CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    site_url VARCHAR(255),
    description TEXT,
    date DATE NOT NULL,
    skills JSON
);

-- Insert data into courses table
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
    'EECS 388: Computer Security',
    'https://eecs388.org/',
    'Introduction to the principles and practices of computer security as applied to software, host systems, and networks. Covers the foundations of building, using, and managing secure systems. Topics include standard cryptographic functions and protocols, threats and defenses for real-world systems, incident response, and computer forensics.',
    '2024-09-01',
    '["University of Michigan", "Fall 2024", "C", "x86", "GDB", "Wireshark", "Docker", "XSS", "SQL Injections", "CSRF", "Cryptography", "Buffer Overflow", "Autopsy"]'
),
(
    'EECS 376: Foundations of Computer Science',
    'https://eecs376.org/',
    'An introduction to theory of computation. Models of computation: finite state machines, Turing machines. Decidable and undecidable problems. Polynomial time computability and paradigms of algorithm design. Computational complexity emphasizing NP-hardness. Coping with intractability. Exploiting intractability: cryptography.',
    '2024-01-01',
    '["University of Michigan", "Winter 2024", "Proofs", "Runtime Analysis", "Algorithms", "P vs NP", "Undecidability"]'
),
(
    'EECS 370: Introduction to Computer Organization',
    'https://eecs370.github.io/',
    'Basic concepts of computer organization and hardware. Instructions executed by a processor and how to use these instructions in simple assembly-language programs. Stored-program concept. Data-path and control for multiple implementations of a processor. Performance evaluation, pipelining, caches, virtual memory, input/output.',
    '2024-01-01',
    '["University of Michigan", "Winter 2024", "C", "Assembly", "ARMv8", "Caching", "Virtual Memory"]'
),
(
    'EECS 281: Data Structures and Algorithms',
    'https://eecs281staff.github.io/eecs281.org/',
    'Introduction to algorithm analysis and O-notation; Fundamental data structures including lists, stacks, queues, priority queues, hash tables, binary trees, search trees, balanced trees, and graphs; searching and sorting algorithms; recursive algorithms; basic graph algorithms; introduction to greedy algorithms and divide-and-conquer strategy. Several programming assignments.',
    '2023-09-01',
    '["University of Michigan", "Fall 2023", "C++", "Data Structures", "Runtime Efficiency", "Memory Management"]'
),
(
    'EECS 280: Programming and Introductory Data Structures',
    'https://eecs280.org/',
    'Computer science fundamentals, with programming in C++. Build a statistical analysis tool, an image processing program, a Euchre card game, a machine learning algorithm, and a text editor. Analyze and implement foundational data structures.',
    '2023-01-01',
    '["University of Michigan", "Winter 2023", "C++", "Object Oriented Programming"]'
),
(
    'EECS 203: Discrete Math',
    'https://eecs203.github.io/eecs203.org/',
    'Introduction to the mathematical foundations of computer science. Topics covered include: propositional and predicate logic, set theory, functions and relations, growth of functions and asymptotic notation, introduction to algorithms, elementary combinatorics, graph theory, and discrete probability theory.',
    '2023-01-01',
    '["University of Michigan", "Winter 2023", "Proofs", "Math"]'
);
