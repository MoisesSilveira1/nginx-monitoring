#!/bin/bash

# Script para verificar o status do Nginx e exibir métricas

# Verifica se o Nginx está ativo
echo "== Verificando o status do Nginx =="
if systemctl is-active --quiet nginx; then
    echo "Nginx está ativo."
else
    echo "Nginx não está ativo. Iniciando o serviço..."
    sudo systemctl start nginx
    echo "Nginx iniciado."
fi

# Exibe o status detalhado do Nginx
echo -e "\n== Status Detalhado do Nginx =="
systemctl status nginx --no-pager

# Coleta métricas do endpoint /nginx_status
echo -e "\n== Métricas de Conexão do Nginx =="
curl -s http://127.0.0.1/nginx_status || echo "O endpoint /nginx_status não está configurado corretamente."

echo -e "\n== Fim do Script =="
