#!/bin/bash

# Script para configurar IP fixo no Debian 12 com Netplan

# Configurações do usuário (edite conforme necessário)
INTERFACE=$(ip -o -4 route show to default | awk '{print $5}')
IP_FIXO="192.168.1.100/24"
GATEWAY="192.168.1.1"
DNS1="8.8.8.8"
DNS2="8.8.4.4"
ARQUIVO_NETPLAN="/etc/netplan/01-netcfg.yaml"

echo "Interface detectada: $INTERFACE"
echo "Configurando IP fixo em $INTERFACE..."

# Gera o arquivo de configuração do Netplan
sudo bash -c "cat > $ARQUIVO_NETPLAN" <<EOF
network:
  version: 2
  renderer: networkd
  ethernets:
    $INTERFACE:
      dhcp4: no
      addresses:
        - $IP_FIXO
      gateway4: $GATEWAY
      nameservers:
        addresses:
          - $DNS1
          - $DNS2
EOF

# Aplica a configuração
echo "Aplicando configurações com netplan..."
sudo netplan apply

# Testa a conectividade
echo "Testando conectividade..."
ping -c 4 8.8.8.8

echo "✅ IP fixo configurado com sucesso!"
