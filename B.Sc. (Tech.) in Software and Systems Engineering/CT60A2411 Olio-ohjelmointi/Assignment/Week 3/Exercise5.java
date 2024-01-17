public class Exercise5 {
    public static void main(String[] args) {
        for (int i = 1; i <= 6; i++) {
            int n = 6;

            for (int j = 1; j <= n - i; j++) {
                System.out.print(" ");
            }
            for (int k = i; k >= 1; k--) {
                System.out.print(k);
            }
            System.out.println();
        }
    }
}
