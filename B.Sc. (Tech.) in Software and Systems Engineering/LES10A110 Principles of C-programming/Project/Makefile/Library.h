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
node *addNode(node *p_first, node *p_last, electric data);
node *clear(node *p_first);
void consumption(node *p_first, int count);
void production(node *p_first);
