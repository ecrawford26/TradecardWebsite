// scripts.js

// Fetch all cards from the backend
async function fetchCards() {
    const response = await fetch('/cards/allcards');
    if (!response.ok) {
        throw new Error('Failed to fetch cards');
    }
    return await response.json();
}

// Fetch expansion data from the backend and store it in a JavaScript object
async function fetchExpansions() {
    const response = await fetch('http://localhost:3000/allcards');
    const expansions = await response.json();
    return expansions.reduce((acc, curr) => {
        acc[curr.expansion_id] = curr.expansion_name;
        return acc;
    }, {});
}

// Similarly fetch data for generations, publishers, rarities, and types
// and store them in JavaScript objects or arrays using similar methods


// Display cards on the webpage
function displayCards(cards) {
    const cardList = document.getElementById('cardList');
    if (!cardList) {
        console.error('Error: cardList element not found');
        return;
    }
    cardList.innerHTML = ''; // Clear previous cards
    cards.forEach(card => {
        const cardElement = document.createElement('div');
        cardElement.classList.add('card');
        const imageElement = document.createElement('img');
        imageElement.src = card.url;
        imageElement.alt = card.name;
        imageElement.addEventListener('click', () => handleCardClick(card.name));
        const nameElement = document.createElement('h2');
        nameElement.textContent = card.name;
        cardElement.appendChild(imageElement);
        cardElement.appendChild(nameElement);
        cardList.appendChild(cardElement);
    });
}

// Fetch and display cards when the page loads
window.addEventListener('load', async () => {
    try {
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);
        const cardName = urlParams.get('name');
        if (cardName) {
            const cardDetails = await fetchCardDetails(cardName);
            displayCardDetails(cardDetails);
        } else {
            const cards = await fetchCards();
            displayCards(cards);
        }
    } catch (error) {
        console.error('Error:', error);
        // Handle error (e.g., display error message on the page)
    }
});

// scripts.js

// Function to toggle the dropdown for a card
function toggleDropdown(cardId) {
    const dropdown = document.getElementById('dropdown_' + cardId);
    if (dropdown.style.display === 'none') {
        dropdown.style.display = 'block';
    } else {
        dropdown.style.display = 'none';
    }
}window.addEventListener('DOMContentLoaded', async () => {
    try {
        // Fetch user's collection data
        const response = await fetch('http://localhost:3000/mycollection');
        const userCollection = await response.json();

        // Get the container to display the collection
        const myCollectionContainer = document.getElementById('myCollectionContainer');

        // Populate the container with card details
        userCollection.forEach(card => {
            const cardHtml = `
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <!-- Card image -->
                        <img src="${card.url}" class="card-img-top" alt="${card.name}">
                        <div class="card-body">
                            <!-- Card name -->
                            <h5 class="card-title">${card.name}</h5>
                            <!-- Dropdown for additional card details -->
                            <div class="dropdown mt-3">
                                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton_${card.card_id}" data-bs-toggle="dropdown" aria-expanded="false">
                                    Show Details
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton_${card.card_id}">
                                    <!-- Additional card details -->
                                    <li class="list-group-item">Card ID: ${card.card_id}</li>
                                    <li class="list-group-item">Expansion ID: ${card.expansion_id}</li>
                                    <li class="list-group-item">Series ID: ${card.series_id}</li>
                                    <li class="list-group-item">Publisher ID: ${card.publisher_id}</li>
                                    <li class="list-group-item">Generation ID: ${card.generation_id}</li>
                                    <li class="list-group-item">Release Date: ${card.release_date}</li>
                                    <li class="list-group-item">Artist ID: ${card.artist_id}</li>
                                    <li class="list-group-item">Card Number: ${card.card_number}</li>
                                    <li class="list-group-item">Type ID: ${card.type_id}</li>
                                    <li class="list-group-item">Level: ${card.level}</li>
                                    <li class="list-group-item">HP: ${card.hp}</li>
                                    <li class="list-group-item">Evolves From: ${card.evolves_from}</li>
                                    <li class="list-group-item">Evolves To: ${card.evolves_to}</li>
                                    <li class="list-group-item">Rarity ID: ${card.rarity_id}</li>
                                    <li class="list-group-item">Info: ${card.info}</li>
                                    <li class="list-group-item">Pokedex Numbers: ${card.pokedex_numbers}</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            `;
            myCollectionContainer.insertAdjacentHTML('beforeend', cardHtml);
        });
    } catch (error) {
        console.error('Error fetching user collection:', error);
    }
});

window.addEventListener('DOMContentLoaded', async () => {
    try {
        // Fetch user's collection data
        const response = await fetch('/usercards');
        const userCollection = await response.json();

        // Get the container to display the collection
        const myCollectionContainer = document.getElementById('usercardsContainer');

        // Populate the container with card details
        userCollection.forEach(userCard => {
            const cardHtml = `
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <!-- Card image -->
                        <img src="${userCard.card_image_url}" class="card-img-top" alt="${userCard.card_name}">
                        <div class="card-body">
                            <!-- Card name -->
                            <h5 class="card-title">${userCard.card_name}</h5>
                            <!-- Additional card details -->
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">User Card ID: ${userCard.user_card_id}</li>
                                <li class="list-group-item">User ID: ${userCard.user_id}</li>
                                <li class="list-group-item">Card ID: ${userCard.card_id}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            `;
            myCollectionContainer.insertAdjacentHTML('beforeend', cardHtml);
        });
    } catch (error) {
        console.error('Error fetching user collection:', error);
    }
});

document.addEventListener('DOMContentLoaded', function() {
    const discussionContainer = document.getElementById('discussionContainer');
    const postForm = document.getElementById('postForm');

    // Function to display messages
    function displayMessages(messages) {
        discussionContainer.innerHTML = '';
        messages.forEach(message => {
            const messageDiv = document.createElement('div');
            messageDiv.classList.add('message-container');
            messageDiv.innerHTML = `
                <p><strong>${message.username}:</strong> ${message.message}</p>
            `;
            discussionContainer.appendChild(messageDiv);
        });
    }

    // Function to handle form submission
    postForm.addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent default form submission
        const messageInput = document.getElementById('message');
        const message = messageInput.value.trim(); // Get message text
        if (message !== '') {
            // Add new message to the messages array
            const username = getUser(); // Get the username of the logged-in user
            postMessage(username, message); // Call function to post message
            // Clear input field
            messageInput.value = '';
        }
    });
    

// Function to post a message
function postMessage(username, message) {
    // Perform AJAX request to post the message
    const formData = new FormData();
    formData.append('username', username);
    formData.append('message', message);

    fetch('/post-message', {
        method: 'POST',
        body: formData
    })
    .then(response => {
        if (response.ok) {
            return response.text();
        }
        throw new Error('Network response was not ok.');
    })
    .then(data => {
        console.log(data); // Log the response from the server
        // Fetch updated messages and display them
        fetchMessages();
    })
    .catch(error => {
        console.error('Error posting message:', error);
        // Handle error (e.g., display error message to the user)
    });
}


    // Function to get the username of the logged-in user
    function getUser() {
        // Check if the user object exists in the session
        const user = JSON.parse(localStorage.getItem('user'));
        if (user) {
            // Return the username if the user is logged in
            return user.name;
        } else {
            // Return a default username or handle the case when the user is not logged in
            return 'Guest';
        }
    }

    // Function to fetch messages from the server
    async function fetchMessages() {
        try {
            const response = await fetch('/fetch-messages');
            if (!response.ok) {
                throw new Error('Failed to fetch messages');
            }
            const messages = await response.json();
            // Display the fetched messages
            displayMessages(messages);
        } catch (error) {
            console.error('Error fetching messages:', error);
            // Handle error (e.g., display error message to the user)
        }
    }

    // Initial fetch of messages
    fetchMessages();
});
