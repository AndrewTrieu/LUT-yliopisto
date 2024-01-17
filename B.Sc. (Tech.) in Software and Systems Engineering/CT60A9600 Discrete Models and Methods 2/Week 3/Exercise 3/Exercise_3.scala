package com.rockthejvm

object Exercise_3 extends App{

  //Lists

  // List of Strings
  val fruits: List[String] = List("apples", "oranges", "pears")

  // List of Integers
  val nums: List[Int] = List(1, 2, 3, 4)

  // Empty List.
  val empty: List[Nothing] = List()

  // Two dimensional list
  val dim: List[List[Int]] =
    List(
      List(1, 0, 0),
      List(0, 1, 0),
      List(0, 0, 1)
    )


  // A regular function that takes two integers and returns their sum
  def add(a: Int, b: Int): Int = {
    a + b
  }

  // A higher-order function that takes a function and two integers as arguments, applies the function to the integers, and returns the result
  def apply(f: (Int, Int) => Int, a: Int, b: Int): Int = {
    f(a, b)
  }

  // A function that takes two integers and returns their product
  def multiply(a: Int, b: Int): Int = {
    a * b
  }

  // Call the regular add function with two arguments
  val sum = add(2, 3)
  println(sum) // Output: 5

  // Call the higher-order apply function with the add function and two arguments
  val result1 = apply(add, 2, 3)
  println(result1) // Output: 5

  // Call the higher-order apply function with the multiply function and two arguments
  val result2 = apply(multiply, 2, 3)
  println(result2) // Output: 6

   //----------------------------------------------------------------

  //Task 1
  def operateOnList(list: List[Int], f: Int => Int): List[Int] = ???

  //Task 2
  def filterAndMap(list: List[String], predicate: String => Boolean, mapping: String => String): List[String] = ???

  //Task 3
  def listTransformation[A, B](list: List[A], transformFunc: A => B): List[B] = ???

  //Inputs & Expected Outputs for Task 3
  //Example 1
  val stringList = List("apple", "banana", "orange")
  // Output: List(5, 6, 6)

  //Example 2
  val numberList  = List(1, 2, 3, 4, 5)
  // Output: List(1, 4, 9, 16, 25)

  //Task 4
  //[HINT: Lecture Slides 14-18]
  //----------------------------------------------------------------
}
