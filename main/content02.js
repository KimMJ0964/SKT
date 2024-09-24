const items = document.querySelectorAll('.item');

const expand = (item, i) => {
  items.forEach((it, ind) => {
    if (i === ind) return;
    it.clicked = false;
  });
  gsap.to(items, {
    width: item.clicked ? '10vw' : '5vw',
    duration: 1 });


  item.clicked = !item.clicked;
  gsap.to(item, {
    width: item.clicked ? '30vw' : '10vw',
    duration: 1 });

};

items.forEach((item, i) => {
  item.clicked = false;
  item.addEventListener('click', () => expand(item, i));
});