#!/bin/bash

# 1. Espera o terminal abrir na tela do aluno
sleep 15

# 2. Mata o processo que renova o IP automaticamente
pkill -9 dhcpcd
killall -9 dhcpcd 2>/dev/null

# 3. NÃO damos 'down'. Apenas limpamos o IP e a Rota.
# O terminal continua vivo porque o túnel do Killercoda 
# geralmente usa o IP da interface mas sobrevive ao flush
ip addr flush dev enp1s0
ip route del default 2>/dev/null

# 4. Limpa o DNS para o aluno não navegar
echo "" > /etc/resolv.conf

# 5. Mensagem clara para o aluno
clear
echo "################################################"
echo "# DESAFIO DE REDE ETEC                         #"
echo "# A rede foi limpa. O comando 'ping' vai falhar.#"
echo "#                                              #"
echo "# Sua missão:                                  #"
echo "# 1. Adicionar o IP 172.30.1.10/24             #"
echo "# 2. Adicionar o Gateway 172.30.1.1            #"
echo "################################################"
