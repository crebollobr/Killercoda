#!/bin/bash

# Espera 10 segundos para o terminal carregar na tela
sleep 10

# Agora sim, sabota a rede
ip addr flush dev enp1s0
ip link set enp1s0 down
ip route del default
echo "" > /etc/resolv.conf

# Limpa a tela e avisa o aluno
clear
echo "################################################"
echo "# ALERTA: CONEXÃO DE REDE PERDIDA!             #"
echo "# Sua missão: Restaurar a conectividade.       #"
echo "################################################"
