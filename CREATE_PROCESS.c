/* Create a child process using fork(), and print the details of */ 
/* Child process and parent process. */
/* Author :- Satyam Kumar [satyamvats5@gmail.com] */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>

int main()
{	
	int parent_id = getpid();
	printf("Id of parent before process creation: %d\n", parent_id);
	pid_t pid = fork();
	if(pid == 0) {
		printf("I am the Child with Process-ID: %d, and Parent process-ID: %d\n", getpid(), getppid());
	} else {
		printf("I am the Parent, with Process-ID = %d, and child process id : %d\n", getpid(), pid);
	}
	return 0;
}
