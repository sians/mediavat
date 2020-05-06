// const adminPostPage = document.querySelector('.page-container .posts');

const postCardHover = () => {
  console.log('yo')
  const adminPostPage = document.querySelector('.page-container .posts');
  console.log(adminPostPage)

  if (adminPostPage) {
    const postCards = document.querySelectorAll('.post-card');
    postCards.forEach(card => {
      card.addEventListener('mouseenter', event => {
        event.currentTarget.querySelector('.buttons').style.display = "flex";
      });
      card.addEventListener('mouseleave',  event => {
        event.currentTarget.querySelector('.buttons').style.display = "none";
      })
    })
  }
}


export { postCardHover };
