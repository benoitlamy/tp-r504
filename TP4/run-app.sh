#!/bin/bash

# Nom de l'image Docker
IMAGE_NAME=app-tp4

# Nom du conteneur
CONTAINER_NAME=app-tp4

# Réseau auquel connecter le conteneur
NETWORK_NAME=net-tp4

# Port à publier (port de l'application Flask)
HOST_PORT=5000
CONTAINER_PORT=5000

# Vérifier si le conteneur existe déjà et le supprimer sil est en cours dexécution
docker rm -f app-tp4 > /dev/null 2>&1

# Lancer le conteneur avec le réseau et le port publié
docker run -d --name app-tp4  --network net-tp4 -p 5000:5000 app-tp4

# Vérifier si le conteneur a été démarré avec succès
if [ $? -eq 0 ]; then
  echo "Conteneur app-tp4 a été démarré avec succès."
else
  echo "Erreur lors du démarrage du conteneur app-tp4."
fi
