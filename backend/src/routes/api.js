require('dotenv').config();
const express = require('express');
const router = express.Router();
const { writerPool, readerPool } = require('@db');

// Home endpoint
router.get('/home', (req, res) => res.json({ page: 'Home' }));

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
router.get('/experience', (req, res) => res.json({ page: 'Experience' }));
router.get('/education', (req, res) => res.json({ page: 'Education' }));

module.exports = router;
