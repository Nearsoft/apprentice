class Animal {
  constructor(){
    this.name = name;
  }
  speak(){
    console.log(this.name + ' makes a noise.');
  }
}

class Dog extends Animal {
  constructor(name, sound = 'noise') {
    super(name);
    this.sound = sound;
  }

  speak() {
      console.log(this.name + this.sound);
  }
}
  let doge = new Dog('Barnacles');
  doge.speak(); // Barnacles barks
