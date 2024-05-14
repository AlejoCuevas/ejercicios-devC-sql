#include<stdio.h>
int cont, respuesta, mayores;
float litros, litrostot, max, prom, porc;  
main()
{
	do
	{
		cont = cont + 1;
		printf("Ingrese la cantidad de litros: ");
		scanf("%f", &litros);
		litrostot = litrostot + litros;
		
		if(litros > max)
		{
			max = litros;
		}
		
		if(litros > 20)
		{
			mayores = mayores + 1;
		}
		printf("¿Desea seguir cargando datos? \n Si= 1, No= 0 \n" );
		scanf("%d", &respuesta);
	}
	while(respuesta !=0);
	prom = litrostot/cont;
	porc = (mayores * 100) / cont;
	
	printf("\n Total de litros = %f", litrostot);
	printf("\n Carga maxima = %f", max);
	printf("\n promedio = %f", prom);
	printf("\n Porcentaje de personas que cargan mas de 20 litros = %f", porc);
	
	
	
	
	
	
	
}











