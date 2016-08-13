#include <stdio.h>
#include <conio.h>
#include <time.h>

main()
{

int uno=0,dos=0,tres=0,cuatro=0,cinco=0,seis=0,dado=0,x=0,conse=0;
long ahora;

srand(time(&ahora));
clrscr();


while(conse<3)
{
dado=rand() %6 +1;

if(dado==1){uno++;conse=0;printf("\tUNO");}
if(dado==2){dos++;conse=0;printf("\tDOS");}
if(dado==3){tres++;conse=0;printf("\tTRES");}
if(dado==4){cuatro++;conse=0;printf("\tCUATRO");}
if(dado==5){cinco++;conse=0;printf("\tCINCO");}
if(dado==6){seis++;conse++;printf("\tSEIS");}
}
getch();
clrscr();

printf("\nUNO: %d",uno);
printf("\nDOS: %d",dos);
printf("\nTRES: %d",tres);
printf("\nCUATRO: %d",cuatro);
printf("\nCINCO: %d",cinco);
printf("\nSEIS: %d",seis);
getch();
}