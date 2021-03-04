const initNavbar = () => {
  const navbar = document.querySelector('.navbar')
  document.addEventListener('scroll', (e) => {
    navbar.classList.toggle('navbar-lewagon-white', window.scrollY > window.innerHeight)
  })
}

export { initNavbar }
