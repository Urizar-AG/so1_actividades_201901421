### UNIVERSIDAD DE SAN CARLOS DE GUATEMALA  
### FACULTAD DE INGENIERÍA  
### ESCUELA DE CIENCIAS Y SISTEMAS  
### SISTEMAS OPERATIVOS 1  
### SECCIÓN "A"  
---    
### ACTIVIDAD 7
### ANGEL MIGUEL GARCÍA URIZAR
### 201901421
---  
  
# CFS Scheduler  
  
El CFS (Completely Fairy Scheduler), en español el Planificador Completamente Justo, apareció con la versión 2.6.23 del kernel de linux y desde entonces se convirtió en el algoritmo linux scheduling default.  
  
## Características principales  

* No utiliza la estructura tradicional de cola `queue`, sino que las tareas son puestas en un árbol rojo-negro `red-black tree`
* Generalemente las tareas con un vruntime menor están al lado izquierdo del árbol, mientras que las tareas con un vruntime más grande están en el lado derecho del árbol  
* Tiene una complejidad de O(Log N)  
* Asigna a cada tarea una proporción de tiempo de procesamiento de CPU  
* La proporción de tiempo es asignada en base a un `nice value`   
* El `nice value` va de -20 a +19 
* No asigna prioridades directamente sino que utiliza el concepto de tiempo de ejecución virtual `Virtual run time (vruntime)`  
* Para decidir que tarea es la siguiente el scheduler selecciona la tarea con el `vruntime` de menor valor  
* El CFS scheduler también soporta balanceamiento de carga  
  
## Funcionamiento  

```  
El CFS Scheduler funciona evaluando los nice value y vruntime. El nice value es un valor numérico que puede ir de -20 hasta + 19, la tarea con el nice value de menor valor tiene una prioridad más alta que las tareas un nice value más alto.  

Para las tareas que tienen un nice value de 0 el valor de vruntime será igual que el valor de run time real, para las tareas con una prioridad baja el vruntime será mayor que el run time real, mientras que para aquellas tareas con una prioridad alta el vruntime será menor que el run time real. Entonces para decidir que tarea debe ser la siguiente en ser atendida el scheduler simplemente selecciona que tarea es la que tiene el vruntime más pequeño. Adicionalmente una tarea con prioridad alta puede adelantarse a una tarea con prioridad más baja.  
  
Adicionalmente el CFS admite el balanceamiento de carga utilizando una técnica que se encarga de igualar la carga entre los núcleos del CPU. Está técnica utilizada también se encarga de minimizar la migración de hilos threads.  
  
CFS define la carga de un proceso como la combinación de la prioridad de los subprocesos y la tasa promedio de uso del CPU. Utilizando esta métrica la carga para una cola es entonces, la suma de todas las cargas de los procesos que están en la cola, por lo que el balance de cargas consiste en asegurarse que cada una de las colas tenga la misma cantidad de carga.
```
