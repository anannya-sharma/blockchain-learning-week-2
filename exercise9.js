const apiUrl = "https://jsonplaceholder.typicode.com/posts";

// Function to fetch data from the API
function fetchDataWithPromises(userId) {
  fetch(apiUrl)
    .then((response) => {
      return response.json();
    })
    .then((data) => {
      const userPosts = data.filter((post) => post.userId === userId);
      console.log(userPosts);
    })
    .catch((error) => {
      console.error("Error fetching data:", error);
    });
}

fetchDataWithPromises(1);

// Function to fetch data from the API using async/await
async function fetchDataWithAsyncAwait(userId) {
  try {
    const response = await fetch(apiUrl);
    const data = await response.json();
    const userPosts = data.filter((post) => post.userId === userId);
    console.log(userPosts);
  } catch (error) {
    console.error("Error fetching data:", error);
  }
}

fetchDataWithAsyncAwait(1);
