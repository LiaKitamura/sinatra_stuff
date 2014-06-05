// this tells the browswer on load do this instead onload
window.onLoad = function () {
// this loads all the images into an array in the images variable
  var images = document.querySelectorAll('img');
// iterates through the images array listening for click event
  for (var i = 0; i < images.length; i++) {
    images[i].addEventListener('click', function(){
      if (this.style.visibility == "visibile" || this.style.visibility === "") {
        this.style.visibility = "hidden";
      } else {
        this.style.visibility = "visible";
      }
    }, false);
  }
};
