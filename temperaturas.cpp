#include<stdio.h>
int i, cont_neg = 0, cont_men = 0, cont_mas = 0;
float temp, acum_neg = 0, max, min, porcen, prom;
main()
{

for(i = 0; i < 10; i++)
{
printf("Ingrese la temperatura %d:  ", i + 1);
scanf("%f", &temp);
if(temp > 18)	
{
cont_mas = cont_mas + 1;	
}
else
{
cont_men = cont_men + 1;
if(temp < 0)
{
cont_neg = cont_neg + 1;
acum_neg = acum_neg + temp;	
}
}
if(i == 0 || temp > max)
{
max = temp;	
}
if (i == 0 || temp < min)
{
min = temp;
}
}
porcen = (cont_men * 100) / 10;
if(cont_neg != 0)
{
prom = acum_neg / cont_neg;
}
printf("La cantidad de temperaturas mayores a 18 son : %d.", cont_mas);
printf("El porcentaje de temperaturas iguales o menores a 18 es : %f.", porcen);
printf("El promedio de temperaturas negativas es : %f grados.", prom);
printf("El rango es de %f grados a %f grados", min, max);
}
