/*Exercise 1
Student name: Trieu Huynh Ba Nguyen
Student number: 000405980 */

// Task 1: Write a Scala program that defines a function called addition which takes two integer arguments and returns their sum using recursion.
def addition(x: Int, y: Int): Int = {
  if (y == 0) x
  else addition(x + 1, y - 1)
}

// Task2: Write a Scala program that defines a function called subtraction which takes two integer arguments and returns their difference by using the addition function defined above.
def subtraction(x: Int, y: Int): Int = {
  addition(x, -y)
}

// Task 3: Write a Scala program that defines a function called multiplication which takes two integer arguments and returns their product by using the addition function defined above.
def multiplication(x: Int, y: Int): Int = {
  if (y == 0 || x == 0) 0
  else addition(x, multiplication(x, y - 1))
}

// Task 4:Write a Scala program that defines a function called division which takes two integer arguments and returns their quotient by using the subtraction functions defined above. If the second argument is zero, return an error message.
def division(x: Int, y: Int): Int = {
  if (y == 0) {
    print("Error: Division by zero - ")
    0
  } else if (x == 0) 0
  else if (x < y) 0
  else addition(1, division(subtraction(x, y), y))
}

// Task 5: Write a Scala program that defines a function called factorial which takes a non-negative integer as its argument and returns its factorial. Use recursion to implement the function.
def factorial(x: Int): Int = {
  if (x < 0) {
    print("Error: Negative number - ")
    0
  } else if (x == 0) 1
  else multiplication(x, factorial(x - 1))
}

// Task 6: Write a Scala program that defines a function called isPrime which takes a non-negative integer as its argument and returns true if the number is prime, and false otherwise.
def isPrime(x: Int): Boolean = {
  if (x < 0) {
    print("Error: Negative number - ")
    false
  } else if (x == 0 || x == 1) false
  else {
    var i = 2
    while (i < x) {
      if (x % i == 0) return false
      i += 1
    }
    true
  }
}

// Task 7: How the memory is impacted by loops and recursions? Explain your answer with supportive examples.
def memoryImpact(): Unit = {
  println(
    "Memory impact by loops and recursions are different. Recursion uses a function call stack to store the set of new local variables and parameters on each function call. On the other hand, we have looping that doesn't use any stack. Hence, recursion incurs more memory cost since they add the overhead of stacking/unstacking operation. For larger inputs, recursion might lead to stack overflow."
  )
  // Example 1: Loop
  def loop(x: Int): Int = {
    var counter = 0
    for (i <- 1 to x) {
      counter += i
    }
    counter
  }
  loop(100)
  // Example 2: Recursion
  def recursion(x: Int): Int = {
    if (x == 0) 0
    else x + recursion(x - 1)
  }
  recursion(100)
}

// Task 8: What is a difference between local scope and global scope of variables (i.e. var/val)? Support your arguments with examples. [Hint: “Closure” concept in Class Lectures]
def scope(): Unit = {
  println(
    "Local scope is the scope of a variable that is defined inside a function. Global scope is the scope of a variable that is defined outside a function. Local scope is only accessible inside the function that it is defined in. Global scope is accessible in all functions. For example, if we define a variable x inside a function, we can only access it inside that function. If we define a variable x outside a function, we can access it in all functions."
  )
  val x = 10
  // Example 1: Local scope
  def localScope(): Unit = {
    val y = 5
    println(x)
    println(y)
  }
  localScope()
  // Example 2: Global scope
  def globalScope(): Unit = {
    println(x)
    // println(y) // Error: x is not defined
  }
  globalScope()
}

def main(args: Array[String]): Unit = {
  println("Task 1:")
  println(addition(5, 3))
  println(addition(5, 0))
  println(addition(0, 3))
  println("\nTask 2:")
  println(subtraction(5, 3))
  println(subtraction(3, 5))
  println("\nTask 3:")
  println(multiplication(5, 3))
  println(multiplication(5, 0))
  println(multiplication(0, 3))
  println("\nTask 4:")
  println(division(40, 18))
  println(division(5, 3))
  println(division(5, 0))
  println(division(0, 3))
  println(division(3, 5))
  println("\nTask 5:")
  println(factorial(5))
  println(factorial(3))
  println(factorial(0))
  println(factorial(-5))
  println("\nTask 6:")
  println(isPrime(2))
  println(isPrime(8))
  println(isPrime(11))
  println(isPrime(17))
  println(isPrime(20))
  println(isPrime(0))
  println(isPrime(-5))
  println("\nTask 7:")
  memoryImpact()
  println("\nTask 8:")
  scope()
}
