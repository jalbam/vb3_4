#include <stdio.h>
#include <conio.h>

char opcion;
int mes_nacimiento=0,dia_nacimiento=0,ano_nacimiento=0;
int mes_actual=0,dia_actual=0,ano_actual=0;
int meses=0,dias=0,anos=0,x=0;
/*int a=0;*/

main()
{
textbackground(8);
clrscr();
window(26,5,50,5);textbackground(6);clrscr();
textcolor(15);gotoxy(2,1);cprintf("    Tiempo de Vida");
window(26,22,50,22);textbackground(6);textcolor(14);clrscr();cprintf("    Mes de Nacimiento");
window(26,6,50,21);textbackground(3);clrscr();
textcolor(11);
gotoxy(4,2);cprintf("Seleccion de Datos");
textcolor(9);
gotoxy(8,4);cprintf("1) Enero");
gotoxy(8,5);cprintf("2) Febrero");
gotoxy(8,6);cprintf("3) Marzo");
gotoxy(8,7);cprintf("4) Abril");
gotoxy(8,8);cprintf("5) Mayo");
gotoxy(8,9);cprintf("6) Junio");
gotoxy(8,10);cprintf("7) Julio");
gotoxy(8,11);cprintf("8) Agosto");
gotoxy(8,12);cprintf("9) Septiembre");
gotoxy(7,13);cprintf("10) Octubre");
gotoxy(7,14);cprintf("11) Noviembre");
gotoxy(7,15);cprintf("12) Diciembre");
gotoxy(2,15);cprintf("\n");cprintf("Introduce: ");
scanf("%d",&opcion);
if(opcion==1){mes_nacimiento=1;dia();}
if(opcion==2){mes_nacimiento=2;dia();}
if(opcion==3){mes_nacimiento=3;dia();}
if(opcion==4){mes_nacimiento=4;dia();}
if(opcion==5){mes_nacimiento=5;dia();}
if(opcion==6){mes_nacimiento=6;dia();}
if(opcion==7){mes_nacimiento=7;dia();}
if(opcion==8){mes_nacimiento=8;dia();}
if(opcion==9){mes_nacimiento=9;dia();}
if(opcion==10){mes_nacimiento=10;dia();}
if(opcion==11){mes_nacimiento=11;dia();}
if(opcion==12){mes_nacimiento=12;dia();}
if(opcion>12 || opcion<1){main();}
}

dia()
{
textbackground(8);
clrscr();
window(26,5,50,5);textbackground(6);clrscr();
textcolor(15);gotoxy(2,1);cprintf("    Tiempo de Vida");
window(26,22,50,22);textbackground(6);textcolor(14);clrscr();cprintf("    Dia de Nacimiento");
window(26,6,50,21);textbackground(3);clrscr();
textcolor(11);
gotoxy(4,2);cprintf("Seleccion de Datos");
textcolor(9);
gotoxy(8,4);cprintf("Introduce: ");
scanf("%d",&dia_nacimiento);
ano();
}

ano()
{
textbackground(8);
clrscr();
window(26,5,50,5);textbackground(6);clrscr();
textcolor(15);gotoxy(2,1);cprintf("    Tiempo de Vida");
window(26,22,50,22);textbackground(6);textcolor(14);clrscr();cprintf("    A�o de Nacimiento");
window(26,6,50,21);textbackground(3);clrscr();
textcolor(11);
gotoxy(4,2);cprintf("Seleccion de Datos");
textcolor(9);
gotoxy(8,4);cprintf("Introduce: ");
scanf("%d",&ano_nacimiento);

mes_a();

}

mes_a()
{
textbackground(8);
clrscr();
window(26,5,50,5);textbackground(6);clrscr();
textcolor(15);gotoxy(2,1);cprintf("    Tiempo de Vida");
window(26,22,50,22);textbackground(6);textcolor(14);clrscr();cprintf("    Mes Actual");
window(26,6,50,21);textbackground(3);clrscr();
textcolor(11);
gotoxy(4,2);cprintf("Seleccion de Datos");
textcolor(9);
gotoxy(8,4);cprintf("1) Enero");
gotoxy(8,5);cprintf("2) Febrero");
gotoxy(8,6);cprintf("3) Marzo");
gotoxy(8,7);cprintf("4) Abril");
gotoxy(8,8);cprintf("5) Mayo");
gotoxy(8,9);cprintf("6) Junio");
gotoxy(8,10);cprintf("7) Julio");
gotoxy(8,11);cprintf("8) Agosto");
gotoxy(8,12);cprintf("9) Septiembre");
gotoxy(7,13);cprintf("10) Octubre");
gotoxy(7,14);cprintf("11) Noviembre");
gotoxy(7,15);cprintf("12) Diciembre");
gotoxy(2,15);cprintf("\n");cprintf("Introduce: ");
opcion=0;
scanf("%d",&opcion);
if(opcion==1){mes_actual=1;dia_a();}
if(opcion==2){mes_actual=2;dia_a();}
if(opcion==3){mes_actual=3;dia_a();}
if(opcion==4){mes_actual=4;dia_a();}
if(opcion==5){mes_actual=5;dia_a();}
if(opcion==6){mes_actual=6;dia_a();}
if(opcion==7){mes_actual=7;dia_a();}
if(opcion==8){mes_actual=8;dia_a();}
if(opcion==9){mes_actual=9;dia_a();}
if(opcion==10){mes_actual=10;dia_a();}
if(opcion==11){mes_actual=11;dia_a();}
if(opcion==12){mes_actual=12;dia_a();}
if(opcion>12 || opcion<1){mes_a();}
}

dia_a()
{
textbackground(8);
clrscr();
window(26,5,50,5);textbackground(6);clrscr();
textcolor(15);gotoxy(2,1);cprintf("    Tiempo de Vida");
window(26,22,50,22);textbackground(6);textcolor(14);clrscr();cprintf("    Dia Actual");
window(26,6,50,21);textbackground(3);clrscr();
textcolor(11);
gotoxy(4,2);cprintf("Seleccion de Datos");
textcolor(9);
gotoxy(8,4);cprintf("Introduce: ");
scanf("%d",&dia_actual);
ano_a();
}

ano_a()
{
textbackground(8);
clrscr();
window(26,5,50,5);textbackground(6);clrscr();
textcolor(15);gotoxy(2,1);cprintf("    Tiempo de Vida");
window(26,22,50,22);textbackground(6);textcolor(14);clrscr();cprintf("    A�o Actual");
window(26,6,50,21);textbackground(3);clrscr();
textcolor(11);
gotoxy(4,2);cprintf("Seleccion de Datos");
textcolor(9);
gotoxy(8,4);cprintf("Introduce: ");
scanf("%d",&ano_actual);
if(ano_actual<ano_nacimiento){printf("\a");ano_a();}

calculo();

}


calculo()
{

/*a=difftime(dia_actual,dia_nacimiento);*/
/*printf("%d",a);*/

if(mes_nacimiento>mes_actual){
meses=mes_nacimiento-mes_actual;
}

if(mes_actual>mes_nacimiento){
meses=mes_actual-mes_nacimiento;
}


if(dia_nacimiento>dia_actual){
dias=dia_nacimiento-dia_actual;
}

if(dia_actual>dia_nacimiento){
dias=dia_actual-dia_nacimiento;
}


if(ano_nacimiento>ano_actual){
anos=ano_nacimiento-ano_actual;
}

if(ano_actual>ano_nacimiento){
anos=ano_actual-ano_nacimiento;
}


/*Paso de meses a dias*/

x=0;

if(mes_nacimiento>mes_actual){
for(x=mes_actual;x!=mes_nacimiento;x++)
{
if(x==1){dias=dias+31;}
if(x==2){dias=dias+28;}
if(x==3){dias=dias+31;}
if(x==4){dias=dias+30;}
if(x==5){dias=dias+31;}
if(x==6){dias=dias+30;}
if(x==7){dias=dias+31;}
if(x==8){dias=dias+31;}
if(x==9){dias=dias+30;}
if(x==10){dias=dias+31;}
if(x==11){dias=dias+30;}
if(x==12){dias=dias+31;}
}
}

x=0;

if(mes_nacimiento<mes_actual){
for(x=mes_nacimiento;x!=mes_actual;x++)
{
if(x==1){dias=dias+31;}
if(x==2){dias=dias+28;}
if(x==3){dias=dias+31;}
if(x==4){dias=dias+30;}
if(x==5){dias=dias+31;}
if(x==6){dias=dias+30;}
if(x==7){dias=dias+31;}
if(x==8){dias=dias+31;}
if(x==9){dias=dias+30;}
if(x==10){dias=dias+31;}
if(x==11){dias=dias+30;}
if(x==12){dias=dias+31;}
}
}

if(mes_nacimiento>mes_actual) {

if(dia_nacimiento>dia_actual){
anos-=1; }

}

if(mes_nacimiento==mes_actual){
if(dia_actual>dia_nacimiento){dias=dias+(dia_actual-dia_nacimiento);}
if(dia_actual<dia_nacimiento){dias=dias-(dia_nacimiento-dia_actual);}
}

/*Descomposicion de A�os a Dias*/
clrscr();
dias=dias+anos*365;

gotoxy(2,2);cprintf("Dias de Vida: %d",dias);
getch();
exit(0);
}