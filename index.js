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

// Middleware to check if the user is authenticated
function isAuthenticated(req, res, next) {
    if (req.session && req.session.user) {
        // User is authenticated, proceed to the next middleware or route handler
        return next();
    } else {
        // User is not authenticated, redirect to the login page
        res.redirect('/createaccount.html'); // Adjust the redirect URL as needed
    }
}

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


// Route to handle requests to the login page
app.get('/login', (req, res) => {
    res.send('Login Page');
});

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
                return res.status(401).json({ status: 'error', message: 'Invalid email or password' });
            }

            const user = results[0];
            if (user.password !== password) {
                return res.status(401).json({ status: 'error', message: 'Invalid email or password' });
            }

            // Store user data in session upon successful login
            req.session.user = user;
            res.json({ status: 'success', message: 'Logged in successfully', redirect: '/cards/collections.html' });
        }
    );
});




// Route to handle user logout
app.get('/logout', (req, res) => {
    req.session.destroy((err) => {
        if (err) {
            console.error('Error destroying session:', err);
            return res.status(500).send('Internal Server Error');
        }
        res.redirect('/cards/createaccount.html'); // Redirect to login page after logout
    });
});


// Route to handle requests to the collections page
app.get('/collections.html', isAuthenticated, (req, res) => {
    res.sendFile(__dirname + '/Views/collections.html');
});

app.post('/register', (req, res) => {
    const { name, email, password } = req.body;

    const insertQuery = 'INSERT INTO users (name, email, password) VALUES (?, ?, ?)';
    
    connection.query(insertQuery, [name, email, password], (error, results) => {
        if (error) {
            console.error('Error registering new user:', error);
            return res.status(500).json({ status: 'error', message: 'Internal Server Error' });
        }
        // Set user session here if login right after registration is needed
        req.session.user = { name, email };
        res.json({ status: 'success', message: 'Account created successfully!' });
    });
});

// tried to create a route to handle creating a new discussion that linked with the database but i couldn't get it to work properly
app.post('/create-discussion', (req, res) => {
    const { title, content } = req.body;

    const insertQuery = 'INSERT INTO discussions (title, content) VALUES (?, ?)';
    
    connection.query(insertQuery, [title, content], (error, results) => {
        if (error) {
            console.error('Error creating new discussion:', error);
            return res.status(500).json({ status: 'error', message: 'Internal Server Error' });
        }
        res.json({ status: 'success', message: 'Discussion created successfully!' });
    });
});
