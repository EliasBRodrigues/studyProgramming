#include <stdio.h>
#include <stdlib.h>

int main()
{
    int month;
    printf("Digite um numero:");
    scanf("%d", &month);

     if(month == 1){
        printf("Janeiro");
     }

     else if(month == 2){
        printf("Fevereiro");
     }

     else if(month == 3){
        printf("Marco");
    }

       else if(month == 4){
        printf("Abril");
    }

       else if(month == 5){
        printf("Maio");
    }

       else if(month == 6){
        printf("Junho");
    }

       else if(month == 7){
        printf("Julho");
    }

       else if(month == 8){
        printf("Agosto");
    }

       else if(month == 9){
        printf("Setembro");
    }

       else if(month == 10){
        printf("Outubro");
    }

       else if(month == 11){
        printf("Novembro");
    }

       else if(month == 12){
        printf("Dezembro");

    } else {
        printf("Digite um numero")
    }

     return 0;
}
