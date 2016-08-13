#include <string.h>
#include <stdio.h>
#include <conio.h>


		/*  Programa Fuente Compilado en Turbo C */
	  /* Instituto de Informatica Aplicada BIT's */
	/* Pruebas con Ventanas: Hoja 17, Ejercicio 1 */
		 /* -> Simulador de un Supermercado <- */
					 /* Borland Turbo C */

char categoria[30], producto[30],ventanuco_principal[6800],ventanuco[6800];
float pvp,compra,precio;
float total,pagar,pagarlo;
int quedan,quedan2;
int quedan_ternera=100,quedan_cerdo=20,quedan_avestruz=30,quedan_mero=80,quedan_merluza=100,quedan_sardina=10,quedan_sandia=60,quedan_melon=15,quedan_naranjas=3,quedan_coliflor=33,quedan_ajos=95,quedan_cebollines=66;

main()
{
	textbackground(1);
	textcolor(10+128);
	clrscr();
	gotoxy(33,2);cprintf("Supermercado");
	textcolor(14);
	gotoxy(21,16);cprintf("Programa Simulador de un Supermercado\a");
	window(31,5,49,12);textbackground(0);clrscr();
	window(30,4,48,11);textbackground(4);textcolor(2);clrscr();
	gotoxy(2,2);cprintf("  1) ");
	textcolor(11);cprintf("Carnes");
	textcolor(2);
	gotoxy(2,3);cprintf("  2) ");
	textcolor(11);
	cprintf("Pescados");
	textcolor(2);
	gotoxy(2,4);cprintf("  3) ");
	textcolor(11);
	cprintf("Frutas");
	textcolor(2);
	gotoxy(2,5);cprintf("  4) ");
	textcolor(11);
	cprintf("Verduras");
	textcolor(2);
	gotoxy(2,7);cprintf("  5) ");
	textcolor(13);
	cprintf("CAJA");
	textcolor(14);
	cprintf("/");
	textcolor(13);
	cprintf("Pagar");
	gettext(1,1,80,25,ventanuco_principal);
	menu2();

}

menu2()
{
	char opcion;
	puttext(1,1,80,25,ventanuco_principal);
	opcion=getche();

	switch(opcion)
		{
		case '1':{carnes();break;}
		case '2':{pescados();break;}
		case '3':{frutas();break;}
		case '4':{verduras();break;}
		case '5':{caja();break;}
		default:main();
		}

	main();
}

carnes2()
{
puttext(1,1,80,25,ventanuco);
carnes();
}
carnes()
{

   char opcion;
	window(36,4,52,10);textbackground(0);clrscr();
	window(35,3,51,9);textbackground(5);textcolor(4);clrscr();
	gotoxy(2,2);printf("1) Ternera");
	gotoxy(2,3);printf("2) Cerdo");
	gotoxy(2,4);printf("3) Avestruz");
	textcolor(7);
	gotoxy(2,7);cprintf("4) Volver");
	opcion=getch();
   gettext(1,1,80,25,ventanuco);
	switch(opcion)
	{
		case '1':{ternera();break;}
		case '2':{cerdo();break;}
		case '3':{avestruz();break;}
		case '4':{menu2();break;}
		default:carnes();
	}
}

ternera()
{
   char opcion;
	quedan=quedan_ternera;
	strcpy(categoria,"Carnes");
	strcpy(producto,"Ternera");
	pvp=500;

	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
	gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 500");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{carnes2();break;}
		default:ternera();
		}
}

cerdo()
{
   char opcion;
	quedan=quedan_cerdo;
	strcpy(categoria,"Carnes");
	strcpy(producto,"Cerdo");
	pvp=600;

	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
	gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 600");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{carnes2();break;}
		default:cerdo();
		}
}

avestruz()
{
   char opcion;
	quedan=quedan_avestruz;
	strcpy(categoria,"Carnes");
	strcpy(producto,"Avestruz");
	pvp=800;

	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 800");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{carnes2();break;}
		default:avestruz();
		}
}

pescados2()
{
puttext(1,1,80,25,ventanuco);
pescados();
}
pescados()
{
   char opcion;
	window(36,4,52,10);textbackground(0);clrscr();
	window(35,3,51,9);textbackground(5);textcolor(4);clrscr();
	gotoxy(2,2);printf("1) Mero");
	gotoxy(2,3);printf("2) Merluza");
	gotoxy(2,4);printf("3) Sardina");
	textcolor(7);
	gotoxy(2,7);cprintf("4) Volver");
	opcion=getch();
   gettext(1,1,80,25,ventanuco);
	switch(opcion)
		{
		case '1':{mero();break;}
		case '2':{merluza();break;}
		case '3':{sardina();break;}
		case '4':{menu2();break;}
		default:pescados();
		}

}

mero()
{
   char opcion;
	quedan=quedan_mero;
	strcpy(categoria,"Pescado");
	strcpy(producto,"Mero");
	pvp=460;

	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 460");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{pescados2();break;}
		default:mero();
		}
}

merluza()
{
   char opcion;
	quedan=quedan_merluza;
	strcpy(categoria,"Pescado");
	strcpy(producto,"Merluza");
	pvp=720;

	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 720");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{pescados2();break;}
		default:merluza();
		}
}

sardina()
{
   char opcion;
	quedan=quedan_sardina;
	strcpy(categoria,"Pescado");
	strcpy(producto,"Sardina");
	pvp=300;

	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 300");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{pescados2();break;}
		default:sardina();
		}
}

frutas2()
{
puttext(1,1,80,25,ventanuco);
frutas();
}
frutas()
{
   char opcion;
	window(36,4,52,10);textbackground(0);clrscr();
	window(35,3,51,9);textbackground(5);textcolor(4);clrscr();
	gotoxy(2,2);printf("1) Naranja");
	gotoxy(2,3);printf("2) Sandia");
	gotoxy(2,4);printf("3) Melon");
	textcolor(7);
	gotoxy(2,7);cprintf("4) Volver");
	opcion=getch();
   gettext(1,1,80,25,ventanuco);
	switch(opcion)
		{
		case '1':{naranja();break;}
		case '2':{sandia();break;}
		case '3':{melon();break;}
		case '4':{menu2();break;}
		default:frutas();
		}
}

naranja()
{
   char opcion;
	quedan=quedan_naranjas;
	strcpy(categoria,"Frutas");
	strcpy(producto,"Naranja");
	pvp=199;

	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 199");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{frutas2();break;}
		default:naranja();
		}
}

sandia()
{
   char opcion;
	quedan=quedan_sandia;
	strcpy(categoria,"Frutas");
	strcpy(producto,"Sandia");
	pvp=799;


	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 799");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{frutas2();break;}
		default:sandia();
		}
}

melon()
{
   char opcion;
	quedan=quedan_melon;
	strcpy(categoria,"Frutas");
	strcpy(producto,"Melon");
	pvp=590;


	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 590");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{frutas2();break;}
		default:melon();
		}
}
verduras2()
{
puttext(1,1,80,25,ventanuco);
verduras();
}

verduras()
{
	char opcion;
	window(36,4,52,10);textbackground(0);clrscr();
	window(35,3,51,9);textbackground(5);textcolor(4);clrscr();
	gotoxy(2,2);printf("1) Coliflor");
	gotoxy(2,3);printf("2) Ajos");
	gotoxy(2,4);printf("3) Cebollines");
	textcolor(7);
	gotoxy(2,7);cprintf("4) Volver");
	opcion=getch();
   gettext(1,1,80,25,ventanuco);
	switch(opcion)
		{
		case '1':{coliflor();break;}
		case '2':{ajos();break;}
		case '3':{cebollines();break;}
		case '4':{menu2();break;}
		default:verduras();
		}
}

coliflor()
{
   char opcion;
	quedan=quedan_coliflor;
	strcpy(categoria,"Verduras");
	strcpy(producto,"Coliflor");
	pvp=99;


	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 99");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{verduras2();break;}
		default:coliflor();
		}
}

ajos()
{
   char opcion;
	quedan=quedan_ajos;
	strcpy(categoria,"Verduras");
	strcpy(producto,"Ajos");
	pvp=275;


	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 275");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{verduras2();break;}
		default:ajos();
		}
}

cebollines()
{
   char opcion;
	quedan=quedan_cebollines;
	strcpy(categoria,"Verduras");
	strcpy(producto,"Cebollines");
	pvp=320;


	window(32,3,49,8);textbackground(0);clrscr();
	window(31,2,48,7);textbackground(6);textcolor(4);clrscr();
   gotoxy(2,1);printf("Kg Rest.: %d",quedan);
	gotoxy(2,2);printf("PTS/Kg: 320");
	gotoxy(2,5);printf("1) Comprar");
	gotoxy(2,6);printf("2) Volver");
	opcion=getch();

	switch(opcion)
		{
		case '1':{comprar();break;}
		case '2':{verduras2();break;}
		default:cebollines();
		}
}

comprar()
{
	window(28,7,51,12);textbackground(0);clrscr();
	window(27,6,50,11);textbackground(11);textcolor(4);clrscr();
	clrscr();
	gotoxy(2,2);printf("Categoria: %s",categoria);
	gotoxy(2,3);printf("Producto: %s",producto);
	gotoxy(2,4);printf("PTS/Kg: %.1f",pvp);
	gotoxy(2,5);printf("Kg Rest.: %d",quedan);

   textcolor(3);
	gotoxy(2,6);printf("Kilos a comprar: ");
	scanf("%f",&compra);

	if(strcmp(producto,"Ternera")==0)
		{
		quedan2=quedan-compra;
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();carnes2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_ternera=0;carnes2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_ternera=quedan-compra;carnes2();}
		}

	if(strcmp(producto,"Cerdo")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();carnes2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_cerdo=0;carnes2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_cerdo=quedan-compra;carnes2();}
		}

	if(strcmp(producto,"Avestruz")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();carnes2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_avestruz=0;carnes2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_avestruz=quedan-compra;carnes2();}
		}

	if(strcmp(producto,"Mero")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();pescados2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_mero=0;pescados2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_mero=quedan-compra;pescados2();}
		}

		if(strcmp(producto,"Sardina")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();pescados2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_sardina=0;pescados2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_sardina=quedan-compra;pescados2();}
		}

		if(strcmp(producto,"Merluza")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();pescados2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_merluza=0;pescados2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_merluza=quedan-compra;pescados2();}
		}

		if(strcmp(producto,"Sandia")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();frutas2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_sandia=0;frutas2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_sandia=quedan-compra;frutas2();}
		}

		if(strcmp(producto,"Melon")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();frutas2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_melon=0;frutas2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_melon=quedan-compra;frutas2();}
		}

		if(strcmp(producto,"Naranjas")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();frutas2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_naranjas=0;frutas2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_naranjas=quedan-compra;frutas2();}
		}

		if(strcmp(producto,"Coliflor")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();verduras2();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_coliflor=0;verduras2();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_coliflor=quedan-compra;verduras2();}
		}

		if(strcmp(producto,"Ajos")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();verduras();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_ajos=0;verduras();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_ajos=quedan-compra;verduras();}
		}

		if(strcmp(producto,"Cebollines")==0)
		{
		gotoxy(2,7);
		if(quedan<compra){printf("Insuficientes Kilos");getch();verduras();}
		if(quedan==compra){printf("Acabas de llevarte los ultimos que quedaban");getch();quedan_cebollines=0;verduras();}
		if(quedan>compra){printf("Ahora solo quedan: %d",quedan2);getch();quedan_cebollines=quedan-compra;verduras();}
		}

	textcolor(3);
	gotoxy(2,6);printf("Kilos a comprar: ");
	scanf("%f",&compra);
	precio=compra*pvp;
	total=total+precio;
	printf("Fin de compra, vuelta al menu...");
		if(strcmp(categoria,"Carnes")==0){carnes2();}
		if(strcmp(categoria,"Pescado")==0){pescados2();}
		if(strcmp(categoria,"Frutas")==0){frutas2();}
		if(strcmp(categoria,"Verduras")==0){verduras2();}
	getch();
}

caja()
{
	window(28,12,61,19);textbackground(0);clrscr();
	window(27,11,60,18);textbackground(3);textcolor(4);clrscr();
	gotoxy(2,2);printf("Cantidad Total a Pagar: %.1f",total-pagarlo);
		if(total==0){gotoxy(2,5);cprintf("Cantidad a pagar nula. Adios.");getch();exit(0);}
	gotoxy(2,4);printf("Pagar: ");
	scanf("%f",&pagar);
      pagarlo=pagarlo+pagar;
		textcolor(8);
		if(total==0){gotoxy(2,5);cprintf("Cantidad a pagar nula. Adios.");getch();exit(0);}
		if(pagarlo==total){gotoxy(2,5);cprintf("Muy bien, importe extacto. Adios.");getch();exit(0);}
		if(pagarlo>total){gotoxy(2,5);cprintf("Cambio: %.1f; Buena compra, adios.",pagarlo-total);getch();exit(0);}
		if(pagarlo<total){gotoxy(2,5);cprintf("Error! Evita pagar a plazos. Continua pagando.");getch();caja();}
	getch();
}

/* Fin del Programa  */