function Beverage (name, temp) {
  this.name = name;
  this.temp = temp;
}

Beverage.prototype.drink = function() {
  console.log('I am drinking ' + this.name);
}

function Coffee (type) {
  Beverage.call(this, 'coffee', 'hot');
  this.type = type;
}

Coffee.prototype = Object.create(Beverage.prototype);
Coffee.prototype.sip = function() {
  console.log('Sipping');
}

var coffee = new Coffee('exXxpreso');
coffee.sip();
coffee.drink();