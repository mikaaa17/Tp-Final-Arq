numero_maquina=$((( RANDOM % 50 ) +1 ))
numero_jugador=0
intentos=0

while [[ "$numero_jugador" -ne "$numero_maquina" ]]; do
    read -p "Adivina el numero (1 al 50) : " numero_jugador
    if [[ "$numero_jugador" -lt "$numero_maquina" ]]; then
        echo "El numero es mayor..."
    elif [[ "$numero_jugador" -gt "$numero_maquina" ]]; then
        echo "El numero es menor..."
    fi
    intentos=$(($intentos + 1))

    if [[ "$intentos" -gt 10 ]]; then
        echo "Todo bien.. pero dedicate a otro juego u.u"
        break
    fi
done

if [[ "$intentos" -lt 6 ]]; then
    echo "Siii lo adivinaste en solo ${intentos} intentos!!!SOS UNA BESTIA"
elif [[ ( "$intentos" -gt 6 && "$intentos" -lt 11 ) ]]; then
    echo "Costo un poquito, pero salio en el intento ${intentos} :)"
fi

#Mika Cardoso
#Trabajo Final Arquitectura y Sistemas Operativos (ej 1)
