#include <stdio.h>
#include <stdlib.h>

int main()
{

    // p1 vetor que armazena nota p1 de 5 alunos
    // p2 vetor que armazena nota p1 de 5 alunos
    // media que armazena media de 5 alunos

    double p1[5], p2[5], mediaFinal[5];

    for(int i = 0; i < 5; i++){
        printf("Digite P1: ");
        scanf("%lf", &p1[i]);

        printf("Digite P2: ");
        scanf("%lf", &p2[i]); //long float

        mediaFinal[i] = (p1[5] + p2[5])/2;

        printf("a media final eh: %lf", mediaFinal[i]);
    }

    int a, b;
    a = 0;
    b = 10;

    for(int k = 0; k < 5; k++){
        if(a > mediaFinal[k]){
            a = mediaFinal[k];
        } else {
            b = mediaFinal[k];
        }
    }
    return 0;
}
