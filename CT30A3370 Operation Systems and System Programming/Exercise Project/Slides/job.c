#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
//const int MAXJOB=50; // maximum number of jobs
#define MAXJOB 50
//data structure of jobs
typedef struct node
{
	int number; // job number
	int reach_time;// arrival time
	int need_time;// execution time
	int privilege;// priority
	float excellent;// response ratio
	int start_time;// start time
	int wait_time;// waiting time
	int visited;// if the job is accessed
	bool isreached;// if the job has arrived
} job;
job jobs[MAXJOB];//job sequence
int quantity;//number of jobs
//initialize job sequence
void initial_jobs()
{
	int i;
	for(i=0;i<MAXJOB;i++)
	{
		jobs[i].number=0;
		jobs[i].reach_time=0;
		jobs[i].privilege=0;
		jobs[i].excellent=0;
		jobs[i].start_time=0;
		jobs[i].wait_time=0;
		jobs[i].visited=0;
		jobs[i].isreached=false;
	}
	quantity=0;
}
//reset all job information
void reset_jinfo() 
{ 
	int i; 
	for(i=0;i<MAXJOB;i++)
	{ 
		jobs[i].start_time=0; 
		jobs[i].wait_time=0; 
		jobs[i].visited=0; 
	}
}
// Find the shortest job that has reached but not yet been executed. If not return -1
int findminjob(job jobs[],int count)
{
	int minjob=-1;//=jobs[0].need_time;
	int minloc=-1;
	for(int i=0;i<count;i++)
	{
		if(minloc==-1){
			if(	 jobs[i].isreached==true && jobs[i].visited==0){
			minjob=jobs[i].need_time;
			minloc=i;
			}
		}
		else if(minjob>jobs[i].need_time&&jobs[i].visited==0&&jobs[i].isreached==true)
		{
			minjob=jobs[i].need_time;
			minloc=i;
		}
	}
	return minloc;
}
//Find the job that arrived ealiest
int findrearlyjob(job jobs[],int count)
{
	int rearlyloc=-1;
	int rearlyjob=-1;
	for(int i=0;i<count;i++)
	{
		if(rearlyloc==-1){
			if(jobs[i].visited==0){
			rearlyloc=i;
			rearlyjob=jobs[i].reach_time;
			}
		}
		else if(rearlyjob>jobs[i].reach_time&&jobs[i].visited==0)
		{
			rearlyjob=jobs[i].reach_time;
			rearlyloc=i;
		}
	}
	return rearlyloc;
}
//read all job data
void readJobdata()
{
	FILE *fp;
	char fname[20];
	int i;
    //input the name of test file
	printf("please input job data file name\n");
	scanf("%s",fname);
	if((fp=fopen(fname,"r"))==NULL)
	{
		printf("error, open file failed, please check filename:\n");
	}
	else
	{
		//read job information sequentially
		while(!feof(fp))
		{
	if(fscanf(fp,"%d %d %d %d",&jobs[quantity].number,&jobs[quantity].reach_time,&jobs[quantity].need_time,&jobs[quantity].privilege)==4)
			quantity++;
		}
		//print job information
		printf("output the origin job data\n");
		printf("---------------------------------------------------------------------\n");
		printf("\tjobID\treachtime\tneedtime\tprivilege\n");
		for(i=0;i<quantity;i++)
		{
	printf("\t%-8d\t%-8d\t%-8d\t%-8d\n",jobs[i].number,jobs[i].reach_time,jobs[i].need_time,jobs[i].privilege);
		}
	}
}
//FCFS
void FCFS() 
{ 
	int i; 
	int current_time=0;
	int loc;
	int total_waitime=0;
	int total_roundtime=0;
	loc=findrearlyjob(jobs,quantity);
	//print job stream
	printf("\n\nFCFS job stream\n");
	printf("------------------------------------------------------------------------\n"); 
	printf("\tjobID\treachtime\tstarttime\twaittime\troundtime\n");
	current_time=jobs[loc].reach_time; 
	// Each loop finds the first arriving job and prints information about it
	for(i=0;i<quantity;i++)
	{ 
		if(jobs[loc].reach_time>current_time)
		{
			jobs[loc].start_time=jobs[loc].reach_time;
			current_time=jobs[loc].reach_time;
		}
		else
		{
			jobs[loc].start_time=current_time;
		}
		jobs[loc].wait_time=current_time-jobs[loc].reach_time; 
	printf("\t%-8d\t%-8d\t%-8d\t%-8d\t%-8d\n",loc+1,jobs[loc].reach_time,jobs[loc].start_time,jobs[loc].wait_time,
			jobs[loc].wait_time+jobs[loc].need_time);
		jobs[loc].visited=1;
		current_time+=jobs[loc].need_time;
		total_waitime+=jobs[loc].wait_time; 
		total_roundtime=total_roundtime+jobs[loc].wait_time+jobs[loc].need_time;
		// Get the first arriving job among the remaining jobs
		loc=findrearlyjob(jobs,quantity);
	} 
	printf("total waiting time:%-8d total turnaround time:%-8d\n", total_waitime, total_roundtime); 
	printf("average waiting time: %4.2f average turnaround time: %4.2f\n", (float)total_waitime/(quantity),(float)total_roundtime/(quantity)); 
}
// Shortest-Job-First Scheduling algorithm.
void SFJschdulejob(job jobs[],int count)
{
	
}
// Highest Response Ratio Next
//response ratio=turnaround time/execution time
void HRRFschdulejob() 
{
}
// Priority scheduling algorithm
void HPF(job jobs[])
{

}

void main() 
{  
	initial_jobs(); 
	readJobdata(); 
	FCFS();
	reset_jinfo();
	SFJschdulejob(jobs, quantity);
	system("pause");
	//return 0;
}
