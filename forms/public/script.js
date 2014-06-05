
var windowLoaded = function() {
  var form = document.forms[0];
  if (form) {
    form.onsubmit = formValidator;
  }
};

var formValidator = function () {
  var ageInput = this.querySelector('input[name=age]');
  var age = parseInt(ageInput.value);

    if (age < 18) {
      alert('You are too young to be using the web');
      return false;
    } else if (age > 100) {
      alert('You are too old to be using the web');
      return false;
    } else if (age.toString() == "NaN") {
      alert("You have to actually enter in a number");
    }
    return true;
};

window.onload = windowLoaded;
