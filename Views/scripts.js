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
    cardList.innerHTML = ''; // Clear previous cards
    cards.forEach(card => {
        const cardElement = document.createElement('div');
        cardElement.classList.add('card');
        const imageElement = document.createElement('img');
        imageElement.src = card.url; // Set the src attribute to the image URL
        imageElement.alt = card.name; // Set the alt attribute for accessibility
        const nameElement = document.createElement('h2');
        nameElement.textContent = card.name; // Set the card name
        cardElement.appendChild(nameElement);
        cardElement.appendChild(imageElement);
        cardList.appendChild(cardElement);
    });
}

// Fetch and display cards when the page loads
window.addEventListener('load', () => {
    fetchCards();
});

