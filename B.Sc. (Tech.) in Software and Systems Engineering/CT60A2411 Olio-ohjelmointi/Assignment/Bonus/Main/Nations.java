package Main;

import java.io.*;
import java.util.*;

public class Nations {

    private Scanner scanner;
    private HashMap<Integer, String> nations = new HashMap<Integer, String>();
    private HashMap<Integer, String> custom = new HashMap<Integer, String>();
    private int count = 0;

    public Nations(Scanner sc) {
        File file = new File("nations.txt");
        this.scanner = sc;
        try (Scanner read = new Scanner(file)) {
            while (read.hasNextLine()) {
                String land = read.nextLine();
                nations.put(count, land);
                count++;
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void list() {
        for (int key : nations.keySet()) {
            System.out.print(key + ") " + nations.get(key) + " ");
        }
        System.out.println();
    }

    public void search() {
        System.out.println("Give a string to search:");
        String word = scanner.nextLine();
        System.out.println("The following nations include string '" + word + "':");
        for (String nation : nations.values()) {
            if (nation.toLowerCase().contains(word.toLowerCase())) {
                System.out.println(nation);
            }
        }
    }

    public void move() {
        System.out.println("Give a country ID to move:");
        int id = Integer.parseInt(scanner.nextLine());
        for (int key : nations.keySet()) {
            if (key == id) {
                custom.put(key, nations.get(key));
            }
        }
        nations.remove(id);

    }

    public void custom() {
        for (int key : custom.keySet()) {
            System.out.print(key + ") " + custom.get(key) + " ");
        }
        System.out.println();
    }

    public void clear() {
        for (int key : custom.keySet()) {
            nations.put(key, custom.get(key));
        }
        custom.clear();
    }
}