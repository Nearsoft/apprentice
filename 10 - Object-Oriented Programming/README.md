# Object-Oriented Programming

In the ancient times (not really, still valid), a program was viewed as a logical
procedure that takes an input, process data, and produces output data.

This approach, despite being correct, is not the most useful when trying to give
that data a meaning, making our code maintainable, simpler to developer and easier
to understand later on by ourselves or any other developer on our team.

With object-oriented programming(OOP) what we really care about are the
objects we want to manipulate rather than the logic required to manipulate them.

The first step in OOP is to identify all the objects we want to manipulate and how
they relate to each other. We use abstraction to create models based on the real world.

## Objects

An object has state and behavior.
Can you think of an example? Just look around.

e.g.
Dogs have state (name, color, breed) and behavior (barking, fetching, wagging tail,
chase cat).
An object stores its state in fields and exposes its behavior through methods.

Once an object has been identified, it is generalized as a class, which defines the
kind of data it contains(state) and any logic sequences that can manipulate it
(behavior), known as methods.

An object is known as an instance of the class.

An instance is a concrete occurrence of any object, existing usually during the
runtime of a computer program.

## OOP Pillars

There are four main basic concepts we need to know before using OOP.
They're called Object-oriented programming pillars.
With these, we can manage a large amount of classes effectively and reduce our
program complexity.

* Encapsulation
* Abstraction
* Inheritance
* Polymorphism

## Encapsulation
Encapsulation is a concept that binds together the data and functions that
manipulate the data, and that keeps both safe from outside interference and misuse.

A real life example of encapsulation will be, well, a capsule. A capsule binds 
all chemical contents required for curing a specific disease together.
They're useless separately, and any doctor would recommend us NOT to mess with
any of them.

Let's look at another example using Java:

```java
public class Account {

private double balance;

public Account(double balance) {
    this.balance = balance;
}

public double getBalance() {
    return balance;
}
}

public static void main() {
    Account account = new Account(1000.0);
    double currentBalance=obj.getBalance();
    
    obj.balance=99999999999999.0;
}
```

What would happen if we try to change the balance? Can I be the richest person 
in the world?

Abstraction
Abstraction is the principle of generalization. This requires that we move from
a specific instance to a more generalized concept by thinking about the most
basic information and function of an object.

It works by establishing a level of complexity on which a person interacts with
the system, suppressing the more complex details below the current level.

A real world example would be a car. We know that a car has a an engine, has brakes
and many other subsystems that together help the car drive us everywhere.

However, we don't need to know how an engine works in order to drive a car. We
just need basic information, like what pedal to use to accelerate, how to turn,
how to brake.

Let's look an example using Java again:

```java
public interface Car {

    public void brake();

}

public class Sedan implements Car {
    @Override
    public void brake(){
        System.out.println("Braking as a Sedan")
    }
}

public static void main() {
    Sedan sedan = new Sedan();
    sedan.brake();
}
```

## Inheritance
It is a mechanism for code reuse and to allow independent extensions of the
original software via public classes and interfaces.

Real world example: We inherit some of our features (may be body color, nose 
shape, height of body etc) from our parents.

```java
public class Shape {

    private int width;
    private int height;

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }
}

class Rectangle extends Shape {

    public int calculateArea() {
        return getWidth() * getHeight();
    }
}
```
```java
Rectangle rectangle = new Rectangle();
rectangle.setHeight(10);
rectangle.setWidth(5);
rectangle.calculateArea();
```
As you see, the rectangle inherits state and behavior from its parent. But has 
its own methods.

## Polymorphism
Polymorphism is the ability of an object to take on many forms. The most common
use of polymorphism in OOP occurs when a parent class reference is used to refer
to a child class object.

Code example:

```java
abstract class Animal {
    abstract String talk();
}

class Cat extends Animal {
    String talk() {
        return "Meow!";
    }
}

class Dog extends Animal {
    String talk() {
        return "Woof!";
    }
}

static void letsHear(final Animal a) {
    println(a.talk());
}

static void main(String[] args) {
    letsHear(new Cat());
    letsHear(new Dog());
}
```

* Exercise:
```
Write a program to calculate the area and perimeter of some shapes
Remember to use OOP
Implement square, triangle and circle
```
