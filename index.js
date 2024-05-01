const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const cardRoutes = require('./TradecardWebsite/routes/cards');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
const session = require('express-session');

// Create a MySQL connection pool
const connection = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: '40418891db'
});

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(session({
    secret: 'secret_key',
    resave: false,
    saveUninitialized: true
}));

// Routes
app.use('/cards', cardRoutes, express.static('Views'));

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

// Route to handle registration form submission
app.post('/register', (req, res) => {
    const { name, email, password } = req.body;
  
    connection.query(
      'INSERT INTO users (name, email, password) VALUES (?, ?, ?)',
      [name, email, password],
      (error, results) => {
        if (error) {
          console.error('Error registering user:', error);
          return res.status(500).send('Error registering user. Please try again.');
        }
  
        console.log('User registered:', results);
        res.redirect('/cards/discussion.html');
      }
    );
});

// Route to handle requests to the login page
app.get('/login', (req, res) => {
    res.send('Login Page');
});

// Route to handle sign-in form submission
app.post('/login', (req, res) => {
    const { email, password } = req.body;

    connection.query(
        'SELECT * FROM users WHERE email = ?',
        [email],
        (error, results) => {
            if (error) {
                console.error('Error retrieving user:', error);
                return res.status(500).send('Internal Server Error');
            }

            if (results.length === 0) {
                return res.status(401).send('Invalid email or password');
            }

            const user = results[0];
            if (user.password !== password) {
                return res.status(401).send('Invalid email or password');
            }

            // Store user data in session upon successful login
            req.session.user = user;
            res.redirect('/cards/discussion.html'); // Redirect to the discussion page
        }
    );
});

// Route to handle form submission for posting messages
app.post('/post-message', (req, res) => {
    const { message } = req.body;
    const user = req.session.user;
    if (!user) {
        return res.status(401).send('Unauthorized');
    }
    const username = user.name;
    // Code to save the message to the database with the username
    connection.query(
        'INSERT INTO messages (username, message) VALUES (?, ?)',
        [username, message],
        (error, results) => {
            if (error) {
                console.error('Error posting message:', error);
                return res.status(500).send('Error posting message. Please try again.');
            }
            console.log('Message posted successfully:', results);
            res.redirect('/discussion.html'); // Redirect to the discussion page
        }
    );
});


// Route to fetch messages from the database
app.get('/fetch-messages', (req, res) => {
    connection.query('SELECT * FROM messages', (error, results) => {
        if (error) {
            console.error('Error fetching messages:', error);
            return res.status(500).send('Error fetching messages. Please try again.');
        }
        res.json(results);
    });
});