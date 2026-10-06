#include <stdio.h>

int main() {
    int mes;
    
    printf("Digite o numero do mes (1 a 12): ");
    scanf("%d", &mes);
    
    switch (mes) {
        
        case 1:  
        case 3:  
        case 5: 
        case 7:  
        case 8: 
        case 10: 
        case 12: 
            printf("O mes %d possui 31 dias.\n", mes);
            break;
            
        
        case 4:  
        case 6:  
        case 9: 
        case 11: 
            printf("O mes %d possui 30 dias.\n", mes);
            break;
            
        
        case 2:
            printf("O mes %d possui 28 dias em um ano comum.\n", mes);
            break;

        default:
            printf("Mes invalido! Por favor, digite um numero entre 1 e 12.\n");
            break;
    }
    
    return 0;
}
