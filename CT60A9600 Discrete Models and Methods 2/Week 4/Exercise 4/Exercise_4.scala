package com.rockthejvm

object Exercise_4 extends App{

  ////////////////////////Sequence Behavior/////////////////////////
  val seq = Seq("a", "b", "c", "d", "e")
  val seq2 = Seq("a", "b", "c", "d", "e", "f")
  val seq3 = Seq("a", "b", "c", "d", "e", "e")
  //seq(n)
  println(seq(2)) // prints "c"
  //seq.length
  println(seq.length) // prints "5"
  //seq.lengthCompare(s2)
  println(seq.lengthCompare(seq2)) // prints -1 (-1 if <, +1 if >, 0 if ==)
  //seq.indexOf(x)
  println(seq3.indexOf("e")) //prints "4"
  //seq.lastIndexOf(x)
  println(seq3.lastIndexOf("e")) //prints "5"

  //........................continue practicing.........................

  //Task 0
  // 1. Create a list of integers nums containing the numbers 1 to 10.
  val nums = (1 to 10).toList

  // 2. Use the map method to create a new list squares that contains the squares of each number in nums.
  val squares = nums.map(n => n * n)

  // 3. Use the filter method to create a new list evenSquares that contains only the even squares from the squares list.
  val evenSquares = squares.filter(n => n % 2 == 0)

  // 4. Create a set evenSet that contains the even numbers from the nums list.
  val evenSet = nums.filter(n => n % 2 == 0).toSet

  // 5. Use the foldLeft method to calculate the sum of all the elements in the evenSet.
  val sum = evenSet.foldLeft(0)(_ + _)

  // 6. Create a map squaresMap that maps each number in nums to its square.
  val squaresMap = nums.map(n => n -> (n * n)).toMap

  // 7. Use the getOrElse method on the squaresMap to get the square of the number 11. If the number is not present in the map, return 0.
  val squareOf11 = squaresMap.getOrElse(11, 0)

  ///Task1
  def removeDuplicates(seq: Seq[String]): Seq[String] = {
    ???
  }

  ///Task2
  def findCommonElements[A](set1: Set[A], set2: Set[A]): Set[A] = {
    ???
  }

  ///Task3
  def removeKeys[K, V](map: Map[K, V], keys: List[K]): Map[K, V] = {
    ???
  }

  ///Task4
  //import scala.io.Source
  // 1 Read the input file into a string
  // 2 Split the input string into words
  // 3 Count the occurrence of each word using an immutable map
  // 4 Print the word count for each word
}
