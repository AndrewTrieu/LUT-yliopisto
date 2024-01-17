object Exercise_6 extends App {
  /*
  Task 1
  Create a function lookingForPrimesthat takes a list of integers and returns a list of Either type
  values. If the integer is prime, return Right with the prime integer. If the integer is not prime,
  return Left with an error message. Use map to apply this function to a list of integers and then
  use foreach to print the results or error messages.
   */
  print("Task 1: ")

  def lookingForPrimes(list: List[Int]): List[Either[String, Int]] = {
    list.map { num =>
      if (num < 2) Left(s"$num is not a prime number")
      else if (num == 2) Right(num)
      else {
        val isPrime = (2 until num).forall(num % _ != 0)
        if (isPrime) Right(num) else Left(s"$num is not a prime number")
      }
    }
  }

  lookingForPrimes(List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)).foreach {
    case Left(msg)  => println(msg)
    case Right(num) => println(num)
  }

  /*
  Task 2
  Create a case class for a student that contains a name, age, and grade (an Option[Int]). Create
  a list of students with some missing grade values. Use flatMap to extract the grade values from
  each student, resulting in a list of Int values wrapped in Option. Then use filter to remove any
  None values and then to find the average grade of the remaining students using built-in
  function or recursion. (Important: No Loops)
   */
  print("\nTask 2: ")

  case class Student(name: String, age: Int, grade: Option[Int])

  val students = List(
    Student("Andrew", 20, Some(95)),
    Student("Alfred", 21, Some(75)),
    Student("David", 20, None),
    Student("Roosa", 21, None),
    Student("Noora", 20, Some(85)),
    Student("Sami", 21, Some(65))
  )

  val grades = students.flatMap(_.grade)

  val average = grades.sum / grades.length

  println(average)

  /*
  Task 3
  Create a function that takes two integers and returns an Either value. If the second integer is
  zero, return Left with an error message. Otherwise, return Right with the result of dividing the
  first integer by the second integer. Create a list of tuples containing pairs of integers, and use
  a higher order function to apply this function to each pair, resulting in a list of Either values.
  Then use partition to separate the Right values from the Left values, and use foldLeft to find
  the sum of the Right values.
   */
  print("\nTask 3: ")

  def divide(a: Int, b: Int): Either[String, Int] = {
    if (b == 0) Left("Cannot divide by zero")
    else Right(a / b)
  }

  val tuples =
    List((5, 2), (2, 3), (3, 0), (7, 8), (5, 0), (4, 7), (9, 3), (6, 0))

  val (lefts, rights) =
    tuples.map { case (a, b) => divide(a, b) }.partition(_.isLeft)

  // Note: Right values are of integer type, so after division, they are rounded down to the nearest integer.
  // For example, 5 / 2 = 2.5, but the result is 2

  val sum = rights.foldLeft(0) { (acc, right) => acc + right.right.get }

  println(sum)

  /*
  Task 4
  Create a function that takes a list of Strings and returns an Option value. If any of the Strings
  in the list contains the word "error", return None. Otherwise, return Some with the
  concatenated string of all strings in the list. Use a higher order function to apply this function
  to a list of Strings and then use match to handle the Option value. If Some, print the
  concatenated string. If None, print an error message.
   */
  print("\nTask 4: ")

  def checkForErrors(list: List[String]): Option[String] = {
    if (list.exists(_.toLowerCase.contains("error"))) None
    else Some(list.mkString)
  }

  val stringsWithErrors = List(
    "Nothing here",
    "No error here",
    "Definitely something here",
    "This will pass",
    "Here is an error"
  )

  val stringsWithoutErrors = List(
    "Nothing here",
    "Not here",
    "Certainly nothing here",
    "Definitely nothing here",
    "Absolutely nothing here"
  )

  def handleCheck(List: List[String], f: List[String] => Option[String]) = {
    f(List) match {
      case Some(str) => println(str)
      case None      => println("There was an error")
    }
  }

  handleCheck(stringsWithErrors, checkForErrors)
  handleCheck(stringsWithoutErrors, checkForErrors)

}
