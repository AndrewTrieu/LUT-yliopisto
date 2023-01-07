import java.util.Scanner;

public class Exercise3 {
    public static void main(String[] args) {
        double pi = 3.14;
        Scanner inp = new Scanner(System.in);
        System.out.print("radius:");
        float r = inp.nextFloat();
        System.out.print("length:");
        float l = inp.nextFloat();
        inp.close();
        System.out.println("Area: " + (r * r * pi));
        System.out.println("Volume: " + (r * r * pi * l));
    }
}
