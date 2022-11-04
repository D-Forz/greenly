window.onscroll = function () {
  if (document.documentElement.scrollTop > 100) {
      document.querySelector('.go-top-container')
          .classList.add('show');
  } else {
      document.querySelector(".go-top-container")
          .classList.remove('show');
  }
};
