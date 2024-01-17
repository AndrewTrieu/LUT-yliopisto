package Main;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        Nations nation = new Nations(sc);
        boolean exit = false;
        while (!exit) {
            System.out.println(
                    "1) List all the nations, 2) Search for a nation, 3) Pick nations to custom list, 4) List custom list nations, 5) Clean custom list, 0) Exit");
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
                        nation.list();
                        break;
                    case 2:
                        nation.search();
                        break;
                    case 3:
                        nation.move();
                        break;
                    case 4:
                        nation.custom();
                        break;
                    case 5:
                        nation.clear();
                        break;
                    case 0:
                        System.exit(0);
                        break;
                    default:
                        System.out.println("Unknown option.");
                        break;
                }
            }
        }
        sc.close();
    }
}