/*Exercise 3
Student name: Trieu Huynh Ba Nguyen
Student number: 000405980 */

object Exercise_4 extends App {

  /* Task 0: Sequences, Sets & Maps built-in Functions Practice
 Create a list of integer nums containing the numbers 1 to 10.
 Use the map method to create a new list squares that contains the squares of each
number in nums.
 Use the filter method to create a new list evenSquares that contains only the even
squares from the squares list.
 Create a set evenSet that contains the even numbers from the nums list.
 Use the foldLeft method to calculate the sum of all the elements in the evenSet.
 Create a map squaresMap that maps each number in nums to its square.
 Use the getOrElse method on the squaresMap to get the square of the number 11. If
the number is not present in the map, return 0. */

  val nums = List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
  val squares = nums.map(x => x * x)
  val evenSquares = squares.filter(x => x % 2 == 0)
  val evenSet = nums.toSet.filter(x => x % 2 == 0)
  val sum = evenSet.foldLeft(0)((x, y) => x + y)
  val squaresMap = nums.map(x => (x, x * x)).toMap
  val squareOf11 = squaresMap.getOrElse(11, 0)

  println("Task 0: " + nums)
  println("Task 0: " + squares)
  println("Task 0: " + evenSquares)
  println("Task 0: " + evenSet)
  println("Task 0: " + sum)
  println("Task 0: " + squaresMap)
  println("Task 0: " + squareOf11)

  /* Task 1: Write a function removeDuplicatesthat removes duplicates from a sequence of strings.
This function should take a sequence of strings seq as input and uses the foldLeft method to
accumulate a new sequence newSeq that contains only the unique elements from the input
sequence. */

  def removeDuplicates(seq: Seq[String]): Seq[String] = {
    seq.foldLeft(Seq[String]())((newSeq, x) =>
      if (newSeq.contains(x)) newSeq else newSeq :+ x
    )
  }

  val seq = Seq("hello", "world", "hello", "scala", "world")
  println("Task 1: " + removeDuplicates(seq))

  /* Task 2: Write a function findCommonElements that finds the common elements in two
different sets. This function should takes two sets set1 and set2 of elements of type A as input
and returns a new set that contains the elements that are common to both input sets. */

  def findCommonElements[A](set1: Set[A], set2: Set[A]): Set[A] = {
    set1.foldLeft(Set[A]())((newSet, x) =>
      if (set2.contains(x)) newSet + x else newSet
    )
  }

  val set1 = Set(1, 2, 3, 4, 5)
  val set2 = Set(3, 4, 5, 6, 7)
  println("Task 2: " + findCommonElements(set1, set2))

  /* Task 3: Write a function removeKeys that removes elements from an immutable map. The
function should take a map and a list of keys to remove as input and return a new map that
does not contain the specified keys. */

  def removeKeys[K, V](map: Map[K, V], keys: List[K]): Map[K, V] = {
    keys.foldLeft(map)((newMap, x) => newMap - x)
  }

  val map = Map(1 -> "one", 2 -> "two", 3 -> "three", 4 -> "four")
  println("Task 3: " + removeKeys(map, List(1, 2, 3)))

  /* Task 4: Write a Scala program that reads a text file and counts the occurrence of each word in
the file. You should use an immutable map to store the word frequencies. */

  def countWords(fileName: String): Map[String, Int] = {
    val source = scala.io.Source.fromFile(fileName)
    val words = source.mkString.split("\\s+")
    source.close()
    words.foldLeft(Map[String, Int]())((map, x) =>
      if (map.contains(x)) map + (x -> (map(x) + 1)) else map + (x -> 1)
    )
  }
  // Print each word on its own line
  println("Task 4:")
  print(countWords("text.txt").mkString("\n"))
}
