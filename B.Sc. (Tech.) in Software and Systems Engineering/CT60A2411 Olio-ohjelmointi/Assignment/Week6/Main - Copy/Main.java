package Main;

import java.util.Scanner;

/**
 *
 * @author gessle
 */
public class Main {

    public static void main(String[] args) {
        String s;

        Scanner sc = new Scanner(System.in);
        boolean exit = false;

        System.out.println("Give the zoo a name:");
        String name = sc.nextLine();
        System.out.println("Give the manager a name:");
        String manager = sc.nextLine();

        Zoo zoo = new Zoo(name, manager);

        while (!exit) {
            System.out.println(
                    "1) Add a hedgehog, 2) Add a cat, 3) List animals, 4) Introduce all animals, 5) Let animals play, 0) Exit");

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
                        System.out.println("Give it a name:");
                        s = sc.nextLine();
                        zoo.addHedgehog(new Hedgehog(s));

                        break;

                    case 2:
                        System.out.println("Give it a name:");
                        s = sc.nextLine();
                        System.out.println("Give it a color:");
                        String c = sc.nextLine();
                        zoo.addCat(new Cat(s, c));
                        break;

                    case 3:
                        zoo.listAnimals();
                        break;

                    case 4:
                        zoo.introduceAllAnimals();
                        break;

                    case 5:
                        zoo.letAnimalsPlay();
                        break;

                    case 0:
                        exit = true;
                        break;
                }

            }
        }
        sc.close();

    }
}