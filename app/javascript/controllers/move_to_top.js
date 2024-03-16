function debounce(func, delay) {
  let timer;
  return function() {
    clearTimeout(timer);
    timer = setTimeout(() => func.apply(this, arguments), delay);
  };
}

window.addEventListener('scroll', debounce(function() {
  const scrollPosition = window.scrollY;
  const extraDiv = document.querySelectorAll('.extra-div');

  if (scrollPosition >= 70) {
    extraDiv.forEach((el) => {
      el.style.display = 'block';
    })
    setTimeout(() => {
      extraDiv.forEach((el) => {
        el.style.opacity = '1';
      })
    }, 300);
  } else {
    extraDiv.forEach((el) => {
      el.style.opacity = '0';
    })
    setTimeout(() => {
      extraDiv.forEach((el) => {
        el.style.disply = 'none';
      })
    }, 200);
  }
}, 50));

document.addEventListener('click', function(event) {
  const target = event.target;

  if (target.classList.contains('extra-div') || target.classList.contains('text') || target.classList.contains('icon')) {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  }
});
