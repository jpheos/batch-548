console.log("Hello from src/index.js!");
const batch = 548; // change to your own batch id
const baseUrl = `https://wagon-chat.herokuapp.com/${batch}/messages`;

const refreshButton = document.querySelector('#refresh');
const listMessages = document.querySelector('#messages ul');

const form = document.querySelector('#comment-form');
const author = document.querySelector('#your-name');
const content = document.querySelector('#your-message');

const displayMessage = (message) => {
  listMessages.insertAdjacentHTML('afterbegin', `
    <li>${message.content} par ${message.author} le ${message.created_at}</li>
  `);
};

const displayMessages = (messages) => {
  listMessages.innerHTML = '';

  messages.forEach((message) => {
    displayMessage(message);
  });
};

const fetchMessages = () => {
  fetch(baseUrl)
    .then(response => response.json())
    .then((data) => {
      displayMessages(data.messages);
    });
};

refreshButton.addEventListener('click', () => {
  fetchMessages();
});

// POST

const submitMessage = () => {
  fetch(baseUrl, {
    method: 'POST',
    body: JSON.stringify({ author: author.value, content: content.value })
  })
    .then(response => response.json())
    .then(displayMessage);
};

form.addEventListener('submit', (e) => {
  e.preventDefault();

  submitMessage();

  form.reset();
});

fetchMessages();
