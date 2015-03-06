function Person (name) {
  this.name = name;
}

function Dog (name) {
  this.name = name;
}

//Walk, run, speak(or bark)
var speaker = {
  speak: function() {
    return this.name + " is speaking";
  }
}

var mover = {
  walk: function() {
    return this.name + " is walking";
  },
  run: function() {
    return this.name + " is running";
  }
}

//take an obj and mixin the functionallity of other object.
//We can take Dog and mixin it.
//Libraries already have extend function, we're going to
//implement it.
//NodeJs:
var node_extend = require('util')._extend;
node_extend(Person.prototype, speaker);
var hector = new Person('Hector');
console.log(hector.speak());

function extend(target) {
  //using arguments to retrieve obj to extends.
  if(!arguments[1]) {
    return; //extend(hector);
  }
  for(var ii = 1, ll = arguments.length; ii < ll; ii += 1) {
    var source = arguments[ii];

    for(var prop in source) {
      //Don't want to copy what's already in there
      //Only copy what directly on source object, dont
      //want to copy that are on the prototype.
      if(!target[prop] && source.hasOwnProperty(prop)) {
        target[prop] = source[prop];
      }
    }
  }
}

extend(Person.prototype, mover);
console.log(hector.run());
