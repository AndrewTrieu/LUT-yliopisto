package Main;

import java.util.ArrayList;

public class Zoo {
    String name, manager;
    ArrayList<Animal> animals = new ArrayList<Animal>();

    public Zoo(String name, String manager) {
        this.name = name;
        this.manager = manager;
    }

    public void addHedgehog(Hedgehog hedgehog) {
        animals.add(hedgehog);
        hedgehog.speak();
    }

    public void addCat(Cat cat) {
        animals.add(cat);
        cat.speak();
    }

    public void listAnimals() {
        System.out.println(name + " is lead by " + manager + " and it has the following hedgehogs:");
        for (Animal animal1 : animals) {
            if (animal1 instanceof Hedgehog) {
                System.out.println(animal1.getName());
            }
        }
        System.out.println("And the following cats:");
        for (Animal animal2 : animals) {
            if (animal2 instanceof Cat) {
                System.out.println(animal2.getName());
            }
        }

    }

    public void introduceAllAnimals() {
        for (Animal animal1 : animals) {
            if (animal1 instanceof Hedgehog) {
                animal1.speak();
            }
        }
        for (Animal animal2 : animals) {
            if (animal2 instanceof Cat) {
                animal2.speak();
            }
        }
    }

    public void letAnimalsPlay() {
        for (Animal animal1 : animals) {
            if (animal1 instanceof Hedgehog) {
                animal1.play();
            }
        }
        for (Animal animal2 : animals) {
            if (animal2 instanceof Cat) {
                animal2.play();
            }
        }
    }
}
