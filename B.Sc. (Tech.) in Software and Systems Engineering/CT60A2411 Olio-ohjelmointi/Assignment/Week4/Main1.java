import data.Hedgehog;
import java.util.Scanner;

public class Main1 {
    public static void main(String[] args) {
        Boolean exit = false;
        Scanner sc = new Scanner(System.in);
        System.out.println("Give a name to the hedgehog: ");
        String name = sc.nextLine();
        Hedgehog hedgehog = new Hedgehog(name);
        System.out.println(hedgehog.speak());
        while (!exit) {
            System.out.println("What should the hedgehog say?");
            String inp = sc.nextLine();
            try {
                Integer inp2 = Integer.parseInt(inp);
                System.out.println(hedgehog.speakInt(inp2));
            } catch (NumberFormatException e) {
                if ("exit".equals(inp)) {
                    exit = true;
                    sc.close();
                } else {
                    System.out.println(hedgehog.speakString(inp));
                }
            }
        }
    }
}
