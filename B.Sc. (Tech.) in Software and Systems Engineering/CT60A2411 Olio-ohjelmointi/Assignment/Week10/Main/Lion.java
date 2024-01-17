package Main;

public class Lion extends Animal implements Jumpable {

    public Lion(String name, String spec, int age) {
        super(name, spec, age);

    }

    @Override
    public void jump() {
        System.out.println("Lion is jumping!");

    }

    @Override
    public void land() {
        System.out.println("Lion is landing!");

    }

}
