#include <stdio.h>
#include <stdlib.h>

int main()
{
    int note_sup, note_bet, note_inf, m[3][5], lin, col, count = 0;

    for(lin = 0; lin < 3; lin++){
        for(col = 0; col < 5; col++){
            printf("\n digite uma nota: ");
            scanf("%d", &m[lin][col]);

            if(m[lin][col] >= 7){
                printf("aprovado");
                count++;

            } else if(m[lin][col] >= 2 && m[lin][col] <= 6){
                printf("exame");
                count++;

            } else if(m[lin][col] < 2) {
                printf("reprovado");
                count++;

            } else {
                printf("digite nota valida");
            }
        }
    }
    printf("\n notas: %d", count);
}
