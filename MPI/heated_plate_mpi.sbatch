#!/bin/bash

#SBATCH --partition=guane_24_cores # Nombre de la particion - Los nombres se obtienen con el comando sinfo
#SBATCH --job-name=JaviVargas      # Nombre de la tarea a ejecutar - puede ser cualquiera
#SBATCH --nodes=2                  # Cantidad de nodos a usar
#SBATCH --ntasks=4	           # Numero de tareas a ejecutar
#SBATCH --cpus-per-task=8          # Numero de cores asignados a cada tarea
#SBATCH --output=output_heated_plate_mpi.txt  # Archivo de salida donde se encuentran los resultados de la ejecucion
#SBATCH --error=OpenMPI.err         # Archivo que contiene los errores de ejecucion

##SBATCH --constraint=edr

module load devtools/mpi/openmpi/3.1.4 # Modulo que contiene el software a usar


# Set OMP_NUM_THREADS to the number of CPUs per task we asked for.
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Run the process with mpirun. Note that the -n option is not required
# in this case; mpirun will automatically determine how many processes
# to run from the Slurm settings.
mpirun -np 2 ./mpi_heated_plate
