import java.util.*;

public class Exercise3 {

    public static boolean isArmstrong(int numorg) {
        int num, temp, totalDigit = 0, res = 0, rem;
        num = numorg;
        temp = num;
        while (num > 0) {
            num /= 10;
            totalDigit++;
        }

        num = temp;
        while (num > 0) {
            rem = num % 10;
            res = res + (int) Math.pow(rem, totalDigit);
            num /= 10;
        }
        if (res == temp)
            return true;
        else
            return false;
    }

    static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.print("");
        int number = input.nextInt();
        System.out.print(number + " is an Armstrong number:" + isArmstrong(number));

    }
}
