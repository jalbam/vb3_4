#include <stdio.h>
#include <conio.h>
#include <time.h>

main()
{
int veces,moneda,x;
long ahora;
srand(time(&ahora));

clrscr();
printf("Introduce numero de veces: ");
scanf("%d",&veces);
for(x=veces;x>0;x--)
{
moneda=rand() % 2 + 0;
if(moneda==1) {
printf("\nCARA");
}
else {printf("\nCRUZ");}

getch();
}
}