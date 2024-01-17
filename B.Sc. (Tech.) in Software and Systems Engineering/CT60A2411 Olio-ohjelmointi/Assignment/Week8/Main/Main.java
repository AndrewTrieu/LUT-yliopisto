package Main;

import java.util.Scanner;

/**
 *
 * @author gessle
 */
public class Main {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        boolean exit = false;

        System.out.println("Give the zoo a name:");
        String name = sc.nextLine();
        System.out.println("Give the manager a name:");
        String manager = sc.nextLine();

        Zoo zoo = new Zoo(name, manager);

        while (!exit) {
            System.out.println(
                    "1) Add an animal to the Zoo, 2) List all the animals, 3) Let animals play, 4) Go to the next year, 0) Exit");

            if (sc.hasNext()) {
                int i = 0;
                String si = sc.nextLine();
                try {
                    i = Integer.parseInt(si);
                } catch (NumberFormatException ex) {
                    ex.printStackTrace();
                }

                switch (i) {
                    case 1:
                        zoo.addAnimalMenu(sc); // Let's use the same scanner in Zoo's second level addAnimalMenu
                        break;

                    case 2:
                        zoo.listAnimals();
                        break;

                    case 3:
                        zoo.letAnimalsPlay();
                        break;
                    case 4:
                        zoo.nextYear();
                        break;

                    case 0:
                        System.out.println(
                                "The zoo has closed. " + Animal.getNumberOfCreatedAnimals() + " animals were created.");
                        exit = true;
                        break;
                }

            }
        }
        sc.close();

    }
}