import java.util.*;

public class Exercise2 {
    static Scanner sc = new Scanner(System.in);

    public static long factoNumber(int f) {
        int count = 1;
        long ans = 1;
        while (count <= f) {
            ans *= count;
            count++;
        }
        return ans;
    }

    public static void main(String[] args) {
        try {
            System.out.print("");
            int number = sc.nextInt();
            if (number <= 0)
                throw new Exception("Value must be positive integer");
            else {
                System.out.println("The factorial of " + number + " is " + factoNumber(number));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
