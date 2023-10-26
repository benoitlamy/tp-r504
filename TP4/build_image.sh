#!/bin/bash
set -x

# Nom de l'image
IMAGE_NAME=im-tp4

# Répertoire courant
CURRENT_DIR=$(pwd)

# Chemin complet du Dockerfile
DOCKERFILE_PATH=$Bureau/tp-r504/TP4/Dockerfile1

# Construire l'image Docker
docker build -t app-tp4 -f dockerfile1 .

# Vérifier si la construction de l'image a réussi
if [ $? -eq 0 ]; then
  echo "L'image $TP4 a été construite avec succès."
else
  echo "Erreur lors de la construction de l'image $TP4."
fi
