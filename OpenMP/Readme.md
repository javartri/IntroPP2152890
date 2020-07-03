## Aquí se encuentra los siguientes archivos:

- heated_plate.sbatch -> archivo sbatch y slurm que gestiona la parte de la reserva de los recursos de Guane <br/>
- omp_heated_plate.c -> Código de paralelización (solución basada en https://people.sc.fsu.edu/~jburkardt/c_src/heated_plate_openmp/heated_plate_openmp.html) del programa deheated_place para resolver la distribución de la temperatura en estado estacionario sobre una placa rectangular. <br/>
- output_heated_plate.txt -> resultados obtenidos después de ejecutar dicho código en Guane y/o local.<br/>

El primer paso consiste en compilar en Guane utilizando la siguiente instrucción: **gcc -lm -fopenmp omp_heated_plate.c -o omp_heated_plate** (hago uso de -lm porque se utiliza o se trabaja con operaciones matemáticas). Con esto se deja listo el ejecutable para luego ser utilizado tanto en local como en guane. <br/>

### Ejecución localmente
Continuamente en el espacio local ejecutamos el ejecutable que se acaba de generar (omp_heated_plate), solo basta en escribir la siguiente línea: **./omp_heated_plate**

### Ejecución GUANE-1 
Una vez dentro del perfil de Gaune, se procede a lanzar el archivo sbatch que contiene todos los ajustes necesarios, se escribe lo siguiente: **sbatch heated_plate.sbatch**<br/>

Como resultado se obtiene el archivo output_heated_plate.txt, que contiene el número de iteraciones generados y sus repectivos cambios de temperatura para una cuadrícula espacial de 500 x 500 puntos. Además muestra la cantidad de hilos, el tiempo de ejecución, la ejecución correcta del programa y el momento en tiempo real de la ejecución.
