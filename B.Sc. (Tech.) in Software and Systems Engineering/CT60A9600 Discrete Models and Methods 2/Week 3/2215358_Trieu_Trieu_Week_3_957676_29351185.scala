/*Exercise 3
Student name: Trieu Huynh Ba Nguyen
Student number: 000405980 */

object Exercise_3 extends App {

  // Task 1: Write a higher-order function called operateOnList that takes a list of integers and a function oddToEven (that convert odd integer to even) as an arguments, and applies the function to each element in the list, returning a new list of results with all even integers.
  def oddToEven(x: Int): Int = {
    if (x % 2 == 0) x
    else x + 1
  }

  def operateOnList(list: List[Int], f: Int => Int): List[Int] = {
    list.map(f)
  }

  val list = List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

  println("Task 1: " + operateOnList(list, oddToEven))

  // Task 2: Write a function called filterAndMap that takes a list of strings, a predicate function greaterLength (that filters the string which has length greater than 6), and a mapping function concat (that concatenates the length of string with the string i.e. “string6”) as arguments, and returns a new list of transformed elements that meet the given predicate.

  def greaterLength(x: String): Boolean = {
    if (x.length > 6) true
    else false
  }

  def concat(x: String): String = {
    x + x.length
  }

  def filterAndMap(
      list: List[String],
      f: String => Boolean,
      g: String => String
  ): List[String] = {
    list.filter(f).map(g)
  }

  val list2 = List(
    "LUT",
    "University",
    "Lahti",
    "Lappeenranta",
    "Finland",
    "Engineering",
    "Software",
    "Scala"
  )

  println("Task 2: " + filterAndMap(list2, greaterLength, concat))

  /* Create a higher-order polymorphic function listTransformation in Scala that works with any data type and any transformation function. It should takes in two arguments:
    - List (A list of values of any data type)
    - transformFunc (A function that transforms each element in the list into another element of the same or a different type)
  Example 1: a list of strings, a transformation function that transforms a string to string length
  Example 2: a list of integers, a transformation function that transforms an integer to its double value
  After implementing the function, you should test it with at least two different examples to demonstrate its versatility and flexibility.*/

  def listTransformation[A, B](
      list: List[A],
      transformFunc: A => B
  ): List[B] = {
    list.map(transformFunc)
  }

  val list3 = List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

  def double(x: Int): Int = {
    x * 2
  }

  def stringLength(x: String): Int = {
    x.length
  }

  println("Task 3: " + listTransformation(list3, double))
  println("Task 3: " + listTransformation(list2, stringLength))

  /* Create a program that demonstrates the use of currying and partially applied functions. I should have the following three components:
    - A curried function that takes in three arguments of type Int and returns their product.
    - A partially applied function that uses the curried function to multiply two numbers by a fixed constant.
    - A main function that demonstrates the use of the curried and partially applied functions with different arguments.
  After implementing the program, you should test it with at least three different examples */

  def curriedFunction(x: Int)(y: Int)(z: Int): Int = {
    x * y * z
  }

  val partiallyAppliedFunction = curriedFunction(5) _

  def main(x: Int, y: Int, z: Int): Unit = {
    println("Task 4: " + curriedFunction(x)(y)(z))
    println("Task 4: " + partiallyAppliedFunction(y)(z))
  }

  main(2, 3, 4)
  main(3, 4, 5)
  main(4, 5, 6)
}
