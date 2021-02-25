import { searchMovies } from './movies';
import { initMarkdown } from './plugins/init_markdown';
import { initSelect2 } from './plugins/init_select2';

const form = document.querySelector('#search-movies');
const input = document.querySelector('#keyword');

form.addEventListener('submit', (event) => {
  event.preventDefault();

  searchMovies(input.value);
});

initMarkdown();
initSelect2();
