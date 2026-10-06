#include <stdio.h>

int main() {
    int numero;
    int soma = 0; 
    
    printf("Digite os numeros inteiros para somar.\n");
    printf("Para encerrar e ver o resultado, digite 0.\n\n");
    
   
    do {
        printf("Digite um numero: ");
        scanf("%d", &numero);
        soma += numero; 
        
    } while (numero != 0); 
    
    printf("\nA soma total dos valores lidos e: %d\n", soma);
    
    return 0;
}
