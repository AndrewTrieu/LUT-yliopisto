import java.util.*;

public class Exercise1 {
    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {

        System.out.println("Units consumed:");
        double use = sc.nextDouble();
        if (use >= 1 && use <= 100) {
            double bill = use * 0.50;
            double tax = bill * 0.05;
            System.out.println("Bill amount: " + String.format("%.2f", bill));
            System.out.println("Tax: " + String.format("%.2f", tax));
            System.out.println("Total amount to be paid: " + String.format("%.2f", (bill + tax)));
        }

        else if (use <= 150) {
            double bill = (100 * 0.50 + (use - 100) * 0.75);
            double tax = bill * 0.05;
            System.out.println("Bill amount: " + String.format("%.2f", bill));
            System.out.println("Tax: " + String.format("%.2f", tax));
            System.out.println("Total amount to be paid: " + String.format("%.2f", (bill + tax)));
        }

        else {
            double bill = (100 * 0.50 + 50 * 0.75 + (use - 150) * 1.25);
            double tax = bill * 0.05;
            System.out.println("Bill amount: " + String.format("%.2f", bill));
            System.out.println("Tax: " + String.format("%.2f", tax));
            System.out.println("Total amount to be paid: " + String.format("%.2f", (bill + tax)));
        }
    }
}
