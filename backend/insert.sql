CREATE TABLE IF NOT EXISTS experiences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    company VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    description TEXT,
    start DATE NOT NULL,
    end DATE NULL
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