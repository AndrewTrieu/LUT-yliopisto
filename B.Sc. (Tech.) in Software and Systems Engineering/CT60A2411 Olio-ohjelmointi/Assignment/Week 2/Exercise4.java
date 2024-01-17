import java.util.Scanner;

public class Exercise4 {
    static Scanner sc = new Scanner(System.in);

    public static void milesToMeters() {
        final int mile = 1609;
        System.out.println("Enter miles:");
        int miles = sc.nextInt();
        System.out.print("Meters: " + (mile * miles));
    }

    public static void litersToGallons() {
        final double gallon = 3.785;
        System.out.println("Enter liters:");
        double liters = sc.nextDouble();
        System.out.print("Gallons: " + (liters / gallon));
    }

    public static void main(String[] args) {
        System.out.println("Enter your option:");
        char option = sc.next().charAt(0);
        if (option == 'a') {
            milesToMeters();
        } else {
            litersToGallons();
        }
        sc.close();
    }
}
