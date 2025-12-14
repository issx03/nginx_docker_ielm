# Reflexión de la práctica

- ¿Qué has aprendido en esta práctica?

    - He aprendido a gestionar varios contenedores Docker usando docker-compose.yml, es sencillo, ya que con un solo archivo podemos gestionar facilmente varios contenedores, levantamos con un comando y lo detenemos con otro.
    - He aprendido a configurar NGINX como proxy inverso, para así servir el miniblog.
    - He aprendido a gestionar tipos MIME en NGINX, para así servir archivos estáticos con tipos MIME personalizados.
    

- ¿Qué parte te resultó más difícil?

    - La parte más difícil fue solucionar el despliegue al principio del contenedor `miniblog`, ya que se cerraba con un error (Exit Code 1). 
    - El problema era que faltaban las dependencias (`composer.json` no encontrado) y permisos en el script de arranque.

- ¿Qué utilidad práctica le ves a lo aprendido?

    - Con los volúmenes y tipos MIME puedo servir recursos estáticos sin modificar el código del backend.
    - El Proxy Inverso es muy importante para seguridad y gestionar las peticiones hacia el backend.

- ¿Te has enfrentado a algún error técnico? ¿Cómo lo solucionaste?
    
    - Si, el que he comentado antes en la sección de parte más difícil.
    - Lo solucioné borrando la imagen y reconstruyendola correctamente.
    - También borré el miniblog y lo volví a clonar.