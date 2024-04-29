// scripts.js

// Fetch all cards from the backend
async function fetchCards() {
    const response = await fetch('/cards/allcards');
    if (!response.ok) {
        throw new Error('Failed to fetch cards');
    }
    return await response.json();
}

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

// Fetch card details from the backend
async function fetchCardDetails(cardName) {
    const response = await fetch(`/cards/${encodeURIComponent(cardName)}`);
    if (!response.ok) {
        throw new Error('Failed to fetch card details');
    }
    return await response.json();
}

// Display card details on the webpage
function displayCardDetails(cardDetails) {
    document.getElementById('cardName').textContent = cardDetails.name;
    document.getElementById('cardImage').src = cardDetails.url;
    document.getElementById('cardNameValue').textContent = cardDetails.name;
    document.getElementById('cardUrlValue').textContent = cardDetails.url;
    // Populate other fields as needed
}

// Fetch and display card details when the page loads
window.addEventListener('load', async () => {
    try {
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);
        const cardName = urlParams.get('name');
        if (cardName) {
            const cardDetails = await fetchCardDetails(cardName);
            displayCardDetails(cardDetails);
        } else {
            console.error('Error: No card name provided');
        }
    } catch (error) {
        console.error('Error:', error);
        // Handle error (e.g., display error message on the page)
    }
});
