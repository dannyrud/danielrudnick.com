const express = require('express');
const router = express.Router();

router.get('/home', (req, res) => res.json({ page: 'Home' }));
router.get('/projects', (req, res) => res.json({ page: 'Projects' }));
router.get('/experience', (req, res) => res.json({ page: 'Experience' }));
router.get('/education', (req, res) => res.json({ page: 'Education' }));
router.get('/about', (req, res) => res.json({ page: 'About' }));

module.exports = router;