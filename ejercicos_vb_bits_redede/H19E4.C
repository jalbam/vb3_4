#include <stdio.h>
#include <conio.h>
#include <time.h>

main()
{

int uno=0,dos=0,tres=0,cuatro=0,cinco=0,seis=0,dado=0,n=0,x=0;
long ahora;

srand(time(&ahora));
clrscr();
printf("Introduce el numero de lanzamientos: ");
scanf("%d",&n);

for(x=0;n>0;n--)
{
dado=rand() %6 +1;
if(dado==1){uno++;}
if(dado==2){dos++;}
if(dado==3){tres++;}
if(dado==4){cuatro++;}
if(dado==5){cinco++;}
if(dado==6){seis++;}
}
printf("\nUNO: %d",uno);
printf("\nDOS: %d",dos);
printf("\nTRES: %d",tres);
printf("\nCUATRO: %d",cuatro);
printf("\nCINCO: %d",cinco);
printf("\nSEIS: %d",seis);
getch();
}