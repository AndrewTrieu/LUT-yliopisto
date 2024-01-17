package Main;

import java.util.*;

public class Battlefield {
    protected HashMap<Integer, Lutemon> battlefield = new HashMap<Integer, Lutemon>();
    protected int id1, id2, deadLutemon;
    protected Lutemon lutemon1, lutemon2, temp;
    Scanner scanner;
    private Boolean exit = true;

    public Battlefield(Scanner scanner) {
        this.scanner = scanner;
    }

    public void addLutemon(int id, Lutemon lutemon) {
        battlefield.put(id, lutemon);
    }

    public void removeLutemon(int id) {
        battlefield.remove(id);
    }

    public void fight() {
        exit = true;
        try {
            System.out.println("Give the ID of the first fighter:");
            id1 = Integer.parseInt(scanner.nextLine());
            lutemon1 = battlefield.get(id1);
            System.out.println("Give the ID of the second fighter:");
            id2 = Integer.parseInt(scanner.nextLine());
            lutemon2 = battlefield.get(id2);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        while (exit) {
            System.out.println(lutemon1.printStats());
            System.out.println(lutemon2.printStats());
            lutemon2.defense(lutemon1.attack());
            System.out.println(
                    lutemon1.getColor() + "(" + lutemon1.getName() + ") attacks " + lutemon2.getColor() + "("
                            + lutemon2.getName() + ")");
            if (lutemon2.checkAlive()) {
                System.out
                        .println(lutemon2.getColor() + "(" + lutemon2.getName() + ") manages to escape death.");
                temp = lutemon1;
                lutemon1 = lutemon2;
                lutemon2 = temp;
            } else {
                System.out.println(lutemon2.getColor() + "(" + lutemon2.getName() + ") gets killed.");
                System.out.println("The battle is over.");
                if (battlefield.get(id2) == lutemon2) {
                    battlefield.remove(id2);
                    lutemon1.train();
                    deadLutemon = id2;
                } else {
                    battlefield.remove(id1);
                    lutemon2.train();
                    deadLutemon = id1;
                }
                exit = false;
            }
        }
    }

    public HashMap<Integer, Lutemon> getBattlefield() {
        return battlefield;
    }

    public int deadLutemon() {
        return deadLutemon;
    }
}
