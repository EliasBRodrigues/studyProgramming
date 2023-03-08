#include <stdio.h>
#include <stdlib.h>

int main()
{
    //criar matriz 4x5 e verificar quantidade de numeros pares //
    int matriz[4][5], l, c, p = 0;

    for(int l = 0; l < 4; l++){
        for(int c = 0; c < 5; c++){
            printf("\n numero: ");
            scanf("%d", &matriz[l][c]);

            if(matriz[l][c] % 2 == 0){
                p++;
            }
        }
    }
    printf("\n Qtd pares: %d", p);
}
