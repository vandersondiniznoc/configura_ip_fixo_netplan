# 🖧 Configuração de IP Fixo no Debian 12 com Netplan

Este repositório contém um script Bash para automatizar a configuração de IP estático no **Debian 12** utilizando o **Netplan**, substituindo o método tradicional via `interfaces`.

## 📋 Requisitos

- Debian 12
- Interface de rede já ativa
- Acesso root ou `sudo`
- Netplan instalado (vem por padrão no Debian 12)

## ⚙️ O que o script faz

- Detecta automaticamente a interface de rede padrão (ex: `enp0s3`)
- Cria um arquivo Netplan com:
  - IP estático
  - Gateway padrão
  - Servidores DNS
- Aplica a nova configuração de rede
- Testa conectividade via `ping`

## 📥 Instalação e uso
1. Clone o repositório:
   ```bash
   git clone https://github.com/seuusuario/configura-ip-fixo-netplan.git
   cd configura-ip-fixo-netplan

Edite o script se necessário para ajustar IP, gateway ou DNS.

2. Torne o script executável:
```bash
chmod +x configura_ip_fixo.sh
Execute com sudo:
```
```bash
sudo ./configura_ip_fixo.sh
```

🛠 Personalização
Edite as seguintes variáveis no início do script:

IP_FIXO="192.168.1.100/24"
GATEWAY="192.168.1.1"
DNS1="8.8.8.8"
DNS2="8.8.4.4"

🧪 Testes
Após aplicar, verifique com:

```bash
ip a
ping 8.8.8.8
```


## 🧑‍💻 Autor
**Vanderson Diniz do Nascimento**  
Especialista em Linux, Redes, Cibersegurança e ISPs  

- 🌐 [Site pessoal](https://vandersondiniz.com.br)  
- 🏢 [ISPLAB](https://isplab.com.br)  
- 💼 [LinkedIn](https://www.linkedin.com/in/vdnascdiniz/)  
- 💻 [GitHub @vandersondiniznoc](https://github.com/vandersondiniznoc)
