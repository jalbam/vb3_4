#include <stdio.h>
#include <stdlib.h> /* Libreria que contiene el comando strand y rand */
#include <ctype.h> /* Libreria que contiene el comando troupper */
#include <time.h> /* Libreria qye contiene el comando time */


main()
{
int num_alea, usua_num, num_int;
char tecla;
long ahora;
srand(time(&ahora));

clrscr();
do {
printf("\n\nJuego de Adivinar numeros\n");
printf("Pulse J(jugar) o S(salir): ");
tecla=toupper(getche());
if(tecla=='J')
{
num_alea=rand() % 100 + 1;
num_int=usua_num=0;
while(usua_num !=num_alea)
{
printf("\n\Intento #%d.",++num_int);
printf("\nEscriba un numero del 1 al 100: ");
scanf("%i",&usua_num);
if(usua_num>num_alea)
printf("Demasiado grande!");
else if(usua_num<num_alea)
printf("Demasiado peque¤o!");
}
printf("\n\nLO HAS ADIVINADO EN %d INTENTOS!\n",num_int);
}
}while(tecla !='S');
}