#include <stdio.h>

int main () {
	float cotacaoDolar, reais, calculo;
	
	printf("Digite a cotação do dolar.");
	
	scanf("%f", &cotacaoDolar);
	
	printf("Digite quantos Reais você deseja converter");
	
	scanf("%f", &reais);
	
	calculo = cotacaoDolar*reais;
	
	printf("O valor convertido em doláres de R$%.2f é US$%.2f ", reais, calculo);
	
	return 0;
	
}
