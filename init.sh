#!/bin/bash

FILES="index.html assets/styles/style.css assets/scripts/main.js"
PATHS="assets/scripts assets/styles assets/images assets/fonts"


echo -n "Nome do projeto: "
read PROJECT

echo -e "Criando Estrutura"

mkdir -p $PROJECT && cd $_
mkdir -p $PATHS
touch $FILES

# Mensagem final
echo -e "\n Projeto $PROJECT criado!\n"
