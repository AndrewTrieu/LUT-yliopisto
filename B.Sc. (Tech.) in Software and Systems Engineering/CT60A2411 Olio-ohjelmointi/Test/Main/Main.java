class Vehicle {
  public void run() {
    System.out.println("Running.");
  }
}

class Car extends Vehicle {
  public void run() {
    System.out.println("Driving.");
  }
}

class Motorbike extends Vehicle {
  public void run() {
    System.out.println("Riding.");
  }
}

class Boat extends Vehicle {
  public void run() {
    System.out.println("Sailing.");
  }
}

class Plane extends Vehicle {
  public void run() {
    System.out.println("Flying.");
  }
}

public class Main {
  public static void main(String[] args) {
    Vehicle s = new Vehicle();
    s.run(); // -> Running.
    s = new Car();
    s.run(); // -> Driving.
    s = new Motorbike();
    s.run(); // -> Riding.
    s = new Boat();
    s.run(); // -> Sailing.
    s = new Plane();
    s.run(); // -> Flying.
  }
}