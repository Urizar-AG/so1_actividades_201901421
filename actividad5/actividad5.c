// Importa las librerias necesarias  
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/types.h>
#include <sys/wait.h>

void* crear_thread(void *param){
    printf("Se creó un nuevo thread en el proceso PID:%d \n", getpid());
}  

int main() {
    pid_t proceso;
    pthread_t hilo;

    printf("Proceso padre PID:%d \n", getpid());

    proceso = fork();
    if (proceso == 0) // es un proceso hijo
    {
        printf("Proceso hijo PID:%d y padre PID:%d \n", getpid(), getppid());

        pid_t proceso_hijo = fork();
        if (proceso_hijo == 0) // es un proceso hijo del proceso hijo
        {
            printf("Proceso hijo PID:%d del hijo PID:%d \n", getpid(), getppid());
        }
        pthread_create(&hilo, NULL, crear_thread, NULL);
    }
    else
    {
        // Espera que termine el proceso hijo
        wait(NULL);
    }

    proceso = fork();
    if (proceso == 0)
    {
        printf("Proceso hijo PID:%d y padre PID:%d \n", getpid(), getppid());
    }
    else
    {
        // Espera que termine el proceso hijo
        wait(NULL);
    }

    return 0;
}
