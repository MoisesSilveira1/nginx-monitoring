# 🚀 Monitoramento do Nginx com Script Bash

Este projeto configura um ambiente de monitoramento básico para o servidor **Nginx** usando um **script Bash** e o módulo `stub_status`. O repositório inclui configurações, automação e documentação detalhada.

---

## 👨‍💻 **Autor**
1. **Moisés Silveira** - Responsável pelo desenvolvimento.
2. **Email:** (moisessilveiramano@gmail.com)
3. **LinkedIn:** (www.linkedin.com/in/moisés-silveira-0477a8237)

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

```
---

## 🛠️ **Pré-requisitos**

- **Sistema Operacional**: Linux (Ubuntu via WSL)
- **Nginx instalado**
- **Acesso root ou sudo**

### **Instalação do Nginx**:
```bash
sudo apt update
sudo apt install nginx -y
```
---

## ⚙️ **Configuração do Projeto**

 1. **Clone o repositório:**
```bash
git clone https://github.com/seu-usuario/nginx-monitoring.git
cd nginx-monitoring
```

 2. **Copie a configuração do Nginx:**
```bash
sudo cp configs/status.conf /etc/nginx/conf.d/status.conf
sudo systemctl restart nginx
```

 3. **Teste o endpoint de status:**
```bash
curl http://xxxx.xxx.xxxx.xxx/nginx_status
```
Saída esperada:
```bash
Active connections: 1 
server accepts handled requests
 2 2 3 
Reading: 0 Writing: 1 Waiting: 0
```

 4. **Torne o script executável:**
```bash
chmod +x scripts/nginx_status.sh
```

5. **Execute o script:**
```bash
./scripts/nginx_status.sh
```

## ⏱️ **Automação com Cron Job**
Para executar o script periodicamente e salvar os logs, configure o cron:

1. **Edite o cron:**
```bash
crontab -e
```

2. **Adicione a seguinte linha:**
```bash
*/5 * * * * ~/nginx-monitoring/scripts/nginx_status.sh >> ~/nginx-monitoring/logs/nginx_status.log 2>&1
```

### 🖼️ **Demonstração**

---
Exemplo de Saída do Script: 

```bash
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
```
---

## 🌟 **Contribuições**

Sinta-se à vontade para contribuir com o projeto!

1. Faça um fork do repositório.
2. Crie uma branch para suas melhorias: git checkout -b minha-feature.
3. Faça um commit das suas mudanças: git commit -m "Adiciona minha melhoria".
4. Faça um push para a branch: git push origin minha-feature.
5. Abra um Pull Request.


## 🔗 **Links Úteis**
- Documentação do Nginx: Nginx Docs
- Sobre stub_status: Nginx Stub Status Module


---

## **3. Adicionar Imagens e Diagramas**

1. **Capturas de Tela**: Adicione imagens que demonstrem a saída do script ou diagramas para explicar o projeto.  
   - Salve-as na pasta `images/`.
   - Adicione no README usando o Markdown:
     ```markdown
     ![Exemplo de Saída](images/exemplo.png)
     ```

2. **Diagramas**: Utilize ferramentas como **draw.io**, **Lucidchart** ou até mesmo **Markdown** para criar diagramas.

---

## **4. Licença do Projeto**

Inclua uma licença para o repositório, como a **MIT License**. Crie um arquivo chamado `LICENSE` na raiz do projeto e adicione o conteúdo da licença desejada.

---

## **5. Enviar o Projeto para o GitHub**

1. Adicione todos os arquivos:
   ```bash
   git add .
