import data.Hedgehog;
import java.util.*;

public class Main {
    static ArrayList<String> zoo = new ArrayList<String>();

    public static void addAnimal(String h) {
        zoo.add(h);
    }

    public static void main(String[] args) {
        Boolean exit = false;
        String name;
        Scanner sc = new Scanner(System.in);
        while (!exit) {
            System.out.println("1) Add a hedgehog, 2) Let them speak, 3) List animals, 0) Exit");
            String choice = sc.nextLine();
            if (choice.equals("1")) {
                System.out.println("\nGive a name to the hedgehog:\n");
                name = sc.nextLine();
                addAnimal(name);
                Hedgehog hedgehog = new Hedgehog(name);
                System.out.println(hedgehog.speak());
            } else if (choice.equals("2")) {
                System.out.println("\nWhat should hedgehogs say?\n");
                String inp = sc.nextLine();
                try {
                    Integer inp2 = Integer.parseInt(inp);
                    for (String i : zoo) {
                        Hedgehog hedgehog = new Hedgehog(i);
                        System.out.println(hedgehog.speakInt(inp2));
                    }
                } catch (NumberFormatException e) {
                    for (String i : zoo) {
                        Hedgehog hedgehog = new Hedgehog(i);
                        System.out.println(hedgehog.speakString(inp));
                    }
                }
            } else if (choice.equals("3")) {
                for (int i = 0; i < zoo.size(); i++) {
                    System.out.println(zoo.get(i));
                }
            } else if (choice.equals("0")) {
                exit = true;
                sc.close();
            }
        }
    }
}
