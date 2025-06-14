#!/bin/sh

# O shell irá encerrar a execução do script quando um comando falhar
set -e

waitpsql.sh

collectstatic.sh
migrate.sh
manage_runserver.sh
