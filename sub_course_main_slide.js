let slides = document.querySelector('.slides');
let slideIndex = 0;

function nextSlide() {
  slideIndex++;
  if (slideIndex >= 4) {
    slideIndex = 0;
  }
  slides.style.transform = `translateX(-${slideIndex * 400}px)`;
}

setInterval(nextSlide, 2000);