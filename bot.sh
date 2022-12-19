opcion_elegida=0
hora_actual=`date +%r`
clima_hoy=`curl wttr.in/bahia_blanca?0`

read -p "Buen diiaa $USER :)
1- Hora actual
2- Clima de hoy
" opcion_elegida
    

if [[ $opcion_elegida -lt 1 ]] || [[ $opcion_elegida -gt 2 ]]; then
    echo "Seleccionar opcion 1 o 2"
fi    

if [[ "$opcion_elegida" -eq 1 ]]; then
    echo "$hora_actual"
elif [[ "$opcion_elegida" -eq 2 ]]; then
    echo "$clima_hoy"
fi

    





