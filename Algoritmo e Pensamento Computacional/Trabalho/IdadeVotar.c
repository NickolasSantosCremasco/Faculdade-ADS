#include <stdio.h>

int main() {
    int idade;
    
    printf("Digite sua idade: ");	
    scanf("%d", &idade);
    
    if (idade < 16) {
        printf("Voce tem %d anos e nao pode votar.\n", idade);
        
    } else if (idade >= 16 && idade < 18) {
        printf("Voce tem %d anos e seu voto e opcional.\n", idade);
        
    } else {
    
        printf("Voce tem %d anos e seu voto e obrigatorio.\n", idade);
    }
    
    return 0;
}
