const canMove = (td) => {
  const cEmpty = document.querySelector('.empty')
  const cEmptyX = cEmpty.cellIndex
  const cEmptyY = cEmpty.parentElement.rowIndex
  const tdX = td.cellIndex
  const tdY = td.parentElement.rowIndex
  const sameX = cEmptyY == tdY && Math.abs(cEmptyX - tdX) == 1
  const sameY = cEmptyX == tdX && Math.abs(cEmptyY - tdY) == 1
  return sameX || sameY
}

const switchTd = (td) => {
  const cEmpty = document.querySelector('.empty');

  cEmpty.classList.remove('empty');
  td.classList.add('empty');
  cEmpty.innerText = td.innerText;
  td.innerText = '';
}

checkWin = () => {
  let win = true
  document.querySelectorAll('td').forEach((td, index) => {
    if (!(index == 15 || td.innerText == index + 1))
      win = false;
  })
  return win
}

const tds = document.querySelectorAll('td')

tds.forEach((td) => {
  td.addEventListener('click', (e) => {
    const tdClicked = e.currentTarget;
    if (canMove(tdClicked)) {
      switchTd(tdClicked)
      if (checkWin()) {
        alert("bravo")
        window.location.reload()
      }
    }
  })
});

