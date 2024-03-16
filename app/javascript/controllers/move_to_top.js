function debounce(func, delay) {
  let timer;
  return function() {
    clearTimeout(timer);
    timer = setTimeout(() => func.apply(this, arguments), delay);
  };
}

window.addEventListener('scroll', debounce(function() {
  const scrollPosition = window.scrollY;
  const extraDiv = document.querySelector('.extra-div');

  if (scrollPosition >= 70) {
    extraDiv.style.display = 'block';
    setTimeout(() => {
      extraDiv.style.opacity = '1';
    }, 300);
  } else {
    extraDiv.style.opacity = '0';
    setTimeout(() => {
      extraDiv.style.display = 'none';
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
