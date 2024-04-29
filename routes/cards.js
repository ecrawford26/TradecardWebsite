// routes/cards.js

const express = require('express');
const router = express.Router();
const db = require('../db');

// http://localhost:3000/cards/allcards
router.get('/allcards', async (req, res) => {
    try {
        const [rows, fields] = await db.query('SELECT * FROM card');
        res.json(rows);
    } catch (error) {
        console.error('Error querying database:', error);
        res.status(500).json({ message: 'Internal Server Error' });
    }
});


// http://localhost:3000/cards/urls
router.get('/urls', async (req, res) => {
    try {
        const [rows, fields] = await db.query('SELECT url FROM card');
        const urls = rows.map(card => card.url);
        // Generate HTML with <img> tags for each URL
        const imagesHtml = urls.map(url => `<img src="${url}" alt="Card Image">`).join('');
        // Send the HTML response
        res.send(imagesHtml);
    } catch (error) {
        console.error('Error querying database:', error);
        res.status(500).json({ message: 'Internal Server Error' });
    }
});


module.exports = router;
