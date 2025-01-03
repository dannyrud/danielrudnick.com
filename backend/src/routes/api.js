require('dotenv').config();
const mysql = require('mysql2/promise');
const express = require('express');
const router = express.Router();

// Create a connection pool
const pool = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

// Home endpoint
router.get('/home', (req, res) => res.json({ page: 'Home' }));

// Projects endpoint
router.get('/projects', async (req, res) => {
  try {
    // Get a connection from the pool
    const connection = await pool.getConnection();

    // Query the database
    const [rows, _] = await connection.query('SELECT * FROM projects');

    // Release the connection back to the pool
    connection.release();

    // Send the query results as JSON
    res.json(rows);
  } catch (error) {
    console.error('Error fetching projects:', error);
    res.status(500).json({ error: 'Failed to fetch projects' });
  }
});

// Other endpoints
router.get('/experience', (req, res) => res.json({ page: 'Experience' }));
router.get('/education', (req, res) => res.json({ page: 'Education' }));
router.get('/about', (req, res) => res.json({ page: 'About' }));

module.exports = router;
