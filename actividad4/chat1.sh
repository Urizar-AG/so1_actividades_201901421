#!/bin/bash

#Crea los named pipe si no existen
if [ ! -p "SO1_CHAT1_201901421" ]; then
    mkfifo SO1_CHAT1_201901421  
    mkfifo SO1_CHAT2_201901421  
fi

MESSAGE=""

while true; do
    #Pide el mensaje a enviar a chat2
    read -p "Ingresa tu mensaje: " MESSAGE
    #Manda la entrada al named pipe
    echo "P1: $MESSAGE" > SO1_CHAT1_201901421
    #Respuesta del chat2
    cat SO1_CHAT2_201901421
done
