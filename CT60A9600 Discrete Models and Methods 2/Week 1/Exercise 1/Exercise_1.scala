package com.rockthejvm

object Exercise_1 extends App{
 // I am comment
  /*
  * I am a multiline comment
  *
  * */

  val number = 3 // constant
  number = 5

  val string1 = "Scala"
  val string2 = "Programming"
  val result = string1 + string2 // string concatination
  val interpolatedString = s"I am sitting at seat number $number"

  val expersseion = 2 + 3

  val IfExpressions = if (number > 3) "greater" else "smaller"

  val  block = {
    val ChainedExpression =
      if (number > 3)
        'A' else if (number < 3)
        'B' else if (number == 3)
        "Bla bla"
  }

  def myFirstFunction(First : Int, Second : String) : String = {
    val result = First + " " + Second
    return result
  }


  var number1: Int = 5 // its valuce can be updated



  number1 = 6
}
