// index.js

const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const cardRoutes = require('./routes/cards');

app.use('/cards', cardRoutes);

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
