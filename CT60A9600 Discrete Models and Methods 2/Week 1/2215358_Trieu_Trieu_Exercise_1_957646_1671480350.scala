/*Exercise 1
Student name: Trieu Huynh Ba Nguyen
Student number: 000405980 */

// Task 1: Provide two variables/values showing difference between immutable and mutable types
def Task1() = {
  // An immutable variable is a variable whose value cannot be changed once it is assigned.
  val immutable = "immutable"
  println("Immutable: " + immutable)

  // A mutable variable is a variable whose value can be changed once it is assigned.
  var mutable = "mutable"
  println("Mutable: " + mutable)

  mutable = "changed"
  println("Changed mutable: " + mutable)

  // immutable = "changed" // Error: This will not compile
  // println("Changed immutable: " + immutable)
}

// Task 2: Provide an example where Scala automatically infers the Data Types of a Boolean, Double, Int and String variables
def Task2() = {
  // getClass() is a method that returns the class of the object

  var boolean = true
  var double = 1.2345
  var int = 12345
  var string = "scala"

  println(boolean.getClass())
  println(double.getClass())
  println(int.getClass())
  println(string.getClass())
}

// Task 3: Create an immutable variable of type String holding your “Last Name” with the help of multiple immutable variables of type Char
def Task3() = {
  val s = 's'
  val c = 'c'
  val a = 'a'
  val l = 'l'

  val name = s"$s$c$a$l$a"
  println(name)
}

// Task 4: Create a value of type Int holding your age and place it inside the String “I am learning scala at the age of __years”
def Task4() = {
  // String interpolation can be used to embed expressions, variables, and method calls in strings.
  val age = 20
  println(s"I am learning scala at the age of $age years")
}

// Task 5: What is a definition of Expression in Scala? Write your answer in the comment supported with example
def Task5() = {
  // An expression is a code cluster of variables, values, operators, and method calls that computes and returns a value.
  // Example:
  val x = println("This is an expression")
  x
}

// Task 6: Write any example showing Chained IF expression resulting to a single value of Int Type
def Task6() = {
  val x = 5
  val y = 10
  val z = 15

  val result = if (x > y) {
    if (x > z) {
      x
    } else {
      z
    }
  } else {
    if (y > z) {
      y
    } else {
      z
    }
  }

  result
}

// Task 7: Write a Code Block returning a value of type string by concatenating your “First Name”and “Last Name”
def Task7 = {
  val firstName = "Andrew"
  val lastName = "Trieu"

  val fullName = {
    s"$firstName $lastName"
  }

  fullName
}

// Task 8: Define a function that takes 2 values of type Int and returns a single value of type String after summation. E.g. the return String should be “The sum of 1 and 2 is: 3”
def Task8() = {
  def sum(a: Int, b: Int): String = {
    s"The sum of $a and $b is: ${a + b}"
  }

  sum(123, 456)
}

// Main function
def main(args: Array[String]): Unit = {
  println("Task 1:")
  Task1()
  println("\nTask 2:")
  Task2()
  println("\nTask 3:")
  Task3()
  println("\nTask 4:")
  Task4()
  println("\nTask 5:")
  Task5()
  println("\nTask 6:")
  println(Task6())
  println("\nTask 7:")
  println(Task7)
  println("\nTask 8:")
  println(Task8())
}
