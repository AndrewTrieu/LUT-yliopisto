import java.util.Scanner;

public class Exercise1 {
    public static void main(String[] args) {
        System.out.print("Enter a number between 100 and 999:");
        Scanner inp = new Scanner(System.in);
        Integer n = inp.nextInt();
        Integer a = (n % 10);
        Integer b = ((n / 10) % 10);
        Integer c = ((n / 100) % 10);
        Integer all = a + b + c;
        inp.close();
        System.out.println(all);
    }
}
