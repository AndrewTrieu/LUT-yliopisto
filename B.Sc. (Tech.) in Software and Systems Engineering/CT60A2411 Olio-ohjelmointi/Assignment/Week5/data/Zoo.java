package data;

import java.util.ArrayList;

public class Zoo {
    public static String name;
    public static String manager;
    static ArrayList<String> animals = new ArrayList<String>();

    public Zoo(String name, String manager) {
        Zoo.name = name;
        Zoo.manager = manager;
    }

    public static String getName() {
        return name;
    }

    public static String getManager() {
        return manager;
    }

    public static ArrayList<String> getAnimals() {
        return animals;
    }

    public void rescueAnimal(String animal) {
        animals.add(animal);
        System.out.println(animal + " rescued.");
    }

    public void setFree(String animal) {
        try {
            animals.remove(animal);
            System.out.println(animal + " is free now!");
        } catch (Exception e) {
            System.out.println("No such animal found.");
        }
    }

    public void listAnimals() {
        System.out.println(Zoo.getName() + " is lead by " + Zoo.getManager() + " and it has the following animals:");
        for (String i : Zoo.getAnimals()) {
            System.out.println(i);
        }
    }

    public void cleanZoo() {
        System.out.println("Cleaning cages... restaurants... and roads.");
    }

    public void visitZoo(String visitor) {
        if (Zoo.getAnimals().isEmpty()) {
            System.out.println(visitor + " visits zoo, but there are no animals!");
        } else {
            System.out.println(visitor + " visits the zoo and sees " + Zoo.getAnimals().get(0) + ".");
        }
    }
}
