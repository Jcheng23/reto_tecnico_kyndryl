#!/bin/bash

echo -e "Tener en cuenta que el backend ya lo he dockerizado y convertido en imagen"
echo -e "Se empezara a descagar las imagenes contenerizadas para el reto tecnico Backend - NGINX - POSTGRES"
docker pull juniorchengv/nginx_reto_tecnico:latest
docker pull juniorchengv/postgres_bd:latest
docker pull juniorchengv/backend_reto_tecnico:latest
sleep  3
echo -e "Se descargaron las imagenes desde mi repositorio personal de dockerhub, las 03 imagenes que se solicitan en el reto tecnico \n"
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
docker images
sleep 3
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -n -e "\n"
echo -e "Se empezaran a construir las imagenes pertinentes para el reto tecnico"
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
docker run -d --name backend_reto_tecnico juniorchengv/backend_reto_tecnico:latest
docker run -d --name nginx_reto_tecnico juniorchengv/nginx_reto_tecnico:latest
docker run --name postgres_bd -e POSTGRES_PASSWORD=Passw0rd2023. -d juniorchengv/postgres_bd:latest
sleep 2
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -e "Las imagenes del reto tecnico fueron desplegadas correctamente \n"
echo -n -e "---------------------------------------------------------------------------------------------------------------------------------------------------------\n"
sleep 5
docker ps
echo -n -e "\n"
echo -n -e "-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -n -e "----------Se debe esperar unos 30 seg para que todos las imagenes desplegadas corran correctamente por tal se le aplica al bashero un sleep de 30 seg-------------------------------------------------\n"
echo -n -e "----------------------------------------------------------------------------------------------------------------------------------------------------------\n"
sleep 30
docker ps
echo -n -e "------------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -e "Suma de 02 numeros mediante REST \n"
echo -n -e "------------------------------------- \n"
echo -n "Ingresar el primer numero:  "
read n1
echo -n "Ingresar el segundo numero:  "
read n2
echo -e "Resultado de la suma =  "
echo $n1 + $n2 = $(($n1+$n2))
echo -n -e "---------------------------------------- \n"
echo -e "El resultado de la suma se registrara en la  Base de Datos = " $(($n1+$n2)) 

