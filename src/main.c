#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <time.h>
#include "hibernate.h"
#include "show_time.h"

int main() {
    int sleepTime = 60 * 60 * 1000; // 60 minutos em milissegundos

    // Mostrar o tempo restante
    showRemainingTime(sleepTime);

    // Esperar pelo tempo especificado
    Sleep(sleepTime);

    // Colocar o computador em hibernação
    hibernate();

    return 0;
}
