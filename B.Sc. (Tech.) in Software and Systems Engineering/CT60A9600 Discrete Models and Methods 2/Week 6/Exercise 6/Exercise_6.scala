package com.rockthejvm

object Exercise_6 extends App{
  //conventional way
  def divide(a: Int, b: Int): Int = {
    if (b == 0) {
      throw new ArithmeticException("Cannot divide by zero")
    }
    a / b
  }

  try {
    val result = divide(10, 0)
    println(result)
  } catch {
    case e: ArithmeticException => println("Error: " + e.getMessage)
  } finally {
    println("Finished")
  }

  //functional way 1 - Using Option data type
  def divide(a: Int, b: Int): Option[Int] = {
    if (b == 0) {
      None
    } else {
      Some(a / b)
    }
  }

  val result = divide(10, 0)
  //The result variable is of type Option[Int],
  // so it can either contain a Some value with the result or None indicating an error.

  result match {
    case Some(value) => println(s"Result: $value")
    case None => println("Error: Cannot divide by zero")
  }

  //functional way 2 - Using Either data type

  def divide(a: Int, b: Int): Either[String, Int] = {
    if (b == 0) {
      Left("Cannot divide by zero")
    } else {
      Right(a / b)
    }
  }

  val result = divide(10, 0)
  //The result variable is of type Either[String, Int], so it can either contain
  // a Right value with the result or Left indicating an error.

  result match {
    case Right(value) => println(s"Result: $value")
    case Left(error) => println(s"Error: $error")
  }
}
