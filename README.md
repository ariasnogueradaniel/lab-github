# lab-github
organizacion de archivos
Testing Milton
testing daniel 
Test Fallo




Daniel Arias:

que es un git add y como se hace 
el git add indica cuales archivos quiero incluir en el siguiente guardado, git no guarda automaticamanete los cambios, el comando le indica que tendra que guardar, se usa cuando se va a modifcar, crear o eliminar archvios del proximo commit

para hacer un commit se usa "git add" + el nombre del archivo o carpeta que se quiera guardar

que es un commit y como se hace:

el commit guarda los cambios que se marcaron con el add, en el histoial del proyecto, el commit sirve como un punto al cual se puede regresar por si algo saliera mal
 se usa despues del add para guardar de manera definitiva los cambios
 como se hace: 
 se usa el comando git commit -m "mensaje" el mensaje es breve y debe describir lo que se guardo

 que es un push, como se hace y porque aveces es forzado y aveces no:
el push sube los commits al servidor en este ccaso github respaldando el proyecto en la nube, asi si se trabaja solo o en equipo se tiene una copia del proyecto, se usa despues de hacer uno o varios commits o cuando se quiere compatir el trabajo con el resto del equipo

como se usa:
se utiliza el "git push origin main"

push forzado:

obliga a git a subir los cambios aunque se reemplace lo que hay en el servidor, solo se debe usar cuando se quiere corregir commits anteriores que si se hizo un rebase

como se usa:
se utiliza el "git push --force origin main"


que es un pull y como se usa:

el pull baja los cambios del servidor y los combina con los propios, esto permiste mantener la copia del proyecto que se esta utilizando actualizada con los cambios hehcos por el resto del equipo, se usa antes de empezar a trabajar o antes de hacer un push asi asegurando se no trabajar sobre una version antigua del proyecto

como se usa:
se usa el "git pull origin main"

que es un checkout y como se usa:

el checkout se utiliza para cambiar de branch del repositorio, de esta manera se pueden restaurar archivos de versiones anteriores o explorar versiones pasadas del proyecto 
tambien se utiliza para crear nuevas branch para trabaja

como se utiliza

para cambiar de branch se utiliza el "git checkout nombre-de-la-branch"

para crear una nueva branch se utiliza "git checkout -b nueva-branch"

para volver a un commit anterior se utiliza "git checkout id" siendo id la id respectiva de la branch

y para restaurar archivos se utiliza "git checkout HEAD -- archivo.py"

