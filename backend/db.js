require('dotenv').config();
const mysql = require('mysql2/promise');

const writerPool = mysql.createPool({
  host: process.env.DB_WRITER_HOST, // Writer endpoint
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

const readerPool = mysql.createPool({
  host: process.env.DB_READER_HOST, // Reader endpoint
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

module.exports = { writerPool, readerPool };
