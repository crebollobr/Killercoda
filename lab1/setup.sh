#!/bin/bash
# Remove o IP da interface correta que apareceu no seu print
ip addr flush dev enp1s0
ip link set enp1s0 down
ip route del default
