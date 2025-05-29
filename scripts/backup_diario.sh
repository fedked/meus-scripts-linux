#!/bin/bash

# Caminhos
PASTA_ORIGEM="$HOME/Documentos"
PASTA_BACKUP="$HOME/backups"
DATA_ATUAL=$(date +%Y-%m-%d)
ARQUIVO_BACKUP="backup-$DATA_ATUAL.tar.gz"

# Cria a pasta de backup se não existir
mkdir -p "$PASTA_BACKUP"

# Faz o backup
tar -czf "$PASTA_BACKUP/$ARQUIVO_BACKUP" "$PASTA_ORIGEM"

# Mensagem final
echo "Backup concluído com sucesso!"
echo "Arquivo salvo em: $PASTA_BACKUP/$ARQUIVO_BACKUP"