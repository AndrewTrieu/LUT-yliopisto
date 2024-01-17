package Main;

import java.util.*;

public class Zoo {
    int choice, age, spikes;
    String name, manager, animal, color;
    ArrayList<Animal> animals = new ArrayList<Animal>();

    public Zoo(String name, String manager) {
        this.name = name;
        this.manager = manager;
    }

    public void addAnimalMenu(Scanner sc) {
        System.out.println("1) Add a hedgehog, 2) Add a cat, 3) Add a lion");
        try {
            choice = Integer.valueOf(sc.nextLine());
            switch (choice) {
                case 1:
                    System.out.println("Give it a name:");
                    animal = sc.nextLine();
                    System.out.println("How old it is:");
                    age = Integer.valueOf(sc.nextLine());
                    System.out.println("How many spikes it has:");
                    spikes = Integer.valueOf(sc.nextLine());
                    Hedgehog hedgehog = new Hedgehog(animal, "Hedgehog", age, spikes);
                    animals.add(hedgehog);
                    hedgehog.speak();
                    break;
                case 2:
                    System.out.println("Give it a name:");
                    animal = sc.nextLine();
                    System.out.println("How old it is:");
                    age = Integer.valueOf(sc.nextLine());
                    System.out.println("Give it a color:");
                    color = sc.nextLine();
                    Cat cat = new Cat(animal, "Cat", age, color);
                    animals.add(cat);
                    cat.speak();
                    break;
                case 3:
                    System.out.println("Give it a name:");
                    animal = sc.nextLine();
                    System.out.println("How old it is:");
                    age = Integer.valueOf(sc.nextLine());
                    Lion lion = new Lion(animal, "Lion", age);
                    animals.add(lion);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void listAnimals() {
        System.out.println(name + " is lead by " + manager + " and it has the following animals:");
        for (Animal i : animals) {
            if (i.getSpec().equals("Hedgehog")) {
                System.out.println("The Hedgehog " + i.getName() + " is " + i.getAge() + " years old ("
                        + i.getHumanAge() + " in human years) and has " + ((Hedgehog) i).getSpikes() + " spikes.");
            } else if (i.getSpec().equals("Cat")) {
                System.out.println(
                        "The " + ((Cat) i).getColor() + " Cat " + i.getName() + " is " + i.getAge() + " years old ("
                                + i.getHumanAge() + " in human years).");
            } else if (i.getSpec().equals("Lion")) {
                System.out.println(
                        "The Lion " + i.getName() + " is " + i.getAge() + " years old ("
                                + i.getHumanAge() + " in human years).");
            }
        }
    }

    public void letAnimalsPlay() {
        for (Animal i : animals) {
            i.play();
        }
    }

    public void nextYear() {
        System.out.println("One year has passed.");

        Iterator<Animal> i = animals.iterator();
        while (i.hasNext()) {
            Animal s = i.next();
            if (s.getSpec().equals("Hedgehog")) {
                if (s.getAge() >= 7) {
                    System.out.println(
                            "Hedgehog " + s.getName() + " passed away at the age of " + (s.getAge()) + ".");
                    i.remove();
                }
            } else if (s.getSpec().equals("Cat")) {
                if (s.getAge() >= 20) {
                    System.out.println("Cat " + s.getName() + " passed away at the age of " + (s.getAge()) + ".");
                    i.remove();
                }
            } else if (s.getSpec().equals("Lion")) {
                if (s.getAge() >= 25) {
                    System.out.println("Lion " + s.getName() + " passed away at the age of " + (s.getAge()) + ".");
                    i.remove();
                }
            }
        }
        for (Animal each : animals) {
            each.age = each.getAge() + 1;
        }
    }
}
