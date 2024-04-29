// Fetch all cards from the backend
async function fetchCards() {
    try {
        const response = await fetch('/cards/allcards');
        if (!response.ok) {
            throw new Error('Failed to fetch cards');
        }
        const cards = await response.json();
        displayCards(cards);
    } catch (error) {
        console.error('Error fetching cards:', error);
        // Handle error (e.g., display error message on the page)
    }
}

// Display cards on the webpage
function displayCards(cards) {
    const cardList = document.getElementById('cardList');
    if (!cardList) {
        console.error('Error: cardList element not found'); // Debugging statement
        return;
    }
    cardList.innerHTML = ''; // Clear previous cards
    cards.forEach(card => {
        const cardElement = document.createElement('div');
        cardElement.classList.add('card');
        const imageElement = document.createElement('img');
        imageElement.src = card.url; // Set the src attribute to the image URL
        imageElement.alt = card.name; // Set the alt attribute for accessibility
        const nameElement = document.createElement('h2');
        nameElement.textContent = card.name; // Set the card name
        cardElement.appendChild(imageElement);
        cardElement.appendChild(nameElement);
        cardList.appendChild(cardElement);
    });
}

// Function to fetch card details by card name
async function fetchCardDetails(cardName) {
    try {
        const response = await fetch(`/cards/${encodeURIComponent(cardName)}`);
        if (!response.ok) {
            throw new Error('Failed to fetch card details');
        }
        const cardDetails = await response.json();
        displayCardDetails(cardDetails);
    } catch (error) {
        console.error('Error fetching card details:', error);
        // Handle error (e.g., display error message on the page)
    }
}

// Function to display card details on the webpage
function displayCardDetails(cardDetails) {
    const cardDetailsContainer = document.getElementById('cardDetails');
    if (!cardDetailsContainer) {
        console.error('Error: cardDetails container not found'); // Debugging statement
        return;
    }
    cardDetailsContainer.innerHTML = ''; // Clear previous card details
    // Add HTML structure to display card details
    cardDetailsContainer.innerHTML = `
        <h2>${cardDetails.name}</h2>
        <p>Card ID: ${cardDetails.card_id}</p>
        <p>Expansion ID: ${cardDetails.expansion_id}</p>
        <!-- Add more details here as needed -->
    `;
}

// Fetch card details when the page loads
window.addEventListener('load', () => {
    // Extract card name from URL query string
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const cardName = urlParams.get('name');
    if (cardName) {
        fetchCardDetails(cardName);
    } else {
        console.error('Error: Card name not found in URL query string');
    }
});


// Fetch and display cards when the page loads
window.addEventListener('load', () => {
    fetchCards();
});
