function slowScroll (id) {
    var offset = 0;
    $('html, body').stop().animate ({
      scrollTop: $(id).offset ().top - offset
    }, 3000);
    return false;
  }