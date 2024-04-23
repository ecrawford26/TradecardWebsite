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

// Route to fetch data from card table and display images
app.get('/cards', (req, res) => {
  // Fetch data from card table
  pool.query('SELECT * FROM card', (error, results) => {
    if (error) {
      console.error('Error fetching card data:', error);
      res.status(500).send('Internal Server Error');
      return;
    }

    // Generate HTML with image tags for each URL
    let html = '<h1>My Card Collection</h1>';
    html += '<div class="card-container">';
    results.forEach(row => {
      html += `<img src="${row.url}" alt="Card Image">`;
    });
    html += '</div>';

    // Send HTML response
    res.send(html);
  });
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});