#include<stdio.h>
int i, N=5, cont_hab, conthabtot, cienmas;
float prom, porc, max, min, sum;
main()
{
for(i = 0; i<N; i++)
{
	printf("Introduzca la cantidad de habitantes: ");
	scanf("%d", &cont_hab);
	conthabtot=cont_hab+conthabtot;
	if(cont_hab>100)
	{
		cienmas = cienmas + 1;
	}
	if(i == 0 || cont_hab > max)
	{
		max = cont_hab;
	}
}
prom=conthabtot/5;
porc=(cienmas*100)/5;

printf("La provincia con mayor cantidad de habitantes es: %f \n", max);
printf("Porcentaje de provincias con mas de 100 habitantes: %f \n ",porc);
printf("Sumatoria total: %d \n ", conthabtot);
printf("Promedio de habitantes por provincia: %f \n", prom);	
}





























