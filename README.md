# 🚀 Monitoramento do Nginx com Script Bash

Este projeto configura um ambiente de monitoramento básico para o servidor **Nginx** usando um **script Bash** e o módulo `stub_status`. O repositório inclui configurações, automação e documentação detalhada.

---

## 👨‍💻 **Autor**
   **Moisés Silveira** - Responsável pelo desenvolvimento.
   **Email:** moisessilveiramano@gmail.com.
   **LinkedIn:** www.linkedin.com/in/moisés-silveira-0477a8237.

---

## 📋 **Descrição do Projeto**

O objetivo do projeto é:
1. **Configurar o Nginx** para fornecer métricas de status em `/nginx_status`.
2. **Automatizar a verificação** do status do Nginx com um script Bash.
3. **Gerar logs** de monitoramento automaticamente usando o cron.

---

## 📁 **Estrutura do Projeto**

Estrutura de Pastas do Repositório
```bash

nginx-monitoring/
│
├── configs/             # Arquivos de configuração do Nginx
│   └── status.conf
│
├── scripts/             # Scripts de automação
│   └── nginx_status.sh
│
├── logs/                # Logs gerados pelo cron job ou execução do script
│   └── nginx_status.log
│
├── images/              # Capturas de tela ou diagramas (opcional)
│   └── exemplo.png
│
└── README.md            # Documentação principal do projeto


---

## 🛠️ **Pré-requisitos**

- **Sistema Operacional**: Linux (Ubuntu via WSL, Debian, CentOS)
- **Nginx instalado**
- **Acesso root ou sudo**

### **Instalação do Nginx**:
```bash
sudo apt update
sudo apt install nginx -y

---

### 🖼️ **Demonstração**

---
Exemplo de Saída do Script: 

== Verificando o status do Nginx ==
Nginx está ativo.

== Status Detalhado do Nginx ==
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Thu 2024-12-19 00:20:07 -03; 22h ago
       Docs: man:nginx(8)
    Process: 8602 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
    Process: 8603 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
   Main PID: 8605 (nginx)
      Tasks: 9 (limit: 4563)
     Memory: 6.4M ()
     CGroup: /system.slice/nginx.service
             ├─8605 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             ├─8606 "nginx: worker process"
             ├─8607 "nginx: worker process"
             ├─8608 "nginx: worker process"
             ├─8609 "nginx: worker process"
             ├─8610 "nginx: worker process"
             ├─8611 "nginx: worker process"
             ├─8612 "nginx: worker process"
             └─8613 "nginx: worker process"

Dec 19 00:20:07 Mano systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
Dec 19 00:20:07 Mano systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.

== Métricas de Conexão do Nginx ==
Active connections: 1
server accepts handled requests
 36 36 36
Reading: 0 Writing: 1 Waiting: 0

== Fim do Script ==

---
