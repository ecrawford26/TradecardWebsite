// index.js

const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const cardRoutes = require('./TradecardWebsite/routes/cards');
const bodyParser = require('body-parser');
const mysql = require('mysql2');


// Create a MySQL connection pool
const connection = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: '40418891db'
});

// Middleware to use the cardRoutes for requests starting with '/cards'
app.use('/cards', cardRoutes, express.static('Views'));
app.use(bodyParser.urlencoded({ extended: true }));

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

// Route to handle registration form submission
app.post('/register', (req, res) => {
    // Extract user data from the request body
    const { name, email, password } = req.body;
  
    // Insert the user into the database
    connection.query(
      'INSERT INTO users (name, email, password) VALUES (?, ?, ?)',
      [name, email, password],
      (error, results) => {
        if (error) {
          console.error('Error registering user:', error);
          // Handle registration error (e.g., duplicate email)
          return res.status(500).send('Error registering user. Please try again.');
        }
  
        // User registered successfully
        console.log('User registered:', results);
        // Redirect the user to a success page or another route
        res.redirect('/login'); // Redirect to login page
      }
    );
});

// Route to handle requests to the login page
app.get('/login', (req, res) => {
    // You can render a login form here or redirect to another page
    res.send('Login Page'); // Example: Sending a simple response
});

// Route to handle sign-in form submission
app.post('/login', (req, res) => {
    // Extract user credentials from the request body
    const { email, password } = req.body;

    // Check if the email and password are provided
    if (!email || !password) {
        return res.status(400).send('Email and password are required');
    }

    // Query the database to find the user with the provided email
    connection.query(
        'SELECT * FROM users WHERE email = ?',
        [email],
        (error, results) => {
            if (error) {
                console.error('Error retrieving user:', error);
                return res.status(500).send('Internal Server Error');
            }

            // Check if a user with the provided email exists
            if (results.length === 0) {
                return res.status(401).send('Invalid email or password');
            }

            // Verify the password
            const user = results[0];
            if (user.password !== password) {
                return res.status(401).send('Invalid email or password');
            }

            // User authenticated successfully
            // You can create a session or JWT token here to keep the user logged in

            // Redirect the user to the dashboard or any authorized page
            res.redirect('http://localhost:3000/cards/mycollection.html');
        }
    );
});

// API endpoint to fetch all user cards @ http://localhost:3000/usercards
app.get('/usercards', (req, res) => {
    const getAllUserCardsQuery = 'SELECT * FROM user_cards';
    connection.query(getAllUserCardsQuery, (err, userCards) => {
        if (err) {
            console.error('Error fetching user cards:', err);
            res.status(500).json({ error: 'Internal Server Error' });
            return;
        }
        res.json(userCards);
    });
});
