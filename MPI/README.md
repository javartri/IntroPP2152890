# MPI
MPI es un estándar de programación en paralelo mediante paso de mensajes que permite crear programas portables y eficientes. Se basa en ejecutar un mismo código en múltiples procesadores, para ello es necesario gestionar la coordinación/comunicación entre los nodos.

## Aquí se encuentra los siguientes archivos:

- mpi_heated_plate.c -> Código de paralelización del programa de heated_place para resolver la distribución de la temperatura en estado estacionario sobre una placa rectangular. <br/>
- heated_plate_mpi.sbatch -> archivo sbatch y slurm que gestiona la parte de la reserva de los recursos de Guane. <br/>
- output_heated_plate_mpi.txt -> resultados obtenidos después de ejecutar dicho código en Guane.<br/>

Antes de proceder a compilar nuestro programa, se debe cargar el compilador de MPI devtools/mpi/openmpi/3.1.4<br/>
Después de esto, se compila en GUANE utilizando la siguiente instrucción: **mpicc mpi_heated_plate.c -o mpi_heated_plate.** Con esto se deja listo el ejecutable para luego ser utilizado tanto en local como en guane. <br/>

### Ejecución GUANE-1 
Una vez dentro del perfil de Gaune, se procede a lanzar el archivo sbatch que contiene todos los ajustes necesarios (ejecución con 2 nodos), se escribe lo siguiente: **sbatch heated_plate_mpi.sbatch**<br/>
Como resultado se obtiene el archivo output_heated_plate_mpi.txt, muestra el tiempo de ejecución y la ejecución correcta del programa.
