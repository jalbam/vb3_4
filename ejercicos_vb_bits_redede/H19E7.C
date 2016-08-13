#include <stdio.h>
#include <conio.h>
#include <time.h>

int num,intro,fallos;
long ahora;
char opcion;

main()
{

srand(time(&ahora));

clrscr();

printf("\n1) Un Player");
printf("\n2) Dos Players");
printf("\n3) Salir");

opcion=getch();

switch(opcion)
{
case '1':{uno();break;}
case '2':{dos();break;}
case '3':exit(0);
}

}

uno()
{

srand(time(&ahora));

clrscr();

num=rand() % 100 + 1;

printf("%d",num);

while(intro!=num)
{

printf("\nEscoge numero: ");
scanf("%d",&intro);

if(intro==num){printf("\nMuy bien!"); printf("\nIntentos: %d",fallos);getch();}
if(intro>num){printf("\nDemasiado grande");fallos++;getch();}
if(intro<num){printf("\nDemasiado peque¤o");fallos++;getch();}

}

}

dos()
{
clrscr();

printf("Pon el numero secreto: ");
scanf("%d",&num);
clrscr();

printf("%d",num);

while(intro!=num)
{

printf("\nEscoge numero: ");
scanf("%d",&intro);

if(intro==num){printf("\nMuy bien!"); printf("\nIntentos: %d",fallos);getch();}
if(intro>num){printf("\nDemasiado grande");fallos++;getch();}
if(intro<num){printf("\nDemasiado peque¤o");fallos++;getch();}
}
}
