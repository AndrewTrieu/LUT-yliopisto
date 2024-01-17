#define MAX 100

int main() {
     MAX;
     #undef MAX
     MAX;
     #define MAX 120
     MAX;
     return 0;
}