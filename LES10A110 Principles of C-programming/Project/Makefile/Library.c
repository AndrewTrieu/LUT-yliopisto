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

// Electric struct, with each attribute corresponds to each column in the csv file

struct Electric
{
    char timestamp[20];
    int week;
    long int consumption;
    long int solar;
    long int wind;
    long int hydro;
    long int nuclear;
    long int chp;
    long int thermal;
};
typedef struct Electric electric;

// Node struct for linked list

struct Node
{
    electric data;
    struct Node *next;
};
typedef struct Node node;

// Add new node to linked list

node *addNode(node *p_first, node *p_last, electric data)
{
    node *new = (node *)malloc(sizeof(node));
    new->data = data;
    new->next = NULL;
    if (p_first == NULL)
    {
        p_last = new;
    }
    else
    {
        p_last->next = new;
        p_last = new;
    }
    return (p_last);
}

// Print linked list function, implemented for testing, not in use

// void print(node *p_first, char name[])
// {
//     FILE *f;
//     f = fopen(name, "w");
//     for (node *itr = p_first; itr != NULL; itr = itr->next)
//     {
//         if (itr->data.timestamp != NULL && itr->next->data.timestamp != NULL)
//             fprintf(f, "%s %d\n", itr->data.timestamp, itr->data.consumption);
//     }
//     fclose(f);

//     return;
// }

// Clear linked list function

node *clear(node *p_first)
{
    node *itr = p_first;
    while (itr != NULL)
    {
        p_first = itr->next;
        free(itr);
        itr = p_first;
    }
    return (p_first);
}

// Consumption function to calculate total, average, highest and lowest consumption. The function iterates through the linked list, summing comparing all consumption values

void consumption(node *p_first, int count)
{
    long long int total = 0;
    FILE *f, *h;
    node *max = p_first;
    node *min = p_first;
    char line[1024];
    f = fopen("consumption.txt", "w");
    for (node *itr = p_first; itr != NULL; itr = itr->next)
    {
        if (itr->data.timestamp != NULL && itr->next->data.timestamp != NULL)
        {
            total += itr->data.consumption;
            if (max->data.consumption < itr->next->data.consumption)
            {
                max = itr;
            }
            if (min->data.consumption > itr->data.consumption)
            {
                min = itr;
            }
        }
    }
    // Remove extra zeros from timestamp
    char maxtime[20], mintime[20];
    strcpy(maxtime, max->data.timestamp);
    strcpy(mintime, min->data.timestamp);
    memmove(&maxtime[3], &maxtime[4], strlen(maxtime) - 3);
    memmove(&maxtime[10], &maxtime[11], strlen(maxtime) - 10);
    memmove(&mintime[3], &mintime[4], strlen(mintime) - 3);
    memmove(&mintime[10], &mintime[11], strlen(mintime) - 10);
    fprintf(f, "Statistics on %d measurements:\n", count);
    fprintf(f, "Consumption totaled %lld kWh, and averaged %.1f kWh.\n", total, ((double)total) / ((double)count));
    fprintf(f, "The highest consumption, %ld kWh, occurred on %s.\n", max->data.consumption, maxtime);
    fprintf(f, "The lowest consumption, %ld kWh, occurred on %s.", min->data.consumption, mintime);
    fclose(f);
    h = fopen("consumption.txt", "r");
    while (fgets(line, 1024, h) != NULL)
    {
        printf("%s", line);
    }
    printf("\n");
    fclose(h);
}

// Production function iterates thorugh the linked list and sums the total production per week for all types of electricity production

void production(node *p_first)
{
    FILE *f;
    long double solar = 0, wind = 0, hydro = 0, nuclear = 0, chp = 0, thermal = 0;
    f = fopen("production.csv", "w");
    fprintf(f, "Week;Solar power;Wind power;Hydropower;Nuclear power;CHP;Thermal power\n");
    int week;
    for (node *itr = p_first; itr != NULL; itr = itr->next)
    {
        if (itr->next->data.timestamp != NULL)
        {
            week = itr->data.week;
            solar += ((long double)itr->data.solar) / 1000000;
            wind += ((long double)itr->data.wind) / 1000000;
            hydro += ((long double)itr->data.hydro) / 1000000;
            nuclear += ((long double)itr->data.nuclear) / 1000000;
            chp += ((long double)itr->data.chp) / 1000000;
            thermal += ((long double)itr->data.thermal) / 1000000;
            if (week != itr->next->data.week)
            {
                fprintf(f, "Week %d;%.2Lf;%.2Lf;%.2Lf;%.2Lf;%.2Lf;%.2Lf\n", week, solar, wind, hydro, nuclear, chp, thermal);
                solar = 0;
                wind = 0;
                hydro = 0;
                nuclear = 0;
                chp = 0;
                thermal = 0;
            }
        }
        else
        {
            fprintf(f, "Week %d;%.2Lf;%.2Lf;%.2Lf;%.2Lf;%.2Lf;%.2Lf\n", week, solar, wind, hydro, nuclear, chp, thermal);
        }
    }
    fclose(f);
}
