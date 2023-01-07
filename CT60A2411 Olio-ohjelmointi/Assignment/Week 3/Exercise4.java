import java.util.*;

public class Exercise4 {
    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        int s = sc.nextInt();
        int[] xArray = new int[s];
        for (int i = 0; i < s; i++)
            xArray[i] = sc.nextInt();
        int minindex = minIndex(xArray);
        System.out.println("the position of min is:" + minindex);
    }

    public static int minIndex(int[] list) {
        int small = 2147483647, ans = 0, j;
        for (j = 0; j < list.length; j++)
            if (list[j] < small) {
                small = list[j];
                ans = j;
            }
        return ans;

    }
}
