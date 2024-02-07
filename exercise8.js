const apiUrl = "https://jsonplaceholder.typicode.com/posts";

// Function to fetch data from the API
function fetchDataWithPromises() {
  fetch(apiUrl)
    .then((response) => {
      return response.json();
    })
    .then((data) => {
      console.log(data);
    })
    .catch((error) => {
      console.error("Error fetching data:", error);
    });
}

fetchDataWithPromises();

// Function to fetch data from the API using async/await
async function fetchDataWithAsyncAwait() {
  try {
    const response = await fetch(apiUrl);
    const data = await response.json();
    console.log(data);
  } catch (error) {
    console.error("Error fetching data:", error);
  }
}

fetchDataWithAsyncAwait();
