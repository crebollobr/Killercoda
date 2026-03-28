#!/bin/bash
# Remove o gateway padrão (impede saída para internet)
ip route del default

# Bloqueia tráfego de saída via Firewall (opcional, mais agressivo)
iptables -A OUTPUT -o eth0 -j DROP

# Mantém apenas a interface de loopback e a rede interna se necessário
