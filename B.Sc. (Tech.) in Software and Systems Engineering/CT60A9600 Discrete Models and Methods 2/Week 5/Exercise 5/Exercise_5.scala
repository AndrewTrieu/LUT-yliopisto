package com.rockthejvm

object Exercise_5 extends App {

  //Pattern Matching
  case class Person(name: String, age: Int)

  def greet(person: Person): String = person match {
    case Person("Alice", _) => "Hello Alice!"
    case Person(name, age) if age > 30 => s"Hello $name, you are over 30 years old."
    case Person(name, _) => s"Hello $name."
  }

  val alice = Person("Alice", 25)
  val bob = Person("Bob", 35)

  println(greet(alice)) // "Hello Alice!"
  println(greet(bob)) // "Hello Bob, you are over 30 years old."


  //Varience
  class Animal

  class Dog extends Animal

  class Cat extends Animal

  class Cage[-A](animal: A)

  val dogCage: Cage[Dog] = new Cage[Animal](new Animal)

  /*
  * In this example, we have defined a Cage class that takes a contravariant type parameter A.
  * This means that a Cage[Animal] can be treated as a Cage[Dog] because Dog is a subtype of
  * Animal.
  * */

}
