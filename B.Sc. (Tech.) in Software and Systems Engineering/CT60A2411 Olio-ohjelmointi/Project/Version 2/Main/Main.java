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

        System.out.println("Welcome to the Lutemon simulator!");
        Storage storage = new Storage(sc);
        while (!exit) {
            System.out.println(
                    "1) Create a Lutemon, 2) List all the Lutemons, 3) Move Lutemons, 4) Train Lutemons, 5) Let them fight, 0) Exit");
            int i = 0;
            String si = sc.nextLine();
            try {
                i = Integer.parseInt(si);
            } catch (NumberFormatException ex) {
                ex.printStackTrace();
            }
            switch (i) {
                case 1:
                    storage.createLutemon();
                    break;
                case 2:
                    storage.listLutemons();
                    break;
                case 3:
                    storage.moveLutemons();
                    break;
                case 4:
                    storage.trainLutemon();
                    break;
                case 5:
                    storage.fightLutemon();
                    break;
                case 0:
                    exit = true;
                    System.out.println(
                            "The game has closed. In total " + Lutemon.getIdCounter()
                                    + " Lutemons were created.");
                    break;
                default:
                    System.out.println("Unknown option.");
                    break;
            }

        }
        sc.close();

    }
}