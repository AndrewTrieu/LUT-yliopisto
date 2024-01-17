object Exercise_5 extends App {
  /*
  Task 1: Type Parameterization
  Implement a generic function that can compute the average of a list of values of any numeric
  type in a recursive manner. The function should take a list of type A and return a value of type
  A, where A is any numeric type such as int, float, or double. The function should be tested
  with different input lists and the output should be verified to ensure that the average is
  computed correctly for each list
   */

  def average[A](list: List[A])(implicit num: Numeric[A]): Double = {
    // Recursive function to compute the sum of a list of values of type A
    def sum(list: List[A]): A = list match {
      case Nil          => num.zero
      case head :: tail => num.plus(head, sum(tail))
    }
    num.toDouble(sum(list)) / list.length
  }

  println(average(List(1, 2, 3, 4, 5, 6))) // 3.5
  println(average(List(4.5, 5.6, 6.7, 7.8, 8.9, 9.1))) // 7.1
  println(average(List(1.1f, 2.2f, 3.3f, 4.4f, 5.5f, 6.6f))) // 3.85

  /*
  Task 2: Variance
  Define a class hierarchy of animals, with a base class Animal and two derived classes Bird and
  Mammal. Add a method makeSound to each class that returns a string representing the sound
  the animal makes. Implement a function makeAllSounds that takes a list of animals and
  returns a list of strings representing the sounds each animal makes. Use covariance to ensure
  that the return type of the makeAllSounds function is a list of strings, even though the input
  list may contain objects of different classes. Test the function with a list of birds and a list of
  mammals to ensure that the sounds are correctly returned for each animal
   */

  abstract class Animal {
    def makeSound(): String
  }

  class Bird extends Animal {
    override def makeSound(): String = "Chirp!"
  }

  class Mammal extends Animal {
    override def makeSound(): String = "Moo!"
  }

  def makeAllSounds(animals: List[Animal]): List[String] = {
    animals.map(animal => animal.makeSound())
  }

  val birds = List(new Bird, new Bird, new Bird)
  val mammals = List(new Mammal, new Mammal, new Mammal)

  println(makeAllSounds(birds)) // List(Chirp!, Chirp!, Chirp!)
  println(makeAllSounds(mammals)) // List(Moo!, Moo!, Moo!)

  /*
  Task 3: Type Constraints
  Create a typeclass that represents a collection of objects that can be sorted. The typeclass
  should have a single recursive function sort that takes a list of objects and returns a sorted list.
  Implement instances of the typeclass for several types, including integers, floating-point
  numbers, and strings. Use type constraints to ensure that the objects in the list have a total
  ordering, which is necessary for sorting. Test the sort function with input lists of different types
  and sizes to ensure that it correctly sorts the lists according to the total ordering defined for
  each type.
   */

  trait Sortable[T] {
    def sort(list: List[T]): List[T]
  }

  object Sortable {
    def apply[T](implicit sortable: Sortable[T]): Sortable[T] = sortable

    implicit val intSortable: Sortable[Int] = new Sortable[Int] {
      def sort(list: List[Int]): List[Int] = list.sorted
    }

    implicit val doubleSortable: Sortable[Double] = new Sortable[Double] {
      def sort(list: List[Double]): List[Double] = list.sorted
    }

    implicit val stringSortable: Sortable[String] = new Sortable[String] {
      def sort(list: List[String]): List[String] = list.sorted
    }
  }

  println(
    Sortable[Int].sort(List(8, 9, 4, 3, 6, 5, 2, 1, 7))
  ) // List(1, 2, 3, 4, 5, 6, 7, 8, 9)
  println(
    Sortable[Double].sort(List(8.8, 9.9, 4.4, 3.3, 6.6, 5.5, 2.2, 1.1, 7.7))
  ) // List(1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9)
  println(
    Sortable[String].sort(
      List("bb", "cc", "aa", "ee", "gg", "hh", "dd", "ii", "ff")
    )
  ) // List(aa, bb, cc, dd, ee, ff, gg, hh, ii)

  /*
  Task 4: Pattern Matching
  Write a function isPalindrome that takes a string as input and returns true if the string is a
  palindrome (i.e., it reads the same backward as forward), and false otherwise. Use pattern
  matching to implement the function.
  [Hint: You can use pattern matching to match the first and last characters of the string, and
  recursively match the substring between them until the string is empty or has one character
  left.]
   */

  def isPalindrome(string: String): Boolean = string match {
    case ""                      => true
    case _ if string.length == 1 => true
    case _ if string.head == string.last =>
      isPalindrome(string.substring(1, string.length - 1))
    case _ => false
  }

  println(isPalindrome("rotator")) // true
  println(isPalindrome("scala")) // false
  println(isPalindrome("madam")) // true
  println(isPalindrome("rovaniemi")) // false
}
