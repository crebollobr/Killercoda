#!/bin/bash

# 1. Remove o IP da interface principal (geralmente eth0 ou ens3)
# O Killercoda usa eth0 por padrão
ip addr flush dev eth0

# 2. Desativa a interface para o aluno ter que dar 'up'
ip link set eth0 down

# 3. Remove o arquivo de DNS para simular perda total
echo "" > /etc/resolv.conf

# 4. Mensagem de boas vindas no terminal
echo "O sistema de rede foi corrompido. Boa sorte, Administrador!" > /etc/motd
