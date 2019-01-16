/*	
	Write a c program that will create the processes 
	according to the following tree structure.
	Then print the process id and parent process id
	of all the processes.
	
			structure :-
				A(Root)
		B(parent:- A) 				C(parent:- A)
	D(parent:- B) 		E(parent:- B) 			F(parent:- C)

*/

#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{
	int T1, T2;
	printf("PPID: %lu, PID: %lu, Process A ...(i.e Parent Process created)\n", (long unsigned) getppid(), (long unsigned) getpid());
	if(fork() == 0) {
		printf("PPID: %lu, PID: %lu, Process C... (i.e Child of Process A created)\n", (long unsigned) getppid(), (long unsigned) getpid());
		if(fork() == 0) {
			printf("PPID: %lu, PID: %lu, Process F...(i.e child of process C cteated)\n", (long unsigned) getppid(), (long unsigned) getpid());
		}
		wait(NULL);
	} else if(fork() == 0) {
		printf("PPID: %lu, PID: %lu, Process B...(i.e child of process A created)\n",(long unsigned) getppid(), (long unsigned) getpid());
		if(fork() == 0) {
			printf("PPID: %lu, PID: %lu, Process D...(i.e child of process B created)\n", (long unsigned) getppid(), (long unsigned) getpid());
		} else if(fork() == 0) {
			printf("PPID: %lu, PID: %lu, Process E...(i.e child of process B created)\n", (long unsigned) getppid(), (long unsigned) getpid());
		}
		wait(NULL);
	}
	wait(NULL);
	return 0;
}

