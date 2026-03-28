#!/bin/bash

# Espera o sistema estabilizar
sleep 5

# 1. Derruba a interface (Isso desativa a camada 2)
ip link set enp1s0 down

# 2. Remove todos os endereços (Camada 3)
ip addr flush dev enp1s0

# 3. Mata a tabela de roteamento (O cérebro da rede)
ip route flush cache
ip route del default 2>/dev/null

# 4. Bloqueia tudo no Firewall (Caso o sistema tente reativar o IP)
#iptables -P INPUT DROP
#iptables -P FORWARD DROP
#iptables -P OUTPUT DROP

# Limpa a tela e solta o desafio
clear
echo "################################################"
echo "# SISTEMA ISOLADO - REDE DESATIVADA            #"
echo "################################################"
echo "# Desafio: Ative a interface enp1s0 e          #"
echo "# configure o IP 172.30.1.10/24                #"
echo "################################################"
