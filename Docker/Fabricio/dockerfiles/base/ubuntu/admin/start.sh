#!/bin/bash

newUser(){
    useradd -rm -d /home/fabri -s /bin/bash fabri
    echo "fabri:1234" | chpasswd
    echo "Bienvenido Fabricio ... " > /home/fabri/bienvenido.txt
}

main(){
    newUser
    tail -f /dev/null
}

main
