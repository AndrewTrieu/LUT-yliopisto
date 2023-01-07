package Main;

public class Animal {
    String name, spec;
    int age;
    static int count = 0;

    public Animal(String name, String spec, int age) {
        this.name = name;
        this.spec = spec;
        this.age = age;
        count++;
    }

    public String getName() {
        return this.name;
    }

    public String getSpec() {
        return this.spec;
    }

    public int getAge() {
        return this.age;
    }

    public int getHumanAge() {
        if (getSpec().equals("Hedgehog")) {
            return getAge() * 20;
        } else if (getSpec().equals("Cat")) {
            return getAge() * 6;
        } else if (getSpec().equals("Lion")) {
            return getAge() * 2;
        }
        return 0;
    }

    public static int getNumberOfCreatedAnimals() {
        return count;
    }

    public void speak() {
        System.out.println("Hi, I am " + getSpec() + " and my name is " + getName() + ".");
    }

    public void play() {
        if (getSpec().equals("Hedgehog") || getSpec().equals("Lion")) {
            System.out.println(getName() + " is having a lot of fun.");
        } else {
            System.out.println(((Cat) this).getColor() + " " + getName() + " is having fun.");
            Cat.doNastyThings();
        }
    }
}
