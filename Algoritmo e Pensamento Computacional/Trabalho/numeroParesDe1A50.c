#include <stdio.h>

int main() {
    int contador = 2; 
    
    printf("Numeros pares entre 1 e 50:\n");
    
   
    while (contador <= 50) {
        printf("%d ", contador);
        

        contador = contador + 2; 
    }
    
    printf("\n"); 
    
    return 0;
}
