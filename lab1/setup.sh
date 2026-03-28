#!/bin/bash

# Espera o terminal abrir
sleep 10

# 1. MATA o serviço de DHCP que está reconfigurando tudo
systemctl stop dhcpcd
systemctl disable dhcpcd
killall dhcpcd 2>/dev/null

# 2. Agora sim, limpa a interface e a rota
ip addr flush dev enp1s0
ip link set enp1s0 down
ip route del default 2>/dev/null

# 3. Limpa o DNS
echo "" > /etc/resolv.conf

# 4. Avisa o aluno
clear
echo "################################################"
echo "# ALERTA: SERVIÇO DHCP DESATIVADO              #"
echo "# A rede foi removida manualmente.             #"
echo "# Sua missão: Configurar IP e Rota via comando.#"
echo "################################################"
