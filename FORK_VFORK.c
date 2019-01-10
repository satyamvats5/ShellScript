/*     Write a C program that will create a child 	*/
/*       process using the fork( ). Then modify the 	*/
/*       value of a globally defined variable from	*/ 
/*       the child process and print the value of 	*/
/*       the variable from the parent process. Repeat	*/
/*       the same process using the vfork( ) 		*/
//       Author: Satyam Kumar[satyamvats5@gmailcom]

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{	
	int a = 10;
	int parent_id = getpid();
	printf("Id of parent before process creation: %d.\nGoing to greate  a process using vfork(), and initial value of variable before process creation : %d\n", parent_id, a);
	pid_t pid = vfork();
	if(pid == 0) {
		a++;
		printf("V-Fork: I am the Child with Process-ID: %d, and Parent process-ID: %d\n", getpid(), getppid());
		printf("\t\tvalue of variable: %d\n", a);
		exit(1);
	} else {
		a+=2;
		printf("V-Fork: I am the Parent, with Process-ID = %d, and child process ID : %d\n", getpid(), pid);
		printf("\t\tvalue of variable: %d\n",a);
	}

	int b = 10;
	printf("Going to create a process using fork(), and initial value of varible is %d\n",  b);
	pid_t p2= fork();
	if(p2 == 0) {
		b++;
		printf("Fork: I am Child process with Process-ID = %d, and parent process Id : %d\n", getpid(), getppid());
		printf("\t\tValue of variable_2: %d\n", b);
	} else {
		wait(NULL);
		b += 2;
		printf("Fork: I am Parent process with Process-ID = %d, and child process Id : %d\n", getpid(), p2);
		printf("\t\tValue of variable_: %d\n", b);
	}
	return 0;
}
