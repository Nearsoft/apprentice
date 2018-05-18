# The Ruby Programming Language

> Almost all content was taken from the book `Introduction to Programming with Ruby` by Launch School, be sure to check it out!

Ruby is a powerful, flexible programming language you can use in web/Internet development, to process text, to create games, and as part of the popular Ruby on Rails web framework.

Ruby is:

* **High-level:** meaning reading and writing Ruby is really easy—it looks a lot like regular English.

  Read the following code block in loud voice, what does it do?

  ```ruby

  5.times { print "Apprentice!" }

  exit unless "restaurant".include? "aura"

  ['toast', 'cheese', 'wine'].each { |food| print( food.capitalize ) }

  ```

* **Interpreted**: meaning you don't need a compiler to write and run Ruby.

* **Object-oriented:** meaning it allows users to manipulate data structures called objects in order to build and execute programs. All you need to know (for now) is that (almost) everything in Ruby is an object.

* **Easy to use:** Ruby was designed by Yukihiro Matsumoto (often just called "Matz") in 1995. Matz set out to design a language that emphasized human needs over those of the computer, which is why Ruby is so easy to pick up.

## Interactive Ruby
IRB, short for Interactive Ruby, is a quick way to explore the Ruby programming language and try out code without creating a file. `IRB` is a Read-Eval-Print Loop, or `REPL`, a tool offered by many modern programming languages. To use it, you launch the irb executable and type your Ruby code at the prompt. IRB evaluates the code you type and displays the results.

IRB gives you access to all of Ruby's built-in features, as well as any libraries or gems you've installed.

If you have Ruby installed, you'll have IRB. You can start it on any computer where Ruby is installed by executing the command irb from your command line interface:
```
$ irb
```

[![https://gyazo.com/b44351603a3ac910fdee9e19f14407e7](https://i.gyazo.com/b44351603a3ac910fdee9e19f14407e7.gif)](https://gyazo.com/b44351603a3ac910fdee9e19f14407e7)

## The Basics

In Ruby, you don't explicitly declare a data type before you assign a value; assigning the value determines the data type. Ruby uses `dynamic typing`, which means type checking is done at runtime rather than compile time, as in languages that use static typing. Ruby determines the data type from the data stored in the variable.

The variable `t` in the following example can be set to any data type available:

```ruby
t = 42        # t is an Integer
t = "Sammy"   # t is a String
t = :sammy    # t is a Symbol
t = true      # t is a boolean
t = nil       # t is nil
```
With dynamically-typed languages, you can reuse an existing variable to hold different data types.

### Strings
A string is a list of characters in a specific sequence. Strings are surrounded by either single quotes ('hello world') or double quotes ("hello world"). Both of these formats create a string, however, there are some subtle differences:

```ruby
# Example of string
string = 'This is a string'
```

Double quotes allow something called string interpolation:

```ruby
# Example of string concatenation
count = 10
string = "I have eaten #{count} apples."
```

String interpolation is a handy way to merge Ruby code with strings. The basic syntax is: #{ruby expression goes here}, and the returned expression will be concatenated with the surrounding string. String interpolation only works within double quotes.


### Symbols

Ruby symbols are created by placing a colon `:` before a word.

```ruby
# Example of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"
```

Basically, a symbol is used when you want to reference something like a string but don't ever intend to print it to the screen or change it.


### Numbers
Numbers are represented many ways in Ruby. The most basic form of a number is called an integer. It is represented by the whole number only, with no decimal point. A more complex form of a number is called a float. A float is a number that contains a decimal.

```ruby
# Example of integers
1, 2, 3, 50, 10, 4345098098

# Example of floats
1.2345, 2345.4267, 98.2234
```

### Booleans
Booleans are used to represent the truth values that are associated with the logic branch of mathematics, which informs algorithms in computer science. In Ruby, we represent this data type with one of two values, either `true` or `false`.

```ruby
# Example of boolean
t = true
f = false
```


### nil
In programming, we need a way to express "nothing", and in Ruby, we do this through something called nil. A variable with a value of nil could be described as having 'nothing' or being 'completely empty', or even just simply 'not any specific type'.

```ruby
# Example of nil
n = nil
```

### Arrays

An array is used to organize information into an ordered list. The list can be made up of strings, integers, floats, booleans, or any other data type. In Ruby, an array is denoted by square brackets `[ ]. `Inside the brackets you can create a list of elements separated by commas.

```ruby
# Example of Array
[1, 2, 3, 4, 5]
```
## Hashes
A hash, sometimes referred to as a dictionary, is a set of key-value pairs. It is represented with curly braces `{ }`. A key-value pair is an association where a key is assigned a specific value. A hash consists of a key that points to a value of any type of data.

```ruby
hash = { dog: 'barks' }
```
The above is a hash with one key-value pair. Like arrays, we can have multiple items in a hash if we separate them with commas, but they will not necessarily be in any specific order. Let's add some more items to our hash.

```ruby
hash = { dog: 'barks', cat: 'meows', pig: 'oinks' }
```
What if we wanted to find out what noise a cat makes? We can retrieve a value by its key, notice how the symbol `:cat` is used:

```ruby
hash[:cat]
```
## Variables
Variables are used to store information to be referenced and manipulated in a computer program. They also provide a way of labeling data with a descriptive name, so our programs can be understood more clearly by the reader and ourselves. It is helpful to think of variables as containers that hold information. Their sole purpose is to label and store data in memory. This data can then be used throughout your program.

### Types of Variables
Before we move on, you should be aware that there are five types of variables. Constants, global variables, class variables, instance variables, and local variables. While you should not worry too much about these topics in depth yet, here is a brief description of each.

Constants are declared by capitalizing every letter in the variable's name. They are used for storing data that never needs to change. While most programming languages do not allow you to change the value assigned to a constant, Ruby does. It will however throw a warning letting you know that there was a previous definition for that variable. Just because you can, doesn't mean you should change the value. In fact, you should not. Constants cannot be declared in method definitions, and are available throughout your application's scopes.

```ruby
# Example of a constant declaration
MY_CONSTANT = 'I am available throughout your app.'
```
Global variables are declared by starting the variable name with the dollar sign `$`. These variables are available throughout your entire app, overriding all scope boundaries.

```ruby
# Example of a global variable declaration
$var = 'I am also available throughout your app.'
```


> ⚠️ Rubyists tend to stay away from global variables as there can be unexpected complications when using them.


Class variables are declared by starting the variable name with two `@` signs. These variables are accessible by instances of your class, as well as the class itself. When you need to declare a variable that is related to a class, but each instance of that class does not need its own value for this variable, you use a class variable. Class variables must be initialized at the class level, outside of any method definitions. They can then be altered using class or instance method definitions.

```ruby
#Example of a class variable declaration
@@instances = 0
```

Instance variables are declared by starting the variable name with one @ sign. These variables are available throughout the current instance of the parent class. Instance variables can cross some scope boundaries, but not all of them.

```ruby
#Example of an instance variable declaration
@var = 'I am available throughout the current instance of this class.'
```

Local variables are the most common variables you will come across and obey all scope boundaries. These variables are declared by starting the variable name with neither $ nor @, as well as not capitalizing the entire variable name.

```ruby
#Example of a local variable declaration
var = 'I must be passed around to cross scope boundaries'
```

## Methods

You'll often have a piece of code that needs to be executed many times in a program. Instead of writing that piece of code over and over, there's a feature in most programming languages called a procedure, which allows you to extract the common code to one place. In Ruby, we call it a method. Before we can use a method, we must first define it with the reserved word `def`. After the def we give our method a name. At the end of our method definition, we use the reserved word `end` to denote its completion. This is an example of a method definition named say:

```ruby
def say_hi(name)
  "Hello #{name}!"
end
```
 > ⚠️ In Ruby, every method returns the evaluated result of the last line that is executed.

We call (or invoke) the method by typing its name and passing in arguments. You'll notice that there's a `(name)` after `say_hi` in the method definition. This is what's called a parameter. Parameters are used when you have data outside of a method definition's scope, but you need access to it within the method definition.

If the method definition does not need access to any outside data, you do not need to define any parameters.

```ruby
 def always_return_zero
  0
 end
```
You can name parameters whatever you'd like, but like we said earlier, it is always the goal of a good programmer to give things meaningful and explicit names.

When we call `say_hi('Carlos')`, we pass in the string "Carlos" as the argument in place for the name parameter. Then the code within the method definition is executed with the name local variable evaluated to "Carlos".

```ruby
def say_hi(name)
  "Hello #{name}!"
end

say_hi('Carlos')

=> "Hello! Carlos"
```

## Flow Control
In many ways, a computer program is like a journey for your data. Along this journey, data encounters many things that have an impact on it and it is forever changed. Like any journey, one must travel a given path. On that path, there are many roads. Some roads are chosen and others not. Which roads are chosen depends on the end goal.

When you are writing programs, you want your data to make the right decisions. You want your data to do the right thing when it's supposed to. In computer programming, this is called conditional flow.

How do we make data do the right thing? We use conditionals.

### Conditionals

A conditional is a fork (or many forks) in the road. Your data approaches a conditional and the conditional then tells the data where to go based on some defined parameters. Conditionals are formed using a combination of if statements and comparison operators `(<, >, <=, >=, ==, !=, &&, ||)`. They are basic logical structures that are defined with the reserved words `if`, `else`, `elsif`, and `end`.

> ⚠️ Note that elsif is missing an "e".

```ruby
# Example of conditionals
num = Random.new.rand(1..5)

if num == 3
  puts "a is 3"
elsif num == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end
```

Ruby is such an expressive language, it also allows you to append the if condition at the very end. Example 1 from above could be rewritten like this:

```ruby
puts "x is 3" if x == 3
```

Ruby also has a reserved word, `unless`. It acts as the opposite of if, so you can use it like this:

```ruby
puts "x is NOT 3" unless x == 3
```

Ruby has a nice option for short and concise conditional if statements. The `ternary operator` is a common Ruby idiom that makes a quick if/else statement easy and keeps it all on one line.

The ternary operator uses a combination of the `?` and `:`.

```ruby
# Ternary operator example

irb :001 > true ? "this is true" : "this is not true"
 => "this is true"

irb :001 > false ? "this is true" : "this is not true"
 => "this is not true"
 ```

Ternary operators definitely come in handy as you start to get more familiar with if statements.

> ⚠️ In Ruby only false and nil are falsey. Everything else is truthy (yes, even 0 is truthy).



### Case Statement
Whenever you need to use some if / elsif statements you could consider using a Ruby case statement instead.

> ⚠️ In other programming languages this is known as a switch statement.

A case statement has similar functionality to an if statement but with a slightly different interface.

```ruby
num = Random.new.rand(1..5)

case num
when 3
  puts "num is 3"
when 4
  puts "num is 4"
else
  puts "num is neither 5, nor 6"
end
```

Case statements use the reserved words `case`, `when`, `else`, and `end`. You create one by first defining a case and then evaluating the value of the case and what operation to complete if that case is true

The example above is sort of a modified version of the if/elsif/else statement that we created earlier. So you can see how these two are similar.

## Loops
A loop is the repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met. We will cover `while loops`, `do/while loops`, and `for loops`.

### While
while loop is given a parameter that evaluates to a boolean. Once that boolean expression becomes false, the while loop is not executed again, and the program continues after the while loop. Code within the while loop can contain any kind of logic that you would like to perform.


```ruby
# While loop example
x = 10

while x >= 0
  puts x
  x -= 1
end

puts "Done!"
```

There also exist an opposite of while, the `until` loop. You can substitute it in order to phrase the problem in a different way. Let's look briefly at how it works.

```ruby
# Until loop example
x = 10

until x < 0
  puts x
  x -= 1
end

puts "Done!"
```

## For
In Ruby, for loops are used to loop over a collection of elements. Unlike a while loop where if we're not careful we can cause an infinite loop, for loops have a definite end since it's looping over a finite number of elements. It begins with the `for` reserved word, followed by a variable, then the `in` reserved word, and then a collection of elements. We'll show this using an array and a range. A range is a special type in Ruby that captures a range of elements. For example `1..3` is a range that captures the integers 1, 2, and 3.

```ruby
x = 10

for i in 1..x do
  puts i
end

puts "Done!"
```

## Getting dirty!
Let's put on practice what you've learned to far, complete the following exercises:

1. Make a simple function called greet that returns the most-famous "hello world!".

2. Finish the solution so that it reverses the string value passed into it.

  ```ruby
  solution('world')
  => 'dlrow'
  ```

3. Finish the solution so that it sorts the passed in array of numbers. If the function passes in an empty array or null/nil value then it should return an empty array.
  ```
  # for example:
  solution([1, 2, 10, 50, 5])
  => [1,2,5,10,50]

  solution(nil)
  => []
  ```

4. Find the lowest and the highest number in an array:
  ```ruby
  highest_and_lowest([1, 6, 25, 3])
  => "Highest is #{25} and lowest is #{1}"
  ```

4. Write a function that flattens an Array of Array objects into a flat Array. Your function must only do one level of flattening.

  ```ruby
  flatten([1,2,3])
  => [1,2,3]
  flatten([[1,2,3],["a","b","c"],[1,2,3]])
  => [1,2,3,"a","b","c",1,2,3]
  flatten([[[1,2,3]]])
  => [[1,2,3]]
  ```


## Classes and Object

Ruby is a pure object-oriented language and everything appears to Ruby as an object. Every value in Ruby is an object, even the most primitive things: strings, numbers and even true and false. Even a class itself is an object that is an instance of the Class class.

### Ruby Class Definition
When you define a class, you define a blueprint for a data type. This doesn't actually define any data, but it does define what the class name means, that is, what an object of the class will consist of and what operations can be performed on such an object.

A class definition starts with the keyword `class` followed by the `class name` and is delimited with an `end`. For example, we defined the Box class using the keyword class as follows:

```ruby
class Box
   #code
end
```
The name must begin with a capital letter and by convention names that contain more than one word are run together with each word capitalized and no separating characters (CamelCase).

### Define Ruby Objects
A class provides the blueprints for objects, so basically an object is created from a class. We declare objects of a class using new keyword. Following statements declare two objects of class Box:

```ruby
box1 = Box.new
box2 = Box.new
```

### The initialize Method
The initialize method is a standard Ruby class method and works almost same way as `constructor` works in other object oriented programming languages. The initialize method is useful when you want to initialize some class variables at the time of object creation. This method may take a list of parameters and like any other ruby method it would be preceded by `def` keyword as shown below:

```ruby
class Box
   def initialize(width, height)
      @width = width
      @height = height
   end
end
```

### The accessor & setter Methods
To make the variables available from outside the class, they must be defined within accessor methods, these accessor methods are also known as a getter methods. Following example shows the usage of accessor methods:


```ruby
# define a class
class Box
   # constructor method
   def initialize(width, height)
      @width = width
      @height = height
   end

   # accessor methods
   def get_width
      @width
   end

   def get_height
      @height
   end
end

# create an object
box = Box.new(10, 20)

# use accessor methods
x = box.get_width
y = box.get_height

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
```

Similar to accessor methods, which are used to access the value of the variables, Ruby provides a way to set the values of those variables from outside of the class using setter methods, which are defined as below

```ruby
# define a class
class Box
   # constructor method
   def initialize(width, height)
      @width = width
      @height = height
   end

   # accessor methods
   def get_width
      @width
   end

   def get_height
      @height
   end

   # setter methods
   def set_width=(value)
      @width = value
   end

   def set_height=(value)
      @height = value
   end
end

# create an object
box = Box.new(10, 20)

# use setter methods
box.set_width = 30
box.set_height = 50

# use accessor methods
x = box.get_width
y = box.get_height

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
```


Ruby provides a convenient shortcut for adding getters and setters:

* **attr_reader:** Creates instance variables and corresponding methods that return the value of each instance variable.
* **attr_writer:** Creates an accessor method to allow assignment to the attribute
* **attr_accessor:** automatically sets up getters and setters for those instance variables.

So the above code could be refactored in a more ruby-esque way like this:

```ruby
# define a class
class Box
  attr_accessor :width, :height
   # constructor method
   def initialize(width, height)
      @width = width
      @height = height
   end
end

# create an object
box = Box.new(10, 20)

# use setter methods
box.width = 30
box.height = 50

# use accessor methods
x = box.width
y = box.height

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
```

### The instance Methods
The instance methods are also defined in the same way as we define any other method using def keyword and they can be used using a class instance only as shown below. Their functionality is not limited to access the instance variables, but also they can do a lot more as per your requirement.

```ruby
class Box
   # constructor method
   def initialize(width, height)
      @width = width
      @height = height
   end
   # instance method
   def getArea
      @width * @height
   end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea
puts "Area of the box is : #{a}"
```

## Access Control
Ruby gives you three levels of protection at instance methods level, which may be public, private, or protected. Ruby does not apply any access control over instance and class variables.

* **Public Methods:** Public methods can be called by anyone. Methods are public by default except for initialize, which is always private.

* **Private Methods:** Private methods cannot be accessed, or even viewed from outside the class. Only the class methods can access private members.

* **Protected Methods:** A protected method can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.


## Try it yourself!

Look at the following code, can you tell what it does without running it?

> ⚠️ The following example contains an internet reference from the early 2010's. If you don't understand the reference please visit [this link](https://www.youtube.com/watch?v=EIyixC9NsLI)

```ruby
class Badgers
  attr_accessor :count

  def initialize
    @count = 1
  end

  def count_badgers
    puts 'Counting badgers...'
    (1..@count).each do |n|
      if n % 5 == 0
        puts "Mushroom mushroom!"
      else
        puts "#{n} Badger"
      end
    end
  end
end

b = Badgers.new

puts "Current number of badgers: #{b.count}"
b.count_badgers
puts

b.count = 10
puts "Current number of badgers: #{b.count}"
b.count_badgers
```

## Here's Fun™ Part

### Blocks and Iterators
A block is basically just code that you put inside do and end. That’s it.

You can write the block in two ways:

1. Multi-line, between `do` and `end`,
2. Inline, between `{` and `}`

Both versions will do the exact same thing so it’s up to you which one you choose. As a general style-guide, it’s better to use the multi-line version if your code has more than one line, just to make it easier to read.

```ruby
[1, 2, 3].each do |n|
  puts "Number #{n}"
end

```
### How yield works
Here’s the bad wolf. This guy is responsible for all the confusion and magic around ruby blocks. I think most of the confusion comes from the way it calls the block and how it’s passing parameters to it. We’ll be looking at both scenarios in this section.

```ruby
def my_method
  puts "reached the top"
  yield
  puts "reached the bottom"
end

my_method do
  puts "reached yield"
end

=> reached the top
=> reached yield
=> reached the bottom
=> nil
 ```

So basically when the execution of `my_method` reaches the line with the call to yield, the code inside the block gets executed. Then, when the code inside the block finishes, the execution of my_method continues.

 ![ruby_block_flow-3fbb7a8ec5402bbc7930b1a3dcaa47a913ecc98be39ced10381b1624e9c0ae1b](https://user-images.githubusercontent.com/7410981/40262156-29de23a8-5aba-11e8-8672-e151e80e53ce.png)

### Passing blocks to methods
A method doesn’t need to specify the block in it’s signature in order to receive a block parameter. You can just pass a block to any function but unless that function calls yield, the block won’t get executed.

On the other hand, if you do call yield in your method, then the block parameter becomes mandatory and the method will raise an exception if it doesn’t receive a block.

If you want to make the block an optional parameter, you can use the `block_given?` method which will return either true or false depending on if a block was passed in to the method or not.

## Iterators
Iterators are methods tied to a block(created using do and end) which executes statements multiple times, just like a loop. In Ruby iterators are frequently used instead of while and for loops.

Syntax:
```ruby
object.iterator do | variable |
  # block tied to iterator
  statements
end
```

One of the 3 most used iterators in ruby are:
* **Each**

  Each iterator is the most commonly used iterator to iterate through the elements of an array, range and hashes.

  ```ruby
  arr = [11,44,66,99]
  puts "Iterating through array"
  arr.each { |i| puts i }
  11
  44
  66
  99
  => [11, 44, 66, 99]
  ```

> ⚠️  Array#each returns the [array] object it was invoked upon: the result of the block is discarded.

*  **Map**

  Map iterator steps through elements of an array, range or hash and in the process creates a new array based on the values returned by the block.

  ```ruby
  arr = [65,89,21,98]

  new_arr = arr.map { |i| i * 2 }
  => [130, 178, 42, 196]
  ```

* **Select**

  Select iterator returns an array of values for which code block returns true. It can be used with array, range and hash

  ```ruby
  arr = [34, 98, 56, 100, 89, 37, 11, 52]

  arr.select { |i| i % 2 == 0 }
  => [34, 98, 56, 100, 52]
  ```
