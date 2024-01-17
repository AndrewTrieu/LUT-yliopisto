/************************************************************************
 * LES10A110 Principles of C-programming
 * Name: Trieu Huynh Ba Nguyen
 * Student number: 000405980
 * Email: Trieu.Huynh.Ba.Nguyen@student.lut.fi
 * Date: 16.04.2022
 * By submitting this work for evaluation, I certify that
 * 1) I myself wrote all the code in this file
 * 2) I have not given this code to anyone else
 *
 *************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "Library.h"

int main()
{
    node *head = NULL;
    node *tail = NULL;
    node *itr;
    FILE *ptr;
    electric e;
    int count = -1, choice;
    char buffer[1024], name[1024];
    memset(buffer, 0, 1024);
    while (1)
    {
        printf("1)Read the file\n2)Analyze consumption\n3)Analyze production\n0)Stop\nSelect an Item:\n");
        scanf("%d", &choice);
        switch (choice)
        {
        case 1:
            clear(head);
            printf("Please enter the file name\n");
            scanf("%s", &name);
            ptr = fopen(name, "r");
            if (ptr != NULL)
            {
                fgets(buffer, 1024, ptr);
                while (!feof(ptr))
                {
                    fgets(buffer, 1024, ptr);
                    sscanf(buffer, "%[^;];%ld;%ld;%ld;%ld;%ld;%ld;%ld;%ld", e.timestamp, &e.week, &e.consumption, &e.solar, &e.wind, &e.hydro, &e.nuclear, &e.chp, &e.thermal);
                    tail = addNode(head, tail, e);
                    count++;
                    if (head == NULL)
                        head = tail;
                }
            }
            else
            {
                printf("File not found.\n");
            }
            break;
        case 2:
            if (head == NULL)
                printf("List is empty.\n");
            else
                consumption(head, count);
            break;
        case 3:
            if (head == NULL)
                printf("List is empty.\n");
            else
                production(head);
            break;
        case 0:
            clear(head);
            return 0;
        default:
            printf("Unknown option.\n");
            break;
        }
    }
}