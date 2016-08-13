#include <stdio.h>
#include <conio.h>
#include <time.h>

int a=0,b=0,respingo=0,fallos=0,aciertos=0;
long ahora;
char opcion;

main()
{

srand(time(&ahora));

clrscr();

printf("\n\t\t1) Sumas");
printf("\n\t\t2) Restas");
printf("\n\t\t3) Multiplicaciones");
printf("\n\t\t4) Salir");
printf("\n\n\tFallos: %d, Aciertos: %d",fallos,aciertos);
opcion=getch();

switch(opcion)
{
case '1':{sumas();break;}
case '2':{restas();break;}
case '3':{multi();break;}
case '4':exit(0);
}

}

sumas()
{

clrscr();

a=rand() % 10 + 1;
b=rand() % 10 + 1;

printf("\n%d + %d = ",a,b);
scanf("%d",&respingo);

if(respingo==a+b) {printf("Muy bien!");aciertos++;}
else {printf("Muy mal!");fallos++;}
getch();

main();

}

restas()
{

clrscr();

a=rand() % 10 + 1;
b=rand() % 10 + 1;

printf("\n%d - %d = ",a,b);
scanf("%d",&respingo);

if(respingo==a-b) {printf("Muy bien!");aciertos++;}
else {printf("Muy mal!");fallos++;}
getch();

main();

}

multi()
{

clrscr();

a=rand() % 10 + 1;
b=rand() % 10 + 1;

printf("\n%d x %d = ",a,b);
scanf("%d",&respingo);

if(respingo==a*b) {printf("Muy bien!");aciertos++;}
else {printf("Muy mal!");fallos++;}
getch();

main();

}
