package Main;

import java.util.*;

public class Storage {
    protected HashMap<Integer, Lutemon> storage = new HashMap<Integer, Lutemon>();
    private int choice, id;
    private String name;
    Scanner scanner;
    private Home home = new Home();
    private TrainingArea training = new TrainingArea();
    private Battlefield battlefield;

    public Storage(Scanner scanner) {
        this.scanner = scanner;
        this.battlefield = new Battlefield(scanner);
    }

    public void createLutemon() {
        try {
            System.out.println("Add 1) White, 2) Green, 3) Pink, 4) Orange, 5) Black");
            String a = scanner.nextLine();
            choice = Integer.parseInt(a);
            System.out.println("Give it a name:");
            name = scanner.nextLine();

        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        switch (choice) {
            case 1:
                White white = new White(name, "White", 0, 5, 4, 20);
                storage.put(white.getId(), white);
                home.addLutemon(white.getId(), white);
                break;
            case 2:
                Green green = new Green(name, "Green", 0, 6, 3, 19);
                storage.put(green.getId(), green);
                home.addLutemon(green.getId(), green);
                break;
            case 3:
                Pink pink = new Pink(name, "Pink", 0, 7, 2, 18);
                storage.put(pink.getId(), pink);
                home.addLutemon(pink.getId(), pink);
                break;
            case 4:
                Orange orange = new Orange(name, "Orange", 0, 8, 1, 17);
                storage.put(orange.getId(), orange);
                home.addLutemon(orange.getId(), orange);
                break;
            case 5:
                Black black = new Black(name, "Black", 0, 9, 0, 16);
                storage.put(black.getId(), black);
                home.addLutemon(black.getId(), black);
                break;
            default:
                System.out.println("Invalid choice.");
                break;
        }
    }

    public void listLutemons() {
        System.out.println("There are the following Lutemons at Home:");
        for (Lutemon lutemon : home.getHome().values()) {
            System.out.println(lutemon.printStats());
        }
        System.out.println("There are the following Lutemons at Training area:");
        for (Lutemon lutemon : training.getTraining().values()) {
            System.out.println(lutemon.printStats());
        }
        System.out.println("There are the following Lutemons at Battle field:");
        for (Lutemon lutemon : battlefield.getBattlefield().values()) {
            System.out.println(lutemon.printStats());
        }
    }

    public void moveLutemons() {
        try {
            System.out.println("Give the ID of Lutemon that should be moved:");
            id = Integer.parseInt(scanner.nextLine());
            System.out.println(
                    "Where would the Lutemon be moved? 1) Home, 2) Training area, 3) Battle field");
            choice = Integer.parseInt(scanner.nextLine());
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        if (checkIfExists(id)) {
            switch (choice) {
                case 1:
                    if (home.getHome().containsKey(id) == false) {
                        if (training.getTraining().containsKey(id)) {
                            training.removeLutemon(id);
                            home.addLutemon(id, storage.get(id));
                        } else if (battlefield.getBattlefield().containsKey(id)) {
                            battlefield.removeLutemon(id);
                            home.addLutemon(id, storage.get(id));
                        }
                    }
                    break;
                case 2:
                    if (training.getTraining().containsKey(id) == false) {
                        if (home.getHome().containsKey(id)) {
                            home.removeLutemon(id);
                            training.addLutemon(id, storage.get(id));
                        } else if (battlefield.getBattlefield().containsKey(id)) {
                            battlefield.removeLutemon(id);
                            training.addLutemon(id, storage.get(id));
                        }
                    }
                    break;
                case 3:
                    if (battlefield.getBattlefield().containsKey(id) == false) {
                        if (home.getHome().containsKey(id)) {
                            home.removeLutemon(id);
                            battlefield.addLutemon(id, storage.get(id));
                        } else if (training.getTraining().containsKey(id)) {
                            training.removeLutemon(id);
                            battlefield.addLutemon(id, storage.get(id));
                        }
                    }
                    break;
                default:
                    System.out.println("Invalid choice.");
                    break;
            }
        }

    }

    public void trainLutemon() {
        training.train();
    }

    public void fightLutemon() {
        System.out.println("There are the following Lutemons at Battle field:");
        for (Lutemon lutemon : battlefield.getBattlefield().values()) {
            System.out.println(lutemon.printStats());
        }
        battlefield.fight();
        storage.remove(battlefield.deadLutemon());
    }

    public HashMap<Integer, Lutemon> getStorage() {
        return storage;
    }

    public boolean checkIfExists(Integer id) {
        if (storage.containsKey(id) == false) {
            System.out.println("No Lutemon with ID " + id + " could be found!");
            return false;
        } else {
            return true;
        }
    }
}
