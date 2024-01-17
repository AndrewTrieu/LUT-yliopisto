#include <stdio.h>
#include <string.h>

int main()
{  
    char row[80] = "02.01.2020 22:00;1;10615801;0;1978337;1269010;2799999;2660199;202531";
    char *token;
 
    /* get the first token */
    token = strtok(row, ";");
    
    /* walk through other tokens */
    while( token != NULL ) {
        printf( "%s\n", token);
        token = strtok(NULL, ";");
   }
    return 0;
}