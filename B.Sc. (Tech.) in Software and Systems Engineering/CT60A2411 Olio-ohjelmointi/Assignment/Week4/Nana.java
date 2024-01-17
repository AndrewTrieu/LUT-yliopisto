import data.Hedgehog;
import java.util.Scanner;
import java.lang.String;

public class Nana {
    public static void main(String[] args) {
        Scanner Hhog = new Scanner(System.in); // Create a Scanner object
        System.out.println("Give a name to the hedgehog:");
        String hog = Hhog.nextLine(); // Read user input
        Hedgehog hedgehog = new Hedgehog(hog);
        System.out.println(hedgehog.speak()); // output user input
        boolean exit = false;
        while (!exit) {
            System.out.println("What should the hedgehog say?");
            String hoggie = Hhog.nextLine();
            try {
                int input = Integer.parseInt(hoggie);
                System.out.println(hedgehog.speakInt(input));
            } catch (NumberFormatException ex) {
                if ("exit".equals(hoggie)) {
                    exit = true;

                } else {
                    System.out.println(hedgehog.speakString(hoggie));
                }
            }
        }

    }
}