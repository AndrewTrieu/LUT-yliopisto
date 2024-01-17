package Main;

public class Cat extends Animal {
    String color;

    public Cat(String name, String spec, int age, String color) {
        super(name, spec, age);
        this.color = color;
    }

    static void doNastyThings() {
        System.out.println("...and doing nasty things...");
    }

    public String getColor() {
        return this.color;
    }

}
