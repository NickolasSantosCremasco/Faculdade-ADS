#include <stdio.h>

int main() {
    
    // EXERCÍCIO 1
    
    printf("--- EXERCICIO 1 ---\n");
    int numero1 = 5;
    int numero2 = 7;
    int soma = numero1 + numero2;
    printf("%d\n\n", soma); 

    
    // EXERCÍCIO 2
    
    printf("--- EXERCICIO 2 ---\n");
    float nota1 = 6.0;
    float nota2 = 8.0;
    float nota3 = 7.0;
    float media = (nota1 + nota2 + nota3) / 3.0;
    printf("%.1f\n\n", media); 

    
    // EXERCÍCIO 3
    
    printf("--- EXERCICIO 3 ---\n");
    int base = 6;
    int altura = 4;
    int area = base * altura;
    printf("%d\n\n", area); 

    
    // EXERCÍCIO 4
    
    printf("--- EXERCICIO 4 ---\n");
    int base_p = 6;
    int altura_p = 4;
    int perimetro = 2 * (base_p + altura_p);
    printf("%d\n\n", perimetro); 

    
    // EXERCÍCIO 5
    
    printf("--- EXERCICIO 5 ---\n");
    float celsius = 37.0;
    float fahrenheit = celsius * 9.0 / 5.0 + 32.0;
    printf("%.1f\n\n", fahrenheit); 

    
    // EXERCÍCIO 6
    
    printf("--- EXERCICIO 6 ---\n");
    int a = 3;
    int b = 10;
    int auxiliar = a;
    a = b;
    b = auxiliar;
    printf("%d\n", a); 
    printf("%d\n\n", b); 

    
    // EXERCÍCIO 7
    
    printf("--- EXERCICIO 7 ---\n");
    float capital = 1000.0;
    float taxa = 0.02;
    float tempo = 10.0;
    float juros = capital * taxa * tempo;
    printf("%.1f\n\n", juros); 

    
    // EXERCÍCIO 8
    
    printf("--- EXERCICIO 8 ---\n");
    float resultado = 10.0 + 4.0 * 2.0 - 6.0 / 3.0;
    printf("%.1f\n\n", resultado);

    
    // EXERCÍCIO 9
    
    printf("--- EXERCICIO 9 ---\n");
    float pi = 3.14;
    float raio = 5.0;
    float area_circulo = pi * raio * raio; 
    printf("%.1f\n\n", area_circulo); 

    
    // EXERCÍCIO 10
    
    printf("--- EXERCICIO 10 ---\n");
    float valor_compra = 34.5;
    float valor_pago = 50.0;
    float troco = valor_pago - valor_compra;
    printf("%.1f\n\n", troco); 

    return 0;
}