#include<stdio.h>
#include<conio.h>

main()
{
/*Pinta la pantalla de azul*/
textbackground(9);
clrscr();
getch();
window(20,5,40,10);	/*Reduce la pantalla a las coordenadas 20c, 5l y 40c, 10l*/
/*Pinta la nueva pantalla de negro*/
textbackground(0);
clrscr();
gotoxy(10,5);printf("Hola");
getch();
window(1,1,80,25);	/*Agranda la pantalla a su estado inicial*/
/*Pinta la pantalla nuevamente de azul*/
textbackground(9);
clrscr();
getch();
}