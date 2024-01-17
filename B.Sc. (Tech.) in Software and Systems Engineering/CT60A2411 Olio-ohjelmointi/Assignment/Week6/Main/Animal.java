package Main;

public class Animal {
    String name, color, spec;

    public Animal(String name, String spec) {
        this.name = name;
        this.spec = spec;
    }

    public String getName() {
        return this.name;
    }

    public String getSpec() {
        return this.spec;
    }

    public void speak() {
        System.out.println("Hi, I am " + getSpec() + " and my name is " + getName() + ".");
    }

    public void play() {
        if (this instanceof Hedgehog) {
            System.out.println(getName() + " is having fun.");
        } else {
            System.out.println(((Cat) this).getColor() + " " + getName() + " is having fun.");
            Cat.doNastyThings();
        }
    }
}
