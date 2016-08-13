#include <conio.h>
#include <stdio.h>
#include <time.h>

main()
{
int num,num2,num3,num4,num5,num6;
long ahora;
srand(time(&ahora));
num=rand() %9 + 0;
num2=rand() %9 + 0;
num3=rand() %9 + 0;
num4=rand() %9 + 0;
num5=rand() %9 + 0;
num6=rand() %9 + 0;

clrscr();
printf("\n\tNumero aleatorio de loteria: %d",num);
printf(" %d",num2);
printf(" %d",num3);
printf(" %d",num4);
printf(" %d",num5);
printf(" %d",num6);
getch();
}
