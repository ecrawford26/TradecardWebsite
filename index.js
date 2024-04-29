// index.js

const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const cardRoutes = require('./TradecardWebsite/routes/cards');

// Middleware to use the cardRoutes for requests starting with '/cards'
app.use('/cards', cardRoutes, express.static('Views'));

// Start the server
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
