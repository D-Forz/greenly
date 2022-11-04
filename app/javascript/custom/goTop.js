window.onscroll = function () {
  if (document.documentElement.scrollTop > 100) {
      document.querySelector('.go-top-container')
          .classList.add('show-top-button');
  } else {
      document.querySelector(".go-top-container")
          .classList.remove('show-top-button');
  }
};
