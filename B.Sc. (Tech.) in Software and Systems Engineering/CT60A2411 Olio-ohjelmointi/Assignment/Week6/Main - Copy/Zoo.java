package Main;

import java.util.ArrayList;

public class Zoo {
    String name, manager;
    ArrayList<Hedgehog> listHedgehog = new ArrayList<Hedgehog>();
    ArrayList<Cat> listCat = new ArrayList<Cat>();

    public Zoo(String name, String manager) {
        this.name = name;
        this.manager = manager;
    }

    public void addHedgehog(Hedgehog hedgehog) {
        listHedgehog.add(hedgehog);
        System.out.println("Hi, I am Hedgehog and my name is " + hedgehog.getName() + ".");
    }

    public void addCat(Cat cat) {
        listCat.add(cat);
        System.out.println("Hi, I am Cat and my name is " + cat.getName() + ".");

    }

    public void listAnimals() {
        System.out.println(name + " is lead by " + manager + " and it has the following hedgehogs:");
        for (Hedgehog hedgehog : listHedgehog) {
            System.out.println(hedgehog);
        }
        System.out.println("And the following cats:");
        for (Cat cat : listCat) {
            System.out.println(cat);
        }
    }

    public void introduceAllAnimals() {
        for (Hedgehog hedgehog : listHedgehog) {
            System.out.println("Hi, I am Hedgehog and my name is " + hedgehog.getName() + ".");
        }
        for (Cat cat : listCat) {
            System.out.println("Hi, I am Cat and my name is " + cat.getName() + ".");
        }
    }

    public void letAnimalsPlay() {
        for (Hedgehog hedgehog : listHedgehog) {
            System.out.println(hedgehog.getName() + " is having fun.");
        }
        for (Cat cat : listCat) {
            System.out.println(cat.getColor() + " " + cat.getName() + " is having fun.");
            System.out.println("...and doing nasty things...");
        }
    }
}