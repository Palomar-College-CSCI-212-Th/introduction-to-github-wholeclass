// Module Name :	    main.c
// Description :		Calls assembly functions that prints names

#include <stdio.h>

// Prototypes
void PrintJohnDoe();
void PrintLemDavis();

void PrintWilliamKeith();
void PrintKHAN();

// Main
int main(void)
{
	PrintJohnDoe();
	PrintLemDavis();

	// Make a new function to print your name.
	// Create a new macro in your function as in the example code.
	// Your name should be printed three times.

	PrintWilliamKeith();
	PrintKHAN();

	return 0;
}