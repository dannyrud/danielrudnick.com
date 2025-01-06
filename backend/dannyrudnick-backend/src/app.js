require('module-alias/register');
const express = require('express');
const serverless = require('serverless-http');
const cors = require('cors');
const apiRoutes = require('./routes/api');

const app = express();

app.use(cors());
app.use(express.json());
app.use('/api', apiRoutes);


module.exports = app;


module.exports.handler = serverless(app);
