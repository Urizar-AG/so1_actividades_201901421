#!/bin/bash

# read -r -p "Ingresa tu usuario de Github: " GITHUB_USER
GITHUB_USER="Urizar-AG"

DATA=$(curl -s https://api.github.com/users/$GITHUB_USER)

# Id de usuario
ID=$(echo $DATA | jq '.id')

# Fecha de creación de la cuenta del usuario
DATE_TIME=$(echo $DATA | jq '.created_at')

LOG="Hola $GITHUB_USER. USER_ID: $ID. Cuenta fue creada el: $DATE_TIME"
echo $LOG

# Fecha actual
CURRENT_DATE=$(date +"%d-%m-%Y")

mkdir -p ./tmp/$CURRENT_DATE

# Crea el log
echo $LOG >> ./tmp/$CURRENT_DATE/saludos.log

####################################
# CREAR CRONJOB PARA EL SCRIPT
####################################
# 1.Ejecutar el comando "crontab -e" para editar el archivo de crontab
# 2.Agregar al final del archivo lo siguiente: */5 * * * * ruta_donde_esta_el_script
# 3.Guardar cambios
####################################

#Ejemplo en mi caso es de la siguiente manera
# */5 * * * * /home/urizar-ag/Desktop/so1_actividades_201901421/actividad2/script.sh
