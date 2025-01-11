-- MySQL dump 10.13  Distrib 8.0.40, for macos14.7 (arm64)
--
-- Host: dannyrudnick-instance-1.czug8qoeilk6.us-east-2.rds.amazonaws.com    Database: dannyrudnick
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `description` text,
  `date` date NOT NULL,
  `skills` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'EECS 485: Web Systems','https://eecs485.org/','A holistic course of modern web systems and technologies, covering front end and back end. Build an Instagram clone in the first half of the semester and a Google clone in the second.','2024-09-01','[\"University of Michigan\", \"Fall 2024\", \"REST APIs\", \"HTML\", \"CSS\", \"Python\", \"JavaScript\", \"Flask\", \"React\", \"SQL\", \"AWS\", \"Search Engines\"]'),(2,'EECS 388: Computer Security','https://eecs388.org/','Introduction to the principles and practices of computer security as applied to software, host systems, and networks. Covers the foundations of building, using, and managing secure systems. Topics include standard cryptographic functions and protocols, threats and defenses for real-world systems, incident response, and computer forensics.','2024-09-01','[\"University of Michigan\", \"Fall 2024\", \"C\", \"x86\", \"GDB\", \"Wireshark\", \"Docker\", \"XSS\", \"SQL Injections\", \"CSRF\", \"Cryptography\", \"Buffer Overflow\", \"Autopsy\"]'),(3,'EECS 376: Foundations of Computer Science','https://eecs376.org/','An introduction to theory of computation. Models of computation: finite state machines, Turing machines. Decidable and undecidable problems. Polynomial time computability and paradigms of algorithm design. Computational complexity emphasizing NP-hardness. Coping with intractability. Exploiting intractability: cryptography.','2024-01-01','[\"University of Michigan\", \"Winter 2024\", \"Proofs\", \"Runtime Analysis\", \"Algorithms\", \"P vs NP\", \"Undecidability\"]'),(4,'EECS 370: Introduction to Computer Organization','https://eecs370.github.io/','Basic concepts of computer organization and hardware. Instructions executed by a processor and how to use these instructions in simple assembly-language programs. Stored-program concept. Data-path and control for multiple implementations of a processor. Performance evaluation, pipelining, caches, virtual memory, input/output.','2024-01-01','[\"University of Michigan\", \"Winter 2024\", \"C\", \"Assembly\", \"ARMv8\", \"Caching\", \"Virtual Memory\"]'),(5,'EECS 281: Data Structures and Algorithms','https://eecs281staff.github.io/eecs281.org/','Introduction to algorithm analysis and O-notation; Fundamental data structures including lists, stacks, queues, priority queues, hash tables, binary trees, search trees, balanced trees, and graphs; searching and sorting algorithms; recursive algorithms; basic graph algorithms; introduction to greedy algorithms and divide-and-conquer strategy. Several programming assignments.','2023-09-01','[\"University of Michigan\", \"Fall 2023\", \"C++\", \"Data Structures\", \"Runtime Efficiency\", \"Memory Management\"]'),(6,'EECS 280: Programming and Introductory Data Structures','https://eecs280.org/','Computer science fundamentals, with programming in C++. Build a statistical analysis tool, an image processing program, a Euchre card game, a machine learning algorithm, and a text editor. Analyze and implement foundational data structures.','2023-01-01','[\"University of Michigan\", \"Winter 2023\", \"C++\", \"Object Oriented Programming\"]'),(7,'EECS 203: Discrete Math','https://eecs203.github.io/eecs203.org/','Introduction to the mathematical foundations of computer science. Topics covered include: propositional and predicate logic, set theory, functions and relations, growth of functions and asymptotic notation, introduction to algorithms, elementary combinatorics, graph theory, and discrete probability theory.','2023-01-01','[\"University of Michigan\", \"Winter 2023\", \"Proofs\", \"Math\"]'),(8,'EECS 183: Elementary Programming Concepts','https://eecs183.github.io/eecs183.org/','EECS 183 is an introductory course to computer science and programming, covering the basics of computing as well as problem-solving and algorithmic thinking.','2022-09-01','[\"University of Michigan\", \"Fall 2022\", \"C++\"]');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (1,'Repacket Inc','Software Engineer Intern','As a Software Engineer Intern at Repacket, Inc., I contributed significantly to the development of the company\'s Secure Web Gateway (SWG). My work focused on building and optimizing features for the SWG, a low-latency proxy server written in C++ and hosted directly on users\' laptops. One of my primary contributions was implementing advanced malware detection to inspect HTTP responses and proactively block harmful downloads before they were written to disk. I also collaborated with a team of engineers to enhance session security by encrypting cookies for critical sites. Beyond core development, I designed and built Python-based test servers using Flask and Quart and integrated web APIs to log and analyze user traffic, enabling companies to make data-driven decisions and strengthen their security strategies.','2024-05-13','2024-08-08');
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `github_url` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `info` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'GroceryListApp','Developed a macOS grocery list app using SwiftUI, featuring the ability to manage multiple lists, add, delete, and toggle the completion status of items. Integrated the OpenAI API to enhance functionality, enabling users to input a recipe and receive parsed grocery items with the option to easily add them to their lists.','https://d1273lu6bgll08.cloudfront.net/GroceryList.png','https://github.com/dannyrud/GroceryListApp','2024-07-01','[\"Swift\", \"Open AI API\"]'),(2,'Snake Game','This C++ project is a text-based implementation of the classic Snake game, developed using the ncurses library for the game interface. The game features a snake that the player controls, navigating through a defined window area to eat fruits (apples) and increase in size. The primary objective is to eat as many fruits as possible without hitting the walls or the snake\'s own body. The project uses object-oriented programming principles, and a linked list data structure.','https://d1273lu6bgll08.cloudfront.net/SnakeGame.png','https://github.com/dannyrud/SnakeGame','2023-07-01','[\"C++\", \"Data Structures\", \"Object Oriented Programming\"]'),(3,'Instagram Clone','Built a full-stack Instagram clone combining server-side and client-side dynamic pages. It uses Flask for REST APIs and server-side dynamic page routes, while React powers the client-side dynamic features like infinite scrolling, live updates for likes and comments, and user interactions. The app supports user login, posting, and other core Instagram-like functionalities. Deployed on AWS EC2 using Gunicorn and Nginx.','https://d1273lu6bgll08.cloudfront.net/Insta485.png','','2024-10-13','[\"EECS 485\", \"Python\", \"Flask\", \"JavaScript\", \"React\", \"HTML\", \"CSS\", \"AWS\", \"SQL\", \"APIs\", \"Gunicorn\", \"Nginx\"]'),(4,'Personal Website','Built and deployed a fully responsive personal portfolio website to showcase projects, skills, and experience. The frontend was developed using React and hosted on an AWS S3 bucket, with image storage and delivery optimized through AWS CloudFront (CDN) for low latency. It uses HTTPS with a TLS certificate to ensure secure communication. The serverless backend was implemented with Express.js and deployed on AWS Lambda and API Gateway to provide scalable REST API endpoints. A MySQL database hosted on AWS RDS handles efficient storage and retrieval of portfolio data.','https://d1273lu6bgll08.cloudfront.net/danielrudnick.com.png','https://github.com/dannyrud/danielrudnick.com','2025-01-07','[\"JavaScript\", \"React\", \"Node.js\", \"Express.js\", \"AWS S3\", \"AWS CloudFront\", \"AWS Lambda\", \"AWS API Gateway\", \"AWS RDS\", \"AWS Route53\", \"MySQL\", \"TLS/HTTPS\", \"REST APIs\"]'),(5,'Map Reduce','Developed a Python-based MapReduce framework inspired by Google’s original paper. The framework consists of two major components: a Manager that listens for user-submitted jobs and distributes tasks among multiple Workers, and Workers that execute map and reduce tasks to complete a MapReduce program. Utilized TCP and UDP sockets for communication between the Manager and Workers, implementing features like task assignment, heartbeat monitoring for fault tolerance, and Worker registration. Strengthened understanding of distributed systems, networking, and multithreading.','https://d1273lu6bgll08.cloudfront.net/MapReduce.png','','2024-11-10','[\"EECS 485\", \"Python\", \"Distributed Systems\", \"Networking\", \"TCP/UDP\", \"Sockets\", \"Multithreading\"]'),(6,'Search Engine','Developed a scalable search engine inspired by Google and Bing. The project consisted of three main components: an inverted index pipeline built with Python MapReduce programs to process large-scale HTML document collections and calculate TF-IDF scores; an Index Server, implemented as a REST API backend, that calculates weighted scores using TF-IDF and PageRank while serving JSON-formatted search results; and a Search Server, offering a dynamic web interface for query submission and ranked result display.','https://d1273lu6bgll08.cloudfront.net/SearchEngine.png','','2024-12-04','[\"EECS 485\", \"Python\", \"Flask\", \"REST API\", \"MapReduce\", \"PageRank\", \"TF-IDF\", \"Information Retrieval\", \"Parallel Processing\", \"Multithreading\"]'),(7,'Digital Forensics','Investigated a fake suspect of a crime by inspecting their virtual hard drive, virtual machine, and internet footprint. This included recovering deleted files and conducting various attacks (length extension, XSS, CSRF, SQL injection, buffer overflow, password-cracking) to find details about the person. Probably the coolest school project I have ever done!','https://d1273lu6bgll08.cloudfront.net/DigitalForensics.jpg','','2024-12-04','[\"EECS 388\", \"Python\", \"C\", \"Autopsy\", \"Cryptography\", \"Web Security\", \"Application Security\", \"GDB\", \"Forensics\"]'),(8,'Application Security','Completed many different types of Buffer Overflow attacks with varying complexity. Attacks consisted of Shellcode Injection, Pointer Manipulation, Return-to-Libc, Return-Oriented Programming (ROP), NOP Sleds, and Binary Disassembling. This project taught me how to analyze a vulnerable program, identify potential weaknesses, and exploit them to achieve arbitrary code execution or gain elevated privileges.','https://d1273lu6bgll08.cloudfront.net/ApplicationSecurity.png','','2024-11-06','[\"EECS 388\", \"Python\", \"C\", \"Ghidra\", \"GDB\"]'),(9,'Network Security','Conducted various network attacks on a course-designed server, including network traffic analysis, password cracking, certificate forgery, DNS poisoning, and time-based MFA circumvention.','https://d1273lu6bgll08.cloudfront.net/NetworkSecurity.png','','2024-10-07','[\"EECS 388\", \"Python\", \"Wireshark\", \"John the Ripper\"]'),(10,'Web Security','Conducted various web-based attacks on a course-designed server, including XSS, CSRF, and SQL injection. The attacks were implemented in Python','https://d1273lu6bgll08.cloudfront.net/WebSecurity.png','','2024-09-25','[\"EECS 388\", \"Python\", \"XSS\", \"SQL Injection\", \"CSRF\"]'),(11,'Cryptography','Conducted 4 types of Cryptographic exploits. The exploits included a length extension attack on SHA-256, creating MD5 hash collisons, A CBC padding oracle attack, and  Bleichenbacher\'s e=3 RSA signature forgery','https://d1273lu6bgll08.cloudfront.net/Cryptography.png','','2024-09-15','[\"EECS 388\", \"Python\", \"Cryptography\", \"Hash Functions\", \"Length Extension Attack\", \"RSA\", \"Padding Oracle\", \"Cryptographic Doom Principle\"]'),(12,'LC2K Assembler and Linker','Developed an assembler and linker for the toy LC2K RISC architecture using C. The assembler converted assembly files into object files with headers, symbol tables, and relocation tables, while the linker combined object files into a single executable by resolving labels and adjusting memory references. I also created a 15-bit multiplier in LC2K assembly.','https://d1273lu6bgll08.cloudfront.net/LC2K.png','','2024-02-19','[\"EECS 370\", \"C\", \"Assembly\", \"Low Level Programming\"]'),(13,'LC2K Pipeline Simulator','Developed a cycle-accurate pipelined simulator for the LC2K RISC architecture in C, implementing data forwarding, load-use hazard stalling, and branch prediction to ensure efficient instruction execution. Gained a deep understanding of how the CPU executes assembly language programs.','https://d1273lu6bgll08.cloudfront.net/Pipeline.png','','2024-03-22','[\"EECS 370\", \"C\", \"Pipeline Processor\", \"Data/Control Hazards\"]'),(14,'Cache Simulator','Designed and implemented a cache simulator in C, integrated with the pipeline processor simulator for the LC2K RISC architecture. The simulator supports configurable parameters such as block size, associativity, cache size, and replacement policies, enabling it to handle various cache configurations. Implemented a write-back, allocate-on-write policy with least-recently-used (LRU) block replacement to optimize cache efficiency.','https://d1273lu6bgll08.cloudfront.net/Cache.png','','2024-07-01','[\"EECS 370\", \"C\", \"Caching\"]'),(15,'Puzzle Solver','Wrote a C++ command-line tool that takes in complex maze puzzles and finds the optimal path. The program supports both breadth-first search (BFS) and depth-first search (DFS) algorithms.','https://d1273lu6bgll08.cloudfront.net/Puzzle.png','','2023-09-13','[\"EECS 281\", \"C++\", \"BFS\", \"DFS\", \"Stacks\", \"Queues\"]'),(16,'Custom Priority Queues','Wrote three different custom priority queue implementations in C++ (Sorted array, Binary heap, and Pairing heap). Also a command-line tool that utilized them to simulate zombie themed battles. Integrated a running median algorithm utilizing max and min heaps for efficient computation.','https://d1273lu6bgll08.cloudfront.net/PQ.png','','2023-09-30','[\"EECS 281\", \"C++\", \"Priority Queue\", \"Binary Heap\", \"Pairing Heap\"]'),(17,'Bank Simulator','Designed and implemented a C++ bank simulator. This project taught me how to select optimal data structures for specific problems and emphasized the importance of detailed planning and organization before coding. Utilized various Abstract Data Types (ADTs).','https://d1273lu6bgll08.cloudfront.net/Bank.png','','2023-11-01','[\"EECS 281\", \"C++\", \"Data Structures\", \"HashMaps\", \"HashSets\", \"Priority Queues\", \"Code Organization\", \"Runtime Optimization\"]'),(18,'Graph Problem Solver','Developed a C++ program to solve various graph-based optimization problems in the context of a zookeeper scenario. Implemented algorithms for Minimum Spanning Tree (MST), a heuristic for the Travelling Salesperson Problem (TSP), and a branch-and-bound method to compute an optimal TSP solution. This project strengthened my understanding of graph theory, algorithm efficiency, and heuristic approaches for near-optimal solutions.','https://d1273lu6bgll08.cloudfront.net/TSP.jpeg','','2023-11-29','[\"EECS 281\", \"C++\", \"Graph Theory\", \"MST\", \"Prims Algorithm\", \"Traveling Salesperson\", \"Hueristics\", \"Branch and Bound\"]'),(19,'Image Resizer','Wrote a C++ command-line tool that performs a seam-carving algorithm, which removes seams in an image that pass through the least important pixels, resulting in content-aware image resizing.','https://d1273lu6bgll08.cloudfront.net/ImageResize.png','','2023-02-01','[\"EECS 280\", \"C++\", \"Pointers\", \"Structs\", \"Dynamic Memory\"]'),(20,'Euchre Simulator','Wrote a C++ command-line tool to play the card game Euchre, utilizing abstract data types, derived classes, inheritance, and polymorphism. The program supports both real opponents and automated opponents, and uses virtual functions to allow for flexible and dynamic behavior.','https://d1273lu6bgll08.cloudfront.net/Euchre.png','','2023-02-22','[\"EECS 280\", \"C++\", \"Inheritance\", \"Polymorphism\", \"Dynamic Memory\"]'),(21,'Office Hours Queue','Built a web server for an office hours queue, with a focus on container ADTs, dynamic memory, constructors and destructors, and the list data structure. The program utilized custom-implemented Linked Lists and Iterators to manage the queue.','https://d1273lu6bgll08.cloudfront.net/OfficeHours.png','','2023-03-29','[\"EECS 280\", \"C++\", \"Linked Lists\", \"Iterators\", \"Dynamic Memory\"]'),(22,'AI Piazza Post Classifier','Created a command-line tool in C++ that identified the subject of student questions using natural language processing and machine learning techniques. Implementation consisted of recursion, binary trees, templates, comparators, and the map data structure.','https://d1273lu6bgll08.cloudfront.net/ML.png','','2023-04-13','[\"EECS 280\", \"C++\", \"Recursion\", \"Binary Search Trees\", \"Machine Learning\"]');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 14:46:07
