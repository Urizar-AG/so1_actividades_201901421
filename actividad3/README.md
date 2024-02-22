#### UNIVERSIDAD DE SAN CARLOS DE GUATEMALA ####  
#### FACULTAD DE INGENIERÍA ####  
#### ESCUELA DE CIENCIAS Y SISTEMAS ####  
#### SISTEMAS OPERATIVOS 1 ####  
#### SECCIÓN "A" ####  

---    

#### ACTIVIDAD 3 ####
#### ANGEL MIGUEL GARCÍA URIZAR ####
#### 201901421 ####  

---  

### PASO 1  ###
Otorgar permiso de ejecución al archivo `script.sh` con el siguiente comando:  

```bash  
sudo chmod +x script.sh
``` 

### PASO 2 ###
Copiar el archivo `actividad4.service` a la siguiente ruta `/etc/systemd/system`  
```bash  
sudo cp actividad4.service /etc/systemd/system  
```  
  
### PASO 3 ###  
Verificar el estado con el siguiente comando:  
```bash  
sudo systemctl status actividad4.service
```  
  
### PASO 4 ###  
Para inicar la ejecución del servicio se ejecuta el siguiente comando
```bash  
sudo systemctl start actividad4.service
```  
  
### PASO 5 ###  
Verificar nuevamente el estado para asegurarse que el comando anterior haya funcionado correctamente    
```bash  
sudo systemctl status actividad4.service
```    

### PASO 6 ###  
Para que el servicio se habilite al iniciar el sistema, ejecutar el comando  
```bash  
sudo systemctl enable actividad4.service
```  
  
### PASO 7 ###  
Verificar nuevamente el estado para asegurarse que el comando anterior haya funcionado correctamente    
```bash  
sudo systemctl status actividad4.service
```      
  
### PASO 8 ###
Para monitear los logs del servicio, se ejecuta el siguiente comando  
```bash  
sudo journalctl -fu actividad4.service
```  
  
---  

Para que el servicio ya no este habilitado con el inicio del sistema  
```bash  
sudo systemctl disable actividad4.service
```  

Para detener deshabilitar el servicio 
```bash  
sudo systemctl stop actividad4.service
```   