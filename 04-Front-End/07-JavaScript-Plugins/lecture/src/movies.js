import { initSortable } from './plugins/init_sortable';

const results = document.querySelector('#results');

const displayMovies = (movies) => {
  movies.forEach((movie) => {
    const li = `<li class="list-inline-item">
      <img src="${movie.Poster}" alt="">
      <p>${movie.Title}</p>
    </li>`;

    results.insertAdjacentHTML("beforeend", li);
  });

  initSortable();
};

const searchMovies = (query) => {
  fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then((data) => {
      results.innerHTML = "";
      displayMovies(data.Search);
    });
};

export {
  displayMovies,
  searchMovies
};
