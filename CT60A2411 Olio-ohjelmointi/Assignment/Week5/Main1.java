import java.util.*;
import data.Zoo;

public class Main1 {
    static Scanner sc = new Scanner(System.in);
    static boolean exit = false;
    static String animal, visitor;

    public static void main(String[] args) {
        System.out.println("Give the zoo a name:");
        String name = sc.nextLine();
        System.out.println("Give the manager a name:");
        String manager = sc.nextLine();
        Zoo z = new Zoo(name, manager);
        while (!exit) {
            System.out.println(
                    "1) Add a rescued animal, 2) Free an animal, 3) List animals, 4) Clean the zoo, 5) Visit the zoo, 0) Exit");
            String choice = sc.nextLine();
            if (choice.equals("1")) {
                System.out.println("What animal have you rescued?");
                animal = sc.nextLine();
                z.rescueAnimal(animal);
            } else if (choice.equals("2")) {
                System.out.println("What animal should be freed?");
                animal = sc.nextLine();
                z.setFree(animal);
            } else if (choice.equals("3")) {
                z.listAnimals();
            } else if (choice.equals("4")) {
                z.cleanZoo();
            } else if (choice.equals("5")) {
                System.out.println("Who is going to visit the zoo?");
                visitor = sc.nextLine();
                z.visitZoo(visitor);
            } else if (choice.equals("0")) {
                exit = true;
                sc.close();
            } else {
                System.out.println("Invalid choice.");
                continue;
            }
        }
    }
}
