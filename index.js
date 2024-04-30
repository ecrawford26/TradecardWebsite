// index.js

const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const cardRoutes = require('./TradecardWebsite/routes/cards');

// Middleware to use the cardRoutes for requests starting with '/cards'
app.use('/cards', cardRoutes, express.static('Views'));
app.use(express.static('Views'))

// Start the server
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});


// API endpoint to fetch detailed information about a specific card
app.get('/cards/:cardName', (req, res) => {
    const cardName = req.params.cardName;
    const getCardDetailsQuery = `SELECT * FROM cards WHERE name = ?`;
    connection.query(getCardDetailsQuery, [cardName], (err, cardDetails) => {
        if (err) {
            console.error('Error fetching card details:', err);
            res.status(500).json({ error: 'Internal Server Error' });
            return;
        }
        if (cardDetails.length === 0) {
            res.status(404).json({ error: 'Card not found' });
            return;
        }
        res.json(cardDetails[0]);
    });
});

// API endpoint to fetch detailed information about a specific card
app.get('/cards/:cardName', (req, res) => {
    const cardName = req.params.cardName;
    const getCardDetailsQuery = `
        SELECT 
            card_id, 
            expansion_id, 
            series_id, 
            publisher_id, 
            generation_id, 
            release_date, 
            artist_id, 
            name, 
            card_number, 
            type_id, 
            level, 
            hp, 
            evolves_from, 
            evolves_to, 
            rarity_id, 
            info, 
            pokedex_numbers, 
            url 
        FROM 
            cards 
        WHERE 
            name = ?`;
    connection.query(getCardDetailsQuery, [cardName], (err, cardDetails) => {
        if (err) {
            console.error('Error fetching card details:', err);
            res.status(500).json({ error: 'Internal Server Error' });
            return;
        }
        if (cardDetails.length === 0) {
            res.status(404).json({ error: 'Card not found' });
            return;
        }
        res.json(cardDetails[0]);
    });
});