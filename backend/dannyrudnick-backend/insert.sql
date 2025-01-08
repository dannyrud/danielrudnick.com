
USE dannyrudnick;


-- Insert data into courses table
INSERT INTO projects (title, description, image_url, github_url, date, info)
VALUES 
(
    'Search Engine', 
    'Developed a scalable search engine inspired by Google and Bing. The project consisted of three main components: an inverted index pipeline built with Python MapReduce programs to process large-scale HTML document collections and calculate TF-IDF scores; an Index Server, implemented as a REST API backend, that calculates weighted scores using TF-IDF and PageRank while serving JSON-formatted search results; and a Search Server, offering a dynamic web interface for query submission and ranked result display.',
    'https://d1273lu6bgll08.cloudfront.net/SearchEngine.png',
    '',
    '2024-12-4', 
    '["EECS 485", "Python", "Flask", "REST API", "MapReduce", "PageRank", "TF-IDF", "Information Retrieval", "Parallel Processing", "Multithreading"]'
);
