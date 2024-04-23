// Import required modules
const express = require('express');
const mysql = require('mysql');

// Create Express app
const app = express();

// Create MySQL connection
const pool = mysql.createPool({
  connectionLimit: 10,
  host: 'localhost',
  user: 'ecrawford26',
  password: '@Dsil[]882EVi/7)',
  database: '40418891'
});

// Add CORS headers middleware
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*'); // Allow requests from all origins
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
  next();
});

// Route to fetch information for Alakazam card and display it on a page
app.get('/alakazam', (req, res) => {
  // Perform a query to retrieve all information for the card named 'Alakazam'
  const cardName = 'Alakazam';
  pool.query('SELECT * FROM card WHERE name = ?', [cardName], (error, results) => {
    if (error) {
      console.error('Error fetching card information:', error);
      res.status(500).send('Internal Server Error');
      return;
    }

    // Check if any results were returned
    if (results.length === 0) {
      res.status(404).send(`No card found with the name '${cardName}'`);
      return;
    }

    // Render a HTML page with all information about the card
    const card = results[0];
    const html = `
      <h1>${card.name}</h1>
      <img src="${card.url}" alt="${card.name}">
      <p><strong>Type:</strong> ${card.type_id}</p>
      <p><strong>Rarity:</strong> ${card.rarity_id}</p>
      <p><strong>Set:</strong> ${card.series_id}</p>
      <p><strong>Publisher:</strong> ${card.publisher_id}</p>
      <p><strong>Generation:</strong> ${card.generation_id}</p>
      <p><strong>Release Date:</strong> ${card.release_date}</p>
      <p><strong>Artist:</strong> ${card.artist_id}</p>
      <p><strong>Card Number:</strong> ${card.card_number}</p>
      <p><strong>Level:</strong> ${card.level}</p>
      <p><strong>HP:</strong> ${card.hp}</p>
      <p><strong>Evolves From:</strong> ${card.evolves_from}</p>
      <p><strong>Evolves To:</strong> ${card.evolves_to}</p>
      <p><strong>Pokedex Numbers:</strong> ${card.pokedex_numbers}</p>
      <p><strong>Info:</strong> ${card.info}</p>
    `;
    res.send(html);
  });
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}/Alakazam`);
});


