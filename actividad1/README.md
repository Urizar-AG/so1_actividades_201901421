Universidad de San Carlos de Guatemala    
Facultad de Ingeniería  
Sistemas Operativos 1  
Sección "A"    
Angel Miguel García Urizar    
201901421    
  
# Actividad 1  

## ¿Qué es el kernel?  

El kernel es el núcleo del sistema operativo y sirve como intermediario entre el hardware y el software de la computadora. Comunica el software y el hardware entre si y gestiona los recursos de la mejor manera posible.
  
## Tipos de Kernel y sus diferencias  

* ### Kernel Monolítico  
  Este tipo de kernel puede gestionar todas las tareas. Es el encargado de gestionar procesos y memoria. Debido a que tienen todos sus servicios ejecutándose en el mismo espacio son bastante rápidos, pero también más susceptibles a errores que pueden provocar que todo el sistema falle.  
    
* ### Microkernel  
  Este tipo de kernel está diseñado en separaciones de pequeños tamaños con la finalidad de evitar que todo el sistema colapse. Esta separación hace que sean más seguros y estables, pero puede provocar que sean más lentos debo a la comunicación entre los servicios.  
    
* ### Kernel Híbrido  
  Este kernel es una combinación entre el kernel monolítico y el microkernel. Esta combinación tiene la finalidad de que el kernel sea rápido como el kernel monolítico pero con la seguridad y estabilidad de un microkernel.  
    
* ### Nanokernel  
  Es el tipo de kernel más pequeño entre los distintos tipos de kernel que existen. Es utilizado principalmente en sistemas embebidos y en dispositivos de pocos recursos debido a que solamente proporciona los servicios mínimos que son necesarios para que un sistema funcione. 
    
* ### Exokernel    
  En un exokernel la gestión de recursos o toma de decisiones es delegada a los programas o aplicaciones del usuario. El exokernel se limita a evitar errores y eludir conflictos.    
     
|Criterio|Kernel Monolítico|Microkernel|Kernel Híbrido| Nanokernel|Exokernel|  
|:--|:--|:--|:--|:--|:--|  
|Tamaño|Grande|Pequeño|Unión entre monolítico y microkernel|pequeño|pequeño|  
|Implementación de los servicios|Espacio único|Espacios diferentes|Unión entre monolítico y microkernel|Espacios diferentes|Espacios diferentes|   
|Sistemas que lo utilizan|Windows, Linux y macos|OS X|Linux y OS X|Sistemas embebidos||  
  
## User Mode vs Kernel Mode  
    
|Criterio|User Mode|Kernel Mode|  
|:--|:--|:--|  
|Acceso a recursos|Tiene acceso directo y sin restricciones a los recursos del sistema|No tiene acceso directo a los recursos del sistema|  
|Modos|Modo restringido, modo esclavo o modo sin privilegios|Modo privilegiado o modo maestro|  
|Interrupciones|Un solo proceso falla si ocurre una interrupción|Puede fallar todo el SO si se produce una interrupción|  
|Espacios de direcciones|Los procesos tiene un espacio de direcciones separados|Los procesos comparte un único espacio de direcciones virtuales|  
|Restricciones|No puede acceder de forma directa a los programas del kernel|Puede acceder a los programas propios del kernel como a los programas del usuario|  
  
## Interruptions vs Traps  
  
|Criterio|Interruptions|Traps|  
|:--|:--|:--|  
|Definición|Una interrupción es una señal que requiere atención inmediata del sistema operativo |Es una excepción provocada por un proceso de usuario|  
|Origen|Hardware o Software|Software|  
|Generación|Asíncrona|Sincrónica|  
|Ejecución|Modo privilegiado|Modo usuario|  
||El CPU debe ejecutar una rutina específica para la interrupción|Es el trap handler quien se encarga de ejecutar una funcionalidad específica|  
