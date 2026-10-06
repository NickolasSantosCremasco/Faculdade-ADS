#include <stdio.h>

int main() {
    int idade;
    int soma = 0; 
    float media;
    
    printf("Calculadora de media de idades\n\n");
    
    for (int i = 1; i <= 5; i++) {
        printf("Digite a idade do %d indivíduo: ", i);
        scanf("%d", &idade);
        soma += idade; 
    }
    
    media = (float)soma / 5;
    
    printf("\nA media aritmetica das idades informadas e: %.1f anos\n", media);
    
    return 0;
}
