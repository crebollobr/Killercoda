## Desafio de Redes

O computador está sem comunicação. Sua missão é configurar a rede manualmente.

**Dados para o Laboratório:**
* **IP desejado:** `172.18.0.10/24`
* **Gateway:** `172.18.0.1`
* **DNS:** `8.8.8.8`

**Comandos sugeridos:**
1. `ip link show` (Verificar interfaces)
2. `sudo ip link set ... up` (Ativar interface)
3. `sudo ip addr add ...` (Configurar IP)
4. `sudo ip route add default via ...` (Configurar Gateway)

Tente dar um `ping 8.8.8.8` ao terminar!
