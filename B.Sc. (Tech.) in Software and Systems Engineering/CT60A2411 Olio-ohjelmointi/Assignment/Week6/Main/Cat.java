package Main;

public class Cat extends Animal {
    String color;

    public Cat(String name, String color) {
        super(name, "Cat");
        this.color = color;
    }

    private static void doNastyThings() {
        System.out.println("...and doing nasty things...");
    }

    public String getColor() {
        return this.color;
    }

}
