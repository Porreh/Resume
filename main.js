var myAge = {
  init: function() {
    this.cacheDOM();
    this.yearNow();
    this.monthNow();
    this.myAgeNow();
    this.render();
  },

  cacheDOM: function() {
    this.placeholder = document.querySelector('bdi');
  },

  yearNow: function() {
    var d = new Date();
    var y = d.getFullYear();
    return y;
  },

  monthNow: function() {
    var d = new Date();
    var m = d.getMonth();
    return m;
  },

  myAgeNow: function() {
    var y = this.yearNow();
    var m = this.monthNow();
    if (m < 12) {
      return (y - 1995) - 1;
    } else {
      return y - 1995;
    }
  },

  render: function() {
    this.placeholder.innerHTML = this.myAgeNow();
  }
};

myAge.init();
