import java.util.Scanner;

public class Exercise4 {
    public static void PoundToKg() {
        Scanner inp = new Scanner(System.in);
        double val = inp.nextDouble();
        inp.close();
        double kg = (double) (val * 0.454);
        System.out.println("Kilograms:" + kg);
    }

    public static void main(String[] args) {
        System.out.print("");
        PoundToKg();
    }
}
