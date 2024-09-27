#define _WIN32_WINNT 0x0500
#include <windows.h>

void hibernate() {
    SetSuspendState(TRUE, FALSE, FALSE);
}
