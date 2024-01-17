import java.util.Scanner;

public class Exercise3 {
    static Scanner vol = new Scanner(System.in);

    public static void areaOfSquare(int a) {
        System.out.println("area of Square:" + (a * a));
    }

    public static double volOfSphere() {
        double pi = 3.14;
        System.out.println("Enter radius:");
        double r = vol.nextDouble();
        double V = (4.0 / 3.0) * pi * r * r * r;
        return V;
    }

    public static void main(String[] args) {
        System.out.println("Enter side of Square:");
        int side = vol.nextInt();
        areaOfSquare(side);
        double v = volOfSphere();
        System.out.println("Volume of Sphere:" + v);
    }
}
