#!/bin/bash

# Dá tempo para o Killercoda estabilizar a conexão
sleep 15

# 1. Mata o processo dhcpcd à força (pelo nome)
pkill -9 dhcpcd
killall -9 dhcpcd 2>/dev/null

# 2. Derruba a interface fisicamente
ip link set enp1s0 down

# 3. Limpa qualquer IP que tenha sobrado
ip addr flush dev enp1s0

# 4. Remove a rota padrão (Gateway)
ip route del default 2>/dev/null

# 5. Limpa o arquivo de DNS
echo "" > /etc/resolv.conf

# 6. Feedback visual para o aluno
clear
echo "################################################"
echo "# REDE DESATIVADA COM SUCESSO                  #"
echo "# dhcpcd finalizado e interface enp1s0 em DOWN #"
echo "################################################"
