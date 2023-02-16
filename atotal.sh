
#!/bin/bash

ciudad=""

# Pedir al usuario el nombre de la ciudad
while [ -z "$ciudad" ]; do
  read -p "Introduce el nombre de la ciudad: " ciudad

  # Buscar en el archivo de datos el consumo de la ciudad
  consumo=$(awk -v c="$ciudad" '$1 == c {sum += $4} END {print sum}' datos.txt)

  # Pasar el resultado de la suma del consumo o pedir de nuevo el nombre de la ciudad si no existe
  if [ -z "$consumo" ]
  then
    echo "La ciudad $ciudad no existe en el archivo de datos."
    ciudad=""
  else
    echo "Total de consumo de la ciudad de $ciudad es: $consumo"
  fi
done









