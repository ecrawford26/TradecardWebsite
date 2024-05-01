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
            res.redirect('/cards/createaccount.html'); 
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