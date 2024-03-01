#!/bin/bash

#Crea los named pipe si no existen
if [ ! -p "SO1_CHAT2_201901421" ]; then
    mkfifo SO1_CHAT1_201901421  
    mkfifo SO1_CHAT2_201901421  
fi

MESSAGE=""

while true; do
    #Respuesta de chat1
    cat SO1_CHAT1_201901421
    #Pide mensaje a enviar al chat1
    read -p "Ingresa tu mensaje: " MESSAGE
    #Manda la entrada al named pipe
    echo "P2: $MESSAGE" > SO1_CHAT2_201901421
done
