#include <stdio.h>

int main() {
    int n;
    float s = 0.0; 
    
    printf("Calculo da serie harmonica: S = 1 + 1/2 + 1/3 + ... + 1/N\n");
    printf("Digite o valor de N: ");
    scanf("%d", &n);
    
    if (n <= 0) {
        printf("Por favor, digite um numero maior que zero.\n");
        
    } else {
    
        for (int i = 1; i <= n; i++) {
            
            s += 1.0 / i; 
        }
        
        printf("\nO valor da serie harmonica para N = %d e: %.4f\n", n, s);
    }
    
    return 0;
}
