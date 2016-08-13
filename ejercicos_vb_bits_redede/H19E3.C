#include <conio.h>
#include <stdio.h>
#include <time.h>

main()
{

int moneda,caras,cruces,consecutivas,x;
long ahora;

srand(time(&ahora));

clrscr();

printf("Comprobando...");

while (consecutivas<4)
{
/* srand(time(&ahora)); */

moneda=rand() % 2 + 0;

if (moneda==1) {caras++; consecutivas++;}
else {cruces++;consecutivas=0;}

gotoxy(4,5);printf("Caras: %d",caras);
gotoxy(4,6);printf("Cruces: %d",cruces);
gotoxy(4,7);printf("Caras Consecutivas: %d",consecutivas);
}

gotoxy(6,9);printf("\nNumero de Caras: %d",caras);
gotoxy(6,10);printf("\nNumero de Cruces: %d",cruces);
getch();

}