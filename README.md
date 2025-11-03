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

_______________________________________________________________________________________________________________________________________________________________________________________
Milton Ballestero:

git add: Se encarga de agregar cambios del directorio de trabajo al área de staging (índice) y preparar los archivos para ser incluidos en el próximo commit. Ej:

Área de Trabajo antes de git add:
├── index.html    [MODIFICADO]
├── styles.css    [MODIFICADO] 
├── script.js     [MODIFICADO]
└── readme.txt    [NUEVO]

Área de Trabajo después de git add:
└── readme.txt    [NUEVO - aún no empezado]

Área de Staging (Preparado para commit):
├── index.html    [LISTO]
├── styles.css    [LISTO]
└── script.js     [LISTO]

Ejemplo de uso

git add index.html (Se agrega un archivo específico)
git add .(Para todos los archivos modificados y nuevos)
git add *.js (Para agregar todos los archivos con extensión .js)
git add -p (Agregar cambios por partes)
git add src/(Para agregar todos los archivos en un directorio)

#$ git status
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   index.html
        modified:   styles.css

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        readme.txt

$ git add index.html styles.css
$ git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   index.html
        modified:   styles.css

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        readme.txt
_______________________________________________________________________________________________________________________________________________________________________________________
**git commit -m: Este comando se encarga de crear un nuevo commit con los cambios que están en el área de staging. La bandera -m permite agregar un mensaje descriptivo del commit directamente en la línea de comandos. Ej:

Commit con mensaje simple
git commit -m "Agregar funcionalidad de login"

Commit con mensaje multilínea
git commit -m "Fix: Corregir error en validación de formulario

- Validar campo email correctamente
- Agregar mensajes de error específicos
- Mejorar experiencia de usuario"

Flujo completo
git add .
git commit -m "Implementar sistema de autenticación"
git push origin main

#$ git commit -m "Agregar funcionalidad de login"
[main a1b2c3d] Agregar funcionalidad de login
 2 files changed, 45 insertions(+), 3 deletions(-)
_______________________________________________________________________________________________________________________________________________________________________________________
**git push: Se encarga de enviar y sicronizar los commits locales al repositorio remoto en GitHub/GitLab/etc.

Ejemplo de uso

git push(Push a la rama actual)
git push origin main (Push específico a rama main)
git push -f origin main (Push forzado, puede sobrescribir cambios remotos**ojo**)
git push origin feature-branch(Push de una rama específica)
git push -u origin main (Sire para configurar upstream para push automático)

Captura de ejecucion

#$ git push origin main
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Writing objects: 100% (3/3), 450 bytes | 450.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To https://github.com/usuario/repo.git
   a1b2c3d..e4f5g6h  main -> main
_______________________________________________________________________________________________________________________________________________________________________________________  
**git pull: Descarga los cambios del repositorio remoto y los fusiona (merge) con la rama local actual.

Ejemplos de uso
git pull (Pull de la rama actual)
git pull origin main(Pull específico de origen y rama)
git pull --rebase origin main (pull con rebase en lugar de merge)

Captura de ejecucion

#$ git pull origin main
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 2), reused 0 (delta 0)
Unpacking objects: 100% (3/3), 1.25 KiB | 255.00 KiB/s, done.
From https://github.com/usuario/repo
 * branch            main       -> FETCH_HEAD
   a1b2c3d..e4f5g6h  main       -> origin/main
Updating a1b2c3d..e4f5g6h
Fast-forward
 index.html | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
_______________________________________________________________________________________________________________________________________________________________________________________
git rebase: Reaplica commits sobre una base diferente. Reorganiza el historial de commits, creando un historial más lineal. # Rebase la rama actual sobre main

Ejemplo de ejecucion

git rebase main (Rebase la rama actual sobre main)
git rebase -i HEAD~3 (Rebase interactivo de los últimos 3 commits)
git rebase --continue (Continuar rebase después de resolver conflictos)
git rebase --abort (Abortar rebase en caso de problemas)

Captura de ejecucion

#$ git rebase main
First, rewinding head to replay your work on top of it...
Applying: feature: agregar nueva funcionalidad
Applying: fix: corregir bug menor
_______________________________________________________________________________________________________________________________________________________________________________________
git rebase -i HEAD~x: Rebase interactivo que permite modificar, combinar, eliminar o reordenar los últimos X commits.

Ejemplo de uso 
git rebase -i HEAD~5 ( Rebase interactivo de últimos 5 commits)
git rebase -i a1b2c3d (Rebase interactivo desde un commit específico)
_______________________________________________________________________________________________________________________________________________________________________________________
git status:Muestra el estado del directorio de trabajo y del área de staging. Indica qué archivos han sido modificados, agregados o eliminados.

Ejemplo de uso
git status (El uso Basico)
git status -s (Estado con información breve)
git status -b (Estado mostrando ramas)

Captura de ejecucion

#$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   index.html
        new file:   styles.css

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   script.js

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        readme.txt
_______________________________________________________________________________________________________________________________________________________________________________________
git log: Muestra el historial de commits en orden cronológico inverso (más recientes primero). git log --oneline --graph --all

Ejemplo de uso

git log (Log básico)
git log --oneline (Log en una línea por commit)
git log --oneline --graph --all (Log con gráfico de ramas)
git log -n 5 (Muestra los Últimos 5 commits)
git log --since="2025-11-02"(Log desde fecha específica)
git log --stat (Log con estadísticas)
Log mostrando cambios
git log -p (Log mostrando cambios)

Captura de ejecucion

#$ git log --oneline --graph --all
* e4f5g6h (HEAD -> main, origin/main) Agregar documentación
* d3e4f5g Fix: corregir error en validación
* c2d3e4f Merge branch 'feature/login'
|\  
| * b1c2d3e (feature/login) Implementar sistema de login
| * a0b1c2d Agregar formulario de login
|/  
* 9a0b1c2 Configuración inicial del proyecto

_______________________________________________________________________________________________________________________________________________________________________________________
git diff: Muestra las diferencias entre archivos en el directorio de trabajo, el área de staging y commits. git diff

Ejemplo de uso
git diff (Diferencias en working directory)
git diff --staged(Diferencias en staging area)
git diff HEAD~1 HEAD (Diferencias entre dos commits)
git diff archivo.txt (iferencias de un archivo específico)
git diff main..feature-branch (Diferencias entre ramas)

Captura de ejecucion

#$ git diff
diff --git a/script.js b/script.js
index a1b2c3d..e4f5g6h 100644
--- a/script.js
+++ b/script.js
@@ -5,6 +5,7 @@ function validateForm() {
     const email = document.getElementById('email').value;
     if (!email.includes('@')) {
#-        alert('Email inválido');
#+        showError('Por favor ingrese un email válido');
#+        return false;
     }
 }
_______________________________________________________________________________________________________________________________________________________________________________________
git branch: Lista, crea o elimina ramas. Sin argumentos, muestra las ramas locales. git branch

git branch (Para listar ramas locales)
git branch -r (Para Listar ramas remotas)
git branch -a (Listar todas las ramas)
git branch nueva-feature (Crear nueva rama)
git branch -d rama-vieja (Para eliminar una rama (solo si fusionada))
git branch -D rama-vieja (Para eliminar rama forzadamente)
git branch -m nuevo-nombre (Cambiar nombre de rama actual)

Captura de ejecucion

#$ git branch
  desarrollo
  feature/login
#* main
  prueba
#$ git branch -a
#* main
  remotes/origin/main
  remotes/origin/develop
_______________________________________________________________________________________________________________________________________________________________________________________
git branch -D: El comando git branch -D elimina una rama de forma forzada, incluso si tiene commits no fusionados con otras ramas. Esta es la versión "force" del comando git branch -d que solo permite eliminar ramas que ya han sido fusionadas.
_______________________________________________________________________________________________________________________________________________________________________________________
git checkout: Cambia entre ramas o restaura archivos del directorio de trabajo.

Ejemplo de ejecucion

git checkout main (Cambiar a rama existente)
git checkout -b nueva-rama (Crea y cambia a nueva rama)
git checkout -- archivo.txt (Restaura un archivo a versión del HEAD)
git checkout a1b2c3d (Cambia a commit específico (modo detached HEAD))

Captura de ejecución
$ git checkout -b feature/pagos
Switched to a new branch 'feature/pagos'

$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
_______________________________________________________________________________________________________________________________________________________________________________________
git commit --amend: Modifica el commit más reciente. Permite cambiar el mensaje o agregar archivos olvidados.

ejemplo de uso 
git commit --amend -m "Nuevo mensaje" (Modificar mensaje del último commit)
git add archivo-olvidado.txt (Agrega archivos olvidados al último commit)
git commit --amend --no-edit
git commit --amend --author="Nombre <email@ejemplo.com>"(Modificar autor del último commit)

Captura de ejecución

$ git commit --amend -m "Fix: corregir validación de email completamente"
[main e4f5g6h] Fix: corregir validación de email completamente
 Date: Mon Jan 15 10:30:00 2024 -0500
 2 files changed, 15 insertions(+), 3 deletions(-)
_______________________________________________________________________________________________________________________________________________________________________________________
git commit --amend --no-edit:Modifica el commit más reciente sin cambiar el mensaje del commit. Útil para agregar archivos olvidados. 

Ejemplo de uso
git add archivo-olvidado.js 
git commit --amend --no-edit(Agregar archivo olvidado al último commit)
git add .
git commit --amend --no-edit (Corregir archivos en último commit)

Captura de ejecucion
$ git add config.json
$ git commit --amend --no-edit
[main f6g7h8i] Agregar funcionalidad de login
 Date: Mon Jan 15 10:30:00 2024 -0500
 3 files changed, 47 insertions(+), 3 deletions(-)
