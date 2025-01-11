require('dotenv').config();
const express = require('express');
const router = express.Router();
const pool  = require('@db');

// Projects endpoint
router.get('/projects', async (req, res) => {
  console.log("Received request for /projects");
  try {
    console.log("Attempting to get a connection from the pool");
    const connection = await pool.getConnection();

    console.log("Connection obtained, executing query");
    const [rows, _] = await connection.query(
      'SELECT * FROM projects ORDER BY date DESC'
    );

    console.log("Query successful, releasing connection");
    connection.release();

    console.log("Sending response for /projects");
    res.json(rows);
  } catch (error) {
    console.error('Error fetching projects:', error.message);
    res.status(500).json({ error: 'Failed to fetch projects', details: error.message });
  }
});

// Experience endpoint
router.get('/experience', async (req, res) => {
  console.log("Received request for /experience");
  try {
    console.log("Attempting to get a connection from the pool");
    const connection = await pool.getConnection();

    console.log("Connection obtained, executing query");
    const [rows, _] = await connection.query(
      `SELECT
        id,
        company, 
        position, 
        description, 
        DATE_FORMAT(start, '%M %Y') AS start_date, 
        DATE_FORMAT(end, '%M %Y') AS end_date 
       FROM experiences 
       ORDER BY start DESC`
    );

    console.log("Query successful, releasing connection");
    connection.release();

    console.log("Sending response for /experience");
    res.json(rows);
  } catch (error) {
    console.error('Error fetching experience:', error.message);
    res.status(500).json({ error: 'Failed to fetch experience', details: error.message });
  }
});

// Courses endpoint
router.get('/courses', async (req, res) => {
  console.log("Received request for /courses");
  try {
    console.log("Attempting to get a connection from the pool");
    const connection = await pool.getConnection();

    console.log("Connection obtained, executing query");
    const [rows, _] = await connection.query(
      'SELECT * FROM courses ORDER BY date DESC'
    );

    console.log("Query successful, releasing connection");
    connection.release();

    console.log("Sending response for /courses");
    res.json(rows);
  } catch (error) {
    console.error('Error fetching courses:', error.message);
    res.status(500).json({ error: 'Failed to fetch courses', details: error.message });
  }
});

module.exports = router;
