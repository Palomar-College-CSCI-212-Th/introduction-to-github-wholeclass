// Module Name :	    main.c
// Description :		Calls assembly functions that prints names

#include <stdio.h>

// Prototypes
void PrintMattAffa();
void PrintLemDavis();
void PrintJustinVanBibber();

void PrintWilliamKeith();
void PrintKHAN();

// Main
int main(void)
{
	PrintJohnDoe();
	PrintLemDavis();
	PrintMattAffa();

	// Make a new function to print your name.
	// Create a new macro in your function as in the example code.
	// Your name should be printed three times.

	PrintWilliamKeith();
	PrintKHAN();

	return 0;
}