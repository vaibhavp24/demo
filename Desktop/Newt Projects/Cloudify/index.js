// This code sample uses the 'node-fetch' library:
// https://www.npmjs.com/package/node-fetch
const form = document.getElementById("myForm");
const apiKey = "de64ecb5c57cb4993b8ec66b45edc17a";
const token = "ATTAb894802fda1c0f0c3422006adf6d1692e36e602056a6d04a00a79d502d1d7fed6146E866";
const listId = "646d98b4de7ddfb8784cfd1e";
const board_id = "EIYkj1am"
form.addEventListener("submit", async (event) => {
  event.preventDefault();
  const name = document.getElementById("name").value;
  const desc = document.getElementById("description").value;
  const due = document.getElementById("due-date").value;
  const start = document.getElementById("start-date").value;



  const url = `https://api.trello.com/1/boards?key=${apiKey}&token=${token}&idList=${listId}`;
  try {
    const response = await fetch(url, {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        name: name,
        desc: desc,
        due: due,
        start: start,
      }),
    });
    if (response.ok) {
      const result = await response.text();
      alert("Card created successfully!!!")
      console.log("Card created successfully:", result);
      // Reset form inputs
      document.getElementById("name").value = "";
      document.getElementById("description").value = "";
      document.getElementById("due-date").value = "";
      document.getElementById("start-date").value = "";
    } else {
      console.error(
        "Error creating card:",
        response.status,
        response.statusText
      );
    }
  } catch (error) {
    console.error("An error occurred while creating the card:", error.message);
  }
});

async function createTrelloCard(name, description) {
  // const name = document.getElementById('name').value
  const url = `https://api.trello.com/1/boards?key=${apiKey}&token=${token}&idBoard=${board_id}&name=${encodeURIComponent(name)}&desc=${encodeURIComponent(description)}`;

  const response = await fetch(url, { method: 'POST' });

  if (response.ok) {
    const card = await response.json();
    console.log('Card created', card);
  } else {
    console.error('Failed to create card:', response.statusText);
  }
}

// Usage example
const cardName = 'New Card';
const cardDescription = 'This is a new card created via the Trello API';

createTrelloCard(cardName, cardDescription);