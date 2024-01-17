import java.util.*;

public class Main {
    static Scanner sc = new Scanner(System.in);
    static boolean exit = false;
    static String name, manager, animal, visitor;
    static ArrayList<String> animals = new ArrayList<String>();

    public static void main(String[] args) {
        System.out.println("Give the zoo a name:");
        name = sc.nextLine();
        System.out.println("Give the manager a name:");
        manager = sc.nextLine();
        while (!exit) {
            System.out.println(
                    "1) Add a rescued animal, 2) Free an animal, 3) List animals, 4) Clean the zoo, 5) Visit the zoo, 0) Exit");
            String choice = sc.nextLine();
            if (choice.equals("1")) {
                System.out.println("What animal have you rescued?");
                animal = sc.nextLine();
                animals.add(animal);
                System.out.println(animal + " rescued.");
            } else if (choice.equals("2")) {
                System.out.println("What animal should be freed?");
                animal = sc.nextLine();
                if (animals.contains(animal)) {
                    animals.remove(animal);
                    System.out.println(animal + " is free now!");
                } else {
                    System.out.println("No such animal found.");
                }
            } else if (choice.equals("3")) {
                System.out.println(
                        name + " is lead by " + manager + " and it has the following animals:");
                for (String i : animals) {
                    System.out.println(i);
                }
            } else if (choice.equals("4")) {
                System.out.println("Cleaning cages... restaurants... and roads.");
            } else if (choice.equals("5")) {
                System.out.println("Who is going to visit the zoo?");
                visitor = sc.nextLine();
                if (animals.isEmpty()) {
                    System.out.println(visitor + " visits zoo, but there are no animals!");
                } else {
                    System.out.println(visitor + " visits the zoo and sees " + animals.get(0) + ".");
                }
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
