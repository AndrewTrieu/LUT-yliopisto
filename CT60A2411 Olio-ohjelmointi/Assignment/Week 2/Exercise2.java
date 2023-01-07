import java.util.Scanner;

public class Exercise2 {
    public static void main(String[] args) {
        Scanner inp = new Scanner(System.in);
        System.out.print("Enter the amount of water in kilograms:");
        float M = inp.nextFloat();
        System.out.print("Enter the initial temperature:");
        float t1 = inp.nextFloat();
        System.out.print("Enter the final temperature:");
        float t2 = inp.nextFloat();
        inp.close();
        double Q = M * (t2 - t1) * 4184;
        System.out.println("The energy needed is " + Q);
    }
}
