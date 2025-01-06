require('dotenv').config();
const express = require('express');
const router = express.Router();
const { readerPool } = require('@db');

// Projects endpoint
router.get('/projects', async (req, res) => {
  try {
    // Get a connection from the pool
    const connection = await readerPool.getConnection();

    // Query the database
    const [rows, _] = await connection.query(
      'SELECT * FROM projects ORDER BY date DESC'
    );

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
router.get('/experience', async (req, res) => {
  try {
    // Get a connection from the pool
    const connection = await readerPool.getConnection();

    // Query the database with date formatting
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

    // Release the connection back to the pool
    connection.release();

    // Send the query results as JSON
    res.json(rows);
  } catch (error) {
    console.error('Error fetching experience:', error);
    res.status(500).json({ error: 'Failed to fetch experience' });
  }
});
router.get('/education', (req, res) => res.json({ page: 'Education' }));

module.exports = router;
