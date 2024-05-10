#!/bin/bash

# Vérifiez si le nombre d'arguments est correct
if [ "$#" -ne 2 ]; then
    echo "Usage: ./builder.sh <github_repo> <dockerhub_repo>"
    exit 1
fi

# Définir les variables
GITHUB_REPO=$1
DOCKERHUB_REPO=$2

# Cloner le référentiel GitHub
git clone https://github.com/$GITHUB_REPO.git

# Extraire le nom du référentiel
REPO_NAME=$(basename $GITHUB_REPO)

# Construire l'image Docker
docker build -t $DOCKERHUB_REPO $REPO_NAME

# Pousser l'image vers Docker Hub
docker push $DOCKERHUB_REPO
