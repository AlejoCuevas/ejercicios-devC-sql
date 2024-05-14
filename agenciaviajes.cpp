#include<stdio.h>
int bolvend, i, minboletos, destino, cont_nacional, boletos, max_pasajeros, cont_internacional;
float porc;
main()
{
	printf("Ingrese su destino 1 nacional, 2 internacional: \n");
	scanf("%d", &destino);
	
	while(destino != 2 && destino != 1 && destino != 0)
	{
		printf("Ingrese su destino 1 nacional, 2 internacional: \n");
	scanf("%d", &destino);
	}
	if(destino ==1)
	{
		cont_nacional += 1;
	}
	if(destino ==2)
	{
		cont_internacional = cont_internacional + 1;
		if(boletos < minboletos) 
		{
			minboletos = boletos;
		}
	}
	if(destino == 0)
	{ 
	printf("Programa finalizado");

	}
	while (i < 10 && destino !=0)
	{
		        printf("Cantidad de pasajeros que viajan: ");
			    scanf("%d", &boletos);
				printf("Ingrese su destino 1 nacional, 2 internacional: \n");
	            scanf("%d", &destino);
	
	while(destino != 2 && destino != 1 && destino != 0)
	{
		printf("Ingrese su destino 1 nacional, 2 internacional: \n");
	scanf("%d", &destino);
	}
	
	bolvend += boletos;
	if(boletos > max_pasajeros)
	{
		max_pasajeros = boletos;
	}
	if(destino ==1)
	{
		cont_nacional += 1;
	}
	if(destino ==2)
	{
		cont_internacional = cont_internacional + 1;
		if(boletos < minboletos) {
			minboletos = boletos;
		}
	
	}
	
	i++;
	}
	
	porc = (cont_nacional * 100)/i;
	
	printf("Se vendieron: %d", bolvend); printf(" boletos en %d", i); printf(" operaciones.");
    printf("\nCantidad máxima de pasajeros en una sola operación: %d", max_pasajeros);
	printf("\nporcentaje de boletos que tuvieron destino nacional: %f", porc);
	printf("\nEl mínimo de boletos vendidos para destinos internacionales: %d", minboletos);
	
	
	
	}
