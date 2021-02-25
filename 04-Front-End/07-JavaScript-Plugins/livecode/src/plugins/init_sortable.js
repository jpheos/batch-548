import Sortable from 'sortablejs';

const changePosition = (event) => {
  console.log('changePosition');
};

const initSortable = () => {
  const list = document.querySelector('#results');
  Sortable.create(list, {
    ghostClass: "ghost",
    animation: 150,
    onEnd: changePosition
  });
};

export {
  initSortable
};
