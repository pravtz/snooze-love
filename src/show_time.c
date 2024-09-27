#include <stdio.h>
#include <time.h>

void showRemainingTime(int sleepTime) {
    int remainingTime = sleepTime / 1000; // Convertendo para segundos
    printf("Tempo restante: %d segundos\n", remainingTime);
}
