package com.rockthejvm

object Exercise_2 extends App {
  //claculating factroial with loops
  def factorialWithLoop(n: Int) = {
    var f=1
    for (i <- 1 to n) {
      f = f * i
    }
    f
  }

  println("Loop: Factorial is : " + factorialWithLoop(3))
   //fictorial(3) * fictorial(2) * fictorial(1) * fictorial(0)  = 6


  //claculating factroial with loops
  def factorialWithRecursion(n: Int): Int = {
    if (n == 0) 1
    else n * factorialWithRecursion(n - 1) // 3-1 = 2
                                           // 2-1 = 1
                                            // 1- 1 = 0
  }

  println("Recursion: Factorial is : " + factorialWithRecursion(3))

  /*
  * HINT for Task 1
  * For two intergers m & n
  * /*
      Recursion: adding 1, n times and
      then at the end adding m to it
  */
  * */
}
